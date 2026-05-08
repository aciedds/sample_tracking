import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:daily_reboot_tracker/features/history/presentation/view_model/history_view_model.dart';

class HistoryScreen extends HookConsumerWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(historyItemsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('History')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(height: 8),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: const Icon(Icons.fitness_center),
              title: Text(items[index]),
              subtitle: const Text('Tap untuk detail (demo UI)'),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => _HistoryDetailScreen(item: items[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class _HistoryDetailScreen extends StatelessWidget {
  const _HistoryDetailScreen({required this.item});

  final String item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Session Detail')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(item, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 12),
            const Text('Exercise: Push Up, Squat, Plank'),
            const Text('Calories: 220 kcal'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
