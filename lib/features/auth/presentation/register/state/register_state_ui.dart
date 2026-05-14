import 'package:daily_reboot_tracker/features/auth/presentation/register/state/register_state.dart';

extension RegisterStateUiX on RegisterState {
  bool get displayNameHasInputError =>
      !successFieldHighlight &&
      inputError == RegisterInputError.emptyDisplayName;

  bool get emailHasInputError =>
      !successFieldHighlight &&
      (inputError == RegisterInputError.invalidEmail ||
          inputError == RegisterInputError.duplicateEmail);

  bool get passwordHasInputError =>
      !successFieldHighlight &&
      (inputError == RegisterInputError.emptyPassword ||
          inputError == RegisterInputError.passwordsMismatch);

  bool get confirmPasswordHasInputError =>
      !successFieldHighlight &&
      (inputError == RegisterInputError.emptyConfirmPassword ||
          inputError == RegisterInputError.passwordsMismatch);
}
