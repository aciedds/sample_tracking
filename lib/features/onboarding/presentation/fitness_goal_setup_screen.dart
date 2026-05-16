import 'package:daily_reboot_tracker/features/onboarding/presentation/providers/onboarding_setup_providers.dart';
import 'package:daily_reboot_tracker/features/onboarding/presentation/view_model/fitness_goal_setup_view_model.dart';
import 'package:daily_reboot_tracker/features/onboarding/presentation/widgets/setup_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FitnessGoalSetupScreen extends HookConsumerWidget {
  const FitnessGoalSetupScreen({
    super.key,
    required this.onContinue,
    required this.onBack,
  });

  final VoidCallback onContinue;
  final VoidCallback onBack;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final draft = ref.watch(userProfileSetupDraftProvider);
    final vm = ref.read(fitnessGoalSetupViewModelProvider.notifier);
    final ui = ref.watch(fitnessGoalSetupViewModelProvider);
    final daysController = useTextEditingController(text: '4');
    final isLoading = ui.submitState.maybeWhen(loading: () => true, orElse: () => false);

    if (draft == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Target & Konsistensi')),
        body: const Center(
          child: Text('Lengkapi profil fisik terlebih dahulu.'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Target & Konsistensi')),
      body: Column(
        children: [
          const LinearProgressIndicator(value: 0.5),
          Expanded(
            child: SetupCard(
              title: 'Target & Konsistensi',
              subtitle: 'Tujuan, hari/minggu, level kebugaran',
              child: Column(
                children: [
                  DropdownButtonFormField<String>(
                    value: ui.goalType,
                    items: const [
                      DropdownMenuItem(value: 'Turun BB', child: Text('Turun BB')),
                      DropdownMenuItem(value: 'Naik BB', child: Text('Naik BB')),
                      DropdownMenuItem(value: 'Maintain', child: Text('Maintain')),
                    ],
                    onChanged: vm.setGoalType,
                    decoration: const InputDecoration(labelText: 'Goal'),
                  ),
                  TextField(
                    controller: daysController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Hari Latihan / Minggu'),
                  ),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<String>(
                    value: ui.fitnessLevel,
                    items: const [
                      DropdownMenuItem(value: 'Beginner', child: Text('Beginner')),
                      DropdownMenuItem(
                        value: 'Intermediate',
                        child: Text('Intermediate'),
                      ),
                      DropdownMenuItem(value: 'Advanced', child: Text('Advanced')),
                    ],
                    onChanged: vm.setFitnessLevel,
                    decoration: const InputDecoration(labelText: 'Level Kebugaran'),
                  ),
                  if (ui.errorMessage != null) ...[
                    const SizedBox(height: 12),
                    Text(
                      ui.errorMessage!,
                      style: TextStyle(color: Theme.of(context).colorScheme.error),
                    ),
                  ],
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                TextButton(
                  onPressed: isLoading ? null : onBack,
                  child: const Text('Kembali'),
                ),
                const Spacer(),
                FilledButton(
                  onPressed: isLoading
                      ? null
                      : () async {
                          final ok = await vm.submit(
                            physicalDraft: draft,
                            workoutDaysPerWeek: daysController.text,
                          );
                          if (ok) onContinue();
                        },
                  child: isLoading
                      ? const SizedBox(
                          width: 22,
                          height: 22,
                          child: CircularProgressIndicator(strokeWidth: 2.5),
                        )
                      : const Text('Lanjut'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
