import 'package:daily_reboot_tracker/features/onboarding/presentation/providers/onboarding_setup_providers.dart';
import 'package:daily_reboot_tracker/features/onboarding/presentation/view_model/physical_profile_setup_view_model.dart';
import 'package:daily_reboot_tracker/features/onboarding/presentation/widgets/setup_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PhysicalProfileSetupScreen extends HookConsumerWidget {
  const PhysicalProfileSetupScreen({super.key, required this.onContinue});

  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(physicalProfileSetupViewModelProvider.notifier);
    final ui = ref.watch(physicalProfileSetupViewModelProvider);
    final weightController = useTextEditingController();
    final heightController = useTextEditingController();
    final ageController = useTextEditingController();
    final isLoading = ui.submitState.maybeWhen(loading: () => true, orElse: () => false);

    return Scaffold(
      appBar: AppBar(title: const Text('Profil Fisik')),
      body: Column(
        children: [
          const LinearProgressIndicator(value: 0.25),
          Expanded(
            child: SetupCard(
              title: 'Onboarding - Profil Fisik',
              subtitle: 'BB, tinggi, umur, jenis kelamin (+ BMI/BMR otomatis)',
              child: Column(
                children: [
                  TextField(
                    controller: weightController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Berat Badan (kg)'),
                  ),
                  TextField(
                    controller: heightController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Tinggi (cm)'),
                  ),
                  TextField(
                    controller: ageController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(labelText: 'Umur'),
                  ),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<String>(
                    value: ui.gender,
                    items: const [
                      DropdownMenuItem(value: 'Pria', child: Text('Pria')),
                      DropdownMenuItem(value: 'Wanita', child: Text('Wanita')),
                    ],
                    onChanged: vm.setGender,
                    decoration: const InputDecoration(labelText: 'Jenis Kelamin'),
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
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: isLoading
                    ? null
                    : () {
                        final draft = vm.submit(
                          weightKg: weightController.text,
                          heightCm: heightController.text,
                          ageYears: ageController.text,
                        );
                        if (draft != null) {
                          ref.read(userProfileSetupDraftProvider.notifier).state = draft;
                          onContinue();
                        }
                      },
                child: isLoading
                    ? const SizedBox(
                        width: 22,
                        height: 22,
                        child: CircularProgressIndicator(strokeWidth: 2.5),
                      )
                    : const Text('Lanjut'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
