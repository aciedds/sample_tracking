import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../food/presentation/add_food_modal.dart';
import '../../stats/presentation/stats_page.dart';
import '../domain/tracker_models.dart';
import '../domain/tracker_state.dart';
import 'tracker_controller.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(trackerControllerProvider);

    return state.when(
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (error, stack) => Scaffold(
        body: Center(child: Text('Error: $error')),
      ),
      data: (data) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Daily Reboot Tracker'),
              bottom: const TabBar(
                tabs: [Tab(text: 'Home'), Tab(text: 'Stats')],
              ),
            ),
            body: TabBarView(
              children: [
                _HomeContent(data: data),
                StatsPage(summary: data.weeklySummary),
              ],
            ),
            floatingActionButton: FloatingActionButton.extended(
              onPressed: () async {
                final food = await showAddFoodModal(context);
                if (food != null && context.mounted) {
                  await ref.read(trackerControllerProvider.notifier).addFood(food);
                }
              },
              icon: const Icon(Icons.add),
              label: const Text('Add Food'),
            ),
          ),
        );
      },
    );
  }
}

class _HomeContent extends ConsumerWidget {
  const _HomeContent({required this.data});

  final TrackerState data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(trackerControllerProvider.notifier);
    final today = data.today;
    final date = DateTime.parse(today.dateKey);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SizedBox(height: 8),
        SegmentedButton<TrackerMode>(
          segments: const [
            ButtonSegment(
              value: TrackerMode.ideal,
              label: Text('Ideal'),
            ),
            ButtonSegment(
              value: TrackerMode.fallback,
              label: Text('Fallback'),
            ),
          ],
          selected: {today.mode},
          onSelectionChanged: (selection) {
            controller.updateMode(selection.first);
          },
        ),
        const SizedBox(height: 16),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Checklist', style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 8),
                ...today.checklist.entries.map(
                  (entry) => CheckboxListTile(
                    dense: true,
                    contentPadding: EdgeInsets.zero,
                    value: entry.value,
                    title: Text(_capitalize(entry.key)),
                    onChanged: (value) =>
                        controller.updateChecklist(entry.key, value ?? false),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        Card(
          child: ListTile(
            title: Text('Score: ${today.score}/4'),
            subtitle: Text(
              'Current streak: ${data.streak.current}  |  Longest: ${data.streak.longest}',
            ),
            trailing: const Text('🔥', style: TextStyle(fontSize: 20)),
          ),
        ),
        const SizedBox(height: 12),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Food (${today.totalCalories} kcal)',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                if (today.foods.isEmpty)
                  const Text('No food entries yet.')
                else
                  ...today.foods.map(
                    (food) => ListTile(
                      dense: true,
                      contentPadding: EdgeInsets.zero,
                      title: Text(food.name),
                      trailing: Text('${food.calories} kcal'),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

String _capitalize(String text) {
  if (text.isEmpty) return text;
  return text[0].toUpperCase() + text.substring(1);
}
