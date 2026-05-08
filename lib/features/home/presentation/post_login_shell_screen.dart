import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:daily_reboot_tracker/features/history/presentation/history_screen.dart';
import 'package:daily_reboot_tracker/features/home/presentation/home_screen.dart';
import 'package:daily_reboot_tracker/features/progress/presentation/progress_screen.dart';
import 'package:daily_reboot_tracker/features/schedule/presentation/schedule_screen.dart';
import 'package:daily_reboot_tracker/features/home/presentation/view_model/post_login_shell_view_model.dart';

class PostLoginShellScreen extends HookConsumerWidget {
  const PostLoginShellScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabIndex = ref.watch(shellTabIndexProvider);

    const pages = [
      HomeScreen(),
      ProgressScreen(),
      HistoryScreen(),
      ScheduleScreen(),
    ];

    return Scaffold(
      body: IndexedStack(index: tabIndex, children: pages),
      bottomNavigationBar: NavigationBar(
        selectedIndex: tabIndex,
        onDestinationSelected: (index) =>
            ref.read(shellTabIndexProvider.notifier).state = index,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.show_chart), label: 'Progress'),
          NavigationDestination(icon: Icon(Icons.history), label: 'History'),
          NavigationDestination(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Schedule',
          ),
        ],
      ),
    );
  }
}
