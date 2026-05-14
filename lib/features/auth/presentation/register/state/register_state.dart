import 'dart:io';

import 'package:daily_reboot_tracker/core/state/view/view_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

enum RegisterInputError {
  none,
  invalidEmail,
  emptyPassword,
  emptyConfirmPassword,
  passwordsMismatch,
  emptyDisplayName,
  duplicateEmail,
}

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required String email,
    required String password,
    required String confirmPassword,
    required String displayName,
    File? displayPicture,
    @Default(false) bool isPasswordVisible,
    @Default(false) bool isConfirmPasswordVisible,
    @Default(ViewState<bool>.initial()) ViewState<bool> submitState,
    @Default(true) bool showSubmitButton,
    @Default(false) bool successFieldHighlight,
    @Default(RegisterInputError.none) RegisterInputError inputError,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
        email: '',
        password: '',
        confirmPassword: '',
        displayName: '',
        displayPicture: null,
        isPasswordVisible: false,
        isConfirmPasswordVisible: false,
      );
}
