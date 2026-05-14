import 'package:daily_reboot_tracker/features/auth/presentation/login/state/login_state.dart';

extension LoginStateUiX on LoginState {
  bool get emailHasInputError =>
      !successFieldHighlight &&
      (inputError == LoginInputError.invalidEmail ||
          inputError == LoginInputError.wrongCredentials);

  bool get passwordHasInputError =>
      !successFieldHighlight &&
      (inputError == LoginInputError.emptyPassword ||
          inputError == LoginInputError.wrongCredentials);
}
