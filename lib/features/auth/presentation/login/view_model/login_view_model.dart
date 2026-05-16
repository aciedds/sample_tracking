import 'package:daily_reboot_tracker/core/state/view/view_state.dart';
import 'package:daily_reboot_tracker/features/auth/di/auth_providers.dart';
import 'package:daily_reboot_tracker/features/auth/presentation/login/state/login_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

bool _isValidEmailFormat(String email) {
  final trimmed = email.trim();
  if (trimmed.isEmpty) return false;
  return RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(trimmed);
}

class LoginViewModel extends StateNotifier<LoginState> {
  LoginViewModel(this._ref) : super(LoginState.initial());

  final Ref _ref;

  void setEmail(String value) {
    state = state.copyWith(
      email: value,
      inputError: switch (state.inputError) {
        LoginInputError.invalidEmail => LoginInputError.none,
        LoginInputError.wrongCredentials => LoginInputError.none,
        _ => state.inputError,
      },
      successFieldHighlight: false,
      showSubmitButton: true,
      submitState: const ViewState<bool>.initial(),
    );
  }

  void setPassword(String value) {
    state = state.copyWith(
      password: value,
      inputError: switch (state.inputError) {
        LoginInputError.emptyPassword => LoginInputError.none,
        LoginInputError.wrongCredentials => LoginInputError.none,
        _ => state.inputError,
      },
      successFieldHighlight: false,
      showSubmitButton: true,
      submitState: const ViewState<bool>.initial(),
    );
  }

  /// Validates, signs in, shows success styling for 3s, then calls [onAuthenticated].
  Future<void> submit({required void Function() onAuthenticated}) async {
    state = state.copyWith(
      inputError: LoginInputError.none,
      successFieldHighlight: false,
      showSubmitButton: true,
      submitState: const ViewState<bool>.initial(),
    );

    if (!_isValidEmailFormat(state.email)) {
      state = state.copyWith(
        inputError: LoginInputError.invalidEmail,
      );
      return;
    }
    if (state.password.isEmpty) {
      state = state.copyWith(
        inputError: LoginInputError.emptyPassword,
      );
      return;
    }

    state = state.copyWith(
      submitState: const ViewState<bool>.loading(),
    );

    final result = await _ref.read(loginUsecaseProvider)(
      state.email.trim(),
      state.password,
    );

    result.when(
      success: (_) {
        state = state.copyWith(
          submitState: const ViewState<bool>.success(data: true),
          showSubmitButton: false,
          successFieldHighlight: true,
          inputError: LoginInputError.none,
        );
      },
      failed: (message, data, exception, stackTrace) {
        state = state.copyWith(
          submitState: ViewState<bool>.error(message: message),
          inputError: LoginInputError.wrongCredentials,
        );
      },
    );

    if (!state.successFieldHighlight) return;

    await Future<void>.delayed(const Duration(seconds: 3));
    onAuthenticated();
  }
}

final authViewModelProvider =
    StateNotifierProvider.autoDispose<LoginViewModel, LoginState>(
  (ref) => LoginViewModel(ref),
);
