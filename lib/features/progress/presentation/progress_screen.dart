import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:daily_reboot_tracker/features/progress/presentation/view_model/progress_view_model.dart';

class ProgressScreen extends HookConsumerWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(progressViewModelProvider);
    final vm = ref.read(progressViewModelProvider.notifier);
    final currentWeight = state.currentWeight;
    final targetWeight = state.targetWeight;
    final gap = (currentWeight - targetWeight).abs();

    return Scaffold(
      appBar: AppBar(title: const Text('Progress')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: const Text('Current Weight'),
                subtitle: Text('${currentWeight.toStringAsFixed(1)} kg'),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Target Weight'),
                subtitle: Text('${targetWeight.toStringAsFixed(1)} kg'),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Distance to Goal'),
                subtitle: Text('${gap.toStringAsFixed(1)} kg'),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: vm.decreaseCurrentWeight,
                    child: const Text('-0.5 kg'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton(
                    onPressed: vm.increaseCurrentWeight,
                    child: const Text('+0.5 kg'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const _ProgressInsightsScreen(),
                    ),
                  );
                },
                child: const Text('View Weekly Insights'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProgressInsightsScreen extends StatelessWidget {
  const _ProgressInsightsScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Weekly Insights')),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('This Week', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 12),
            Text('- Workouts completed: 3/4'),
            Text('- Total duration: 84 minutes'),
            Text('- Best streak: 2 days'),
          ],
        ),
      ),
    );
  }
}
