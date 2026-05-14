import 'package:daily_reboot_tracker/features/auth/presentation/login/state/login_state.dart';
import 'package:daily_reboot_tracker/features/auth/presentation/login/state/login_state_ui.dart';
import 'package:daily_reboot_tracker/features/auth/presentation/login/view_model/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginView extends HookConsumerWidget {
  const LoginView({super.key, required this.onAuthenticated});

  final VoidCallback onAuthenticated;

  static OutlineInputBorder _border(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color, width: 1.5),
    );
  }

  static Color _enabledBorderColor(
    LoginState ui,
    ColorScheme scheme,
    bool hasInputError,
  ) {
    if (ui.successFieldHighlight) return Colors.green.shade600;
    if (hasInputError) return scheme.error;
    return scheme.outline;
  }

  static Color _focusedBorderColor(
    LoginState ui,
    ColorScheme scheme,
    bool hasInputError,
  ) {
    if (ui.successFieldHighlight) return Colors.green.shade600;
    if (hasInputError) return scheme.error;
    return scheme.primary;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.read(authViewModelProvider.notifier);
    final ui = ref.watch(authViewModelProvider);
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

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

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
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
            obscureText: true,
            decoration: decoBase.copyWith(
              labelText: 'Password',
              enabledBorder: _border(
                _enabledBorderColor(ui, scheme, ui.passwordHasInputError),
              ),
              focusedBorder: _border(
                _focusedBorderColor(ui, scheme, ui.passwordHasInputError),
              ),
            ),
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
                        await vm.submit(onAuthenticated: onAuthenticated);
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
                    : const Text('Masuk'),
              ),
            ),
        ],
      ),
    );
  }
}
