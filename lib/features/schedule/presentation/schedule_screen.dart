import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:daily_reboot_tracker/features/schedule/presentation/view_model/schedule_view_model.dart';

class ScheduleScreen extends HookConsumerWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final schedules = ref.watch(weeklyScheduleProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Schedule')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: schedules.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: const Icon(Icons.calendar_today),
              title: Text(schedules[index]),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => _ScheduleDetailScreen(dayPlan: schedules[index]),
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

class _ScheduleDetailScreen extends StatelessWidget {
  const _ScheduleDetailScreen({required this.dayPlan});

  final String dayPlan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Schedule Detail')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(dayPlan, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 12),
            const Text('Reminder: 06:00 PM'),
            const Text('Notes: Keep the intensity moderate.'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Mark as Done'),
            ),
          ],
        ),
      ),
    );
  }
}
