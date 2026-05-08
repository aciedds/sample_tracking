import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:daily_reboot_tracker/features/workout_session/presentation/view_model/start_workout_view_model.dart';

class StartWorkoutScreen extends HookConsumerWidget {
  const StartWorkoutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(startWorkoutViewModelProvider);
    final vm = ref.read(startWorkoutViewModelProvider.notifier);
    final sets = state.sets;
    final elapsed = state.elapsed;

    return Scaffold(
      appBar: AppBar(title: const Text('Start Workout')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Elapsed: $elapsed min'),
                    const SizedBox(height: 8),
                    Text('Completed Sets: $sets'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: vm.addSet,
              icon: const Icon(Icons.check),
              label: const Text('Complete 1 Set'),
            ),
            const SizedBox(height: 8),
            OutlinedButton.icon(
              onPressed: () => vm.addMinutes(5),
              icon: const Icon(Icons.timer),
              label: const Text('Add 5 Minutes'),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => _WorkoutSummaryScreen(
                      elapsedMinutes: elapsed,
                      totalSets: sets,
                    ),
                  ),
                );
              },
              child: const Text('Finish Workout'),
            ),
          ],
        ),
      ),
    );
  }
}

class _WorkoutSummaryScreen extends StatelessWidget {
  const _WorkoutSummaryScreen({
    required this.elapsedMinutes,
    required this.totalSets,
  });

  final int elapsedMinutes;
  final int totalSets;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Workout Summary')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Duration: $elapsedMinutes min'),
            const SizedBox(height: 8),
            Text('Completed sets: $totalSets'),
            const SizedBox(height: 8),
            const Text('Estimated calories: 180 kcal'),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.of(context).popUntil((route) => route.isFirst),
                child: const Text('Back to Home'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
