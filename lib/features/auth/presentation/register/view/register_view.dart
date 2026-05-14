import 'package:daily_reboot_tracker/features/auth/presentation/register/state/register_state.dart';
import 'package:daily_reboot_tracker/features/auth/presentation/register/state/register_state_ui.dart';
import 'package:daily_reboot_tracker/features/auth/presentation/register/view_model/register_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RegisterView extends HookConsumerWidget {
  const RegisterView({super.key, required this.onRegistered});

  final VoidCallback onRegistered;

  static OutlineInputBorder _border(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color, width: 1.5),
    );
  }

  static Color _enabledBorderColor(
    RegisterState ui,
    ColorScheme scheme,
    bool hasInputError,
  ) {
    if (ui.successFieldHighlight) return Colors.green.shade600;
    if (hasInputError) return scheme.error;
    return scheme.outline;
  }

  static Color _focusedBorderColor(
    RegisterState ui,
    ColorScheme scheme,
    bool hasInputError,
  ) {
    if (ui.successFieldHighlight) return Colors.green.shade600;
    if (hasInputError) return scheme.error;
    return scheme.primary;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(registerViewModelProvider.notifier);
    final ui = ref.watch(registerViewModelProvider);
    final emailController = useTextEditingController();
    final displayNameController = useTextEditingController();
    final passwordController = useTextEditingController();
    final confirmController = useTextEditingController();

    final scheme = Theme.of(context).colorScheme;
    final isSubmitting = ui.submitState.maybeWhen(
      loading: () => true,
      orElse: () => false,
    );

    final decoBase = InputDecoration(
      border: _border(scheme.outline),
      enabledBorder: _border(scheme.outline),
      focusedBorder: _border(scheme.primary),
    );

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            controller: displayNameController,
            readOnly: ui.successFieldHighlight,
            onChanged: vm.setDisplayName,
            textCapitalization: TextCapitalization.words,
            decoration: decoBase.copyWith(
              labelText: 'Nama tampilan',
              enabledBorder: _border(
                _enabledBorderColor(
                  ui,
                  scheme,
                  ui.displayNameHasInputError,
                ),
              ),
              focusedBorder: _border(
                _focusedBorderColor(
                  ui,
                  scheme,
                  ui.displayNameHasInputError,
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: emailController,
            readOnly: ui.successFieldHighlight,
            onChanged: vm.setEmail,
            keyboardType: TextInputType.emailAddress,
            decoration: decoBase.copyWith(
              labelText: 'Email',
              enabledBorder: _border(
                _enabledBorderColor(ui, scheme, ui.emailHasInputError),
              ),
              focusedBorder: _border(
                _focusedBorderColor(ui, scheme, ui.emailHasInputError),
              ),
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: passwordController,
            readOnly: ui.successFieldHighlight,
            onChanged: vm.setPassword,
            obscureText: !ui.isPasswordVisible,
            decoration: decoBase.copyWith(
              labelText: 'Password',
              enabledBorder: _border(
                _enabledBorderColor(ui, scheme, ui.passwordHasInputError),
              ),
              focusedBorder: _border(
                _focusedBorderColor(ui, scheme, ui.passwordHasInputError),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  ui.isPasswordVisible
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
                onPressed: ui.successFieldHighlight
                    ? null
                    : vm.togglePasswordVisibility,
              ),
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: confirmController,
            readOnly: ui.successFieldHighlight,
            onChanged: vm.setConfirmPassword,
            obscureText: !ui.isConfirmPasswordVisible,
            decoration: decoBase.copyWith(
              labelText: 'Konfirmasi password',
              enabledBorder: _border(
                _enabledBorderColor(
                  ui,
                  scheme,
                  ui.confirmPasswordHasInputError,
                ),
              ),
              focusedBorder: _border(
                _focusedBorderColor(
                  ui,
                  scheme,
                  ui.confirmPasswordHasInputError,
                ),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  ui.isConfirmPasswordVisible
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
                onPressed: ui.successFieldHighlight
                    ? null
                    : vm.toggleConfirmPasswordVisibility,
              ),
            ),
          ),
          const SizedBox(height: 16),
          if (ui.displayPicture != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.file(
                ui.displayPicture!,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
          if (!ui.successFieldHighlight)
            OutlinedButton.icon(
              onPressed: () => vm.pickDisplayPictureFromGallery(),
              icon: const Icon(Icons.photo_outlined),
              label: Text(
                ui.displayPicture == null
                    ? 'Pilih foto profil (opsional)'
                    : 'Ganti foto',
              ),
            ),
          if (ui.displayPicture != null && !ui.successFieldHighlight)
            TextButton(
              onPressed: () => vm.setDisplayPicture(null),
              child: const Text('Hapus foto'),
            ),
          const SizedBox(height: 20),
          ui.submitState.maybeWhen(
            error: (message) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: Text(
                message,
                style: TextStyle(color: scheme.error, fontSize: 13),
              ),
            ),
            orElse: () => const SizedBox.shrink(),
          ),
          if (ui.showSubmitButton)
            SizedBox(
              width: double.infinity,
              height: 48,
              child: FilledButton(
                onPressed: isSubmitting
                    ? null
                    : () async {
                        await vm.submit(onRegistered: onRegistered);
                      },
                child: isSubmitting
                    ? SizedBox(
                        width: 22,
                        height: 22,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.5,
                          color: scheme.onPrimary,
                        ),
                      )
                    : const Text('Daftar'),
              ),
            ),
        ],
      ),
    );
  }
}
