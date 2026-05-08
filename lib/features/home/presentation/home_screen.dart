import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:daily_reboot_tracker/features/history/presentation/history_screen.dart';
import 'package:daily_reboot_tracker/features/progress/presentation/progress_screen.dart';
import 'package:daily_reboot_tracker/features/schedule/presentation/schedule_screen.dart';
import 'package:daily_reboot_tracker/features/workout_session/presentation/start_workout_screen.dart';
import 'package:daily_reboot_tracker/features/home/presentation/view_model/home_view_model.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(homeFeaturesProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Home Dashboard')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: items.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            child: ListTile(
              leading: Icon(item.icon),
              title: Text(item.title),
              subtitle: const Text('Tap untuk buka fitur'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => _buildFeaturePage(item.title),
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

Widget _buildFeaturePage(String title) {
  switch (title) {
    case 'Start Workout':
      return const StartWorkoutScreen();
    case 'Progress':
      return const ProgressScreen();
    case 'History':
      return const HistoryScreen();
    case 'Schedule':
      return const ScheduleScreen();
    default:
      return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: const Center(child: Text('Unknown feature')),
      );
  }
}
