import 'package:daily_reboot_tracker/features/onboarding/presentation/view_model/post_login_setup_view_model.dart';
import 'package:daily_reboot_tracker/features/onboarding/presentation/widgets/setup_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PostLoginSetupScreen extends HookConsumerWidget {
  const PostLoginSetupScreen({super.key, required this.onFinishSetup});

  final VoidCallback onFinishSetup;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(postLoginSetupViewModelProvider.notifier);
    final state = ref.watch(postLoginSetupViewModelProvider);
    final pageController = usePageController();

    final repsController = useTextEditingController(text: '12');
    final setsController = useTextEditingController(text: '3');

    return Scaffold(
      appBar: AppBar(title: const Text('Setup Setelah Login')),
      body: Column(
        children: [
          LinearProgressIndicator(value: (state.pageIndex + 3) / 4),
          Expanded(
            child: PageView(
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
              onPageChanged: vm.setPage,
              children: [
                SetupCard(
                  title: 'Susun Jadwal Latihan',
                  subtitle: 'Pilih hari, pilih / buat program',
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Pilih hari latihan:'),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        children: const [
                          Chip(label: Text('Mon')),
                          Chip(label: Text('Wed')),
                          Chip(label: Text('Fri')),
                          Chip(label: Text('Sat')),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: Icon(Icons.fitness_center),
                        title: Text('Program: Full Body Beginner'),
                        subtitle: Text('Rest day ditandai otomatis'),
                      ),
                    ],
                  ),
                ),
                SetupCard(
                  title: 'Detail Latihan per Hari',
                  subtitle: 'Gerakan, set, reps, durasi, istirahat',
                  child: Column(
                    children: [
                      const TextField(
                        decoration: InputDecoration(labelText: 'Gerakan (contoh: Push Up)'),
                      ),
                      TextField(
                        controller: setsController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(labelText: 'Jumlah Set'),
                      ),
                      TextField(
                        controller: repsController,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(labelText: 'Reps per Set'),
                      ),
                      const TextField(
                        decoration: InputDecoration(labelText: 'Durasi Istirahat (detik)'),
                      ),
                      const SizedBox(height: 12),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text('Kategori otot target: Dada'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                TextButton(
                  onPressed: vm.isFirstPage
                      ? null
                      : () {
                          pageController.previousPage(
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInOut,
                          );
                        },
                  child: const Text('Kembali'),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    if (vm.isLastPage) {
                      onFinishSetup();
                      return;
                    }
                    pageController.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: Text(vm.isLastPage ? 'Masuk Home' : 'Lanjut'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
