import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:daily_reboot_tracker/features/onboarding/presentation/view_model/onboarding_view_model.dart';

class OnboardingScreen extends HookConsumerWidget {
  const OnboardingScreen({super.key, required this.onFinish});

  final VoidCallback onFinish;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(onboardingViewModelProvider.notifier);
    final state = ref.watch(onboardingViewModelProvider);
    final pageController = usePageController();

    const pages = [
      ('Track Workout', 'Catat set dan progress harianmu.'),
      ('Monitor Progress', 'Lihat riwayat dan perkembangan latihan.'),
      ('Stay Consistent', 'Ikuti jadwal latihan mingguanmu.'),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Onboarding')),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: pageController,
              onPageChanged: vm.setPage,
              itemCount: pages.length,
              itemBuilder: (context, index) {
                final (title, subtitle) = pages[index];
                return Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.directions_run, size: 64),
                      const SizedBox(height: 20),
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(subtitle, textAlign: TextAlign.center),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                TextButton(onPressed: onFinish, child: const Text('Lewati')),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    if (state.pageIndex == pages.length - 1) {
                      onFinish();
                      return;
                    }
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 250),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Text(
                    state.pageIndex == pages.length - 1
                        ? 'Lanjut Login'
                        : 'Berikutnya',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
