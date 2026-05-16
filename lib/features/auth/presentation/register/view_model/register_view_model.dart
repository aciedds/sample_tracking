import 'dart:io';

import 'package:daily_reboot_tracker/core/state/view/view_state.dart';
import 'package:daily_reboot_tracker/features/auth/di/auth_providers.dart';
import 'package:daily_reboot_tracker/features/user/domain/entities/user/user.dart';
import 'package:daily_reboot_tracker/features/auth/presentation/register/state/register_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

bool _isValidEmailFormat(String email) {
  final trimmed = email.trim();
  if (trimmed.isEmpty) return false;
  return RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$').hasMatch(trimmed);
}

class RegisterViewModel extends StateNotifier<RegisterState> {
  RegisterViewModel(this._ref) : super(RegisterState.initial());

  final Ref _ref;
  final ImagePicker _imagePicker = ImagePicker();

  void setEmail(String value) => _patchField(
        email: value,
        clearErrors: {
          RegisterInputError.invalidEmail,
          RegisterInputError.duplicateEmail,
        },
      );

  void setPassword(String value) => _patchField(
        password: value,
        clearErrors: {
          RegisterInputError.emptyPassword,
          RegisterInputError.passwordsMismatch,
        },
      );

  void setConfirmPassword(String value) => _patchField(
        confirmPassword: value,
        clearErrors: {
          RegisterInputError.emptyConfirmPassword,
          RegisterInputError.passwordsMismatch,
        },
      );

  void setDisplayName(String value) => _patchField(
        displayName: value,
        clearErrors: {RegisterInputError.emptyDisplayName},
      );

  void setDisplayPicture(File? file) {
    state = state.copyWith(
      displayPicture: file,
      successFieldHighlight: false,
      showSubmitButton: true,
      submitState: const ViewState<bool>.initial(),
    );
  }

  Future<void> pickDisplayPictureFromGallery() async {
    final picked = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (picked != null) {
      setDisplayPicture(File(picked.path));
    }
  }

  void togglePasswordVisibility() {
    state = state.copyWith(isPasswordVisible: !state.isPasswordVisible);
  }

  void toggleConfirmPasswordVisibility() {
    state = state.copyWith(
      isConfirmPasswordVisible: !state.isConfirmPasswordVisible,
    );
  }

  void _patchField({
    String? email,
    String? password,
    String? confirmPassword,
    String? displayName,
    Set<RegisterInputError> clearErrors = const {},
  }) {
    final nextError = clearErrors.contains(state.inputError)
        ? RegisterInputError.none
        : state.inputError;
    state = state.copyWith(
      email: email ?? state.email,
      password: password ?? state.password,
      confirmPassword: confirmPassword ?? state.confirmPassword,
      displayName: displayName ?? state.displayName,
      inputError: nextError,
      successFieldHighlight: false,
      showSubmitButton: true,
      submitState: const ViewState<bool>.initial(),
    );
  }

  Future<void> submit({required void Function() onRegistered}) async {
    state = state.copyWith(
      inputError: RegisterInputError.none,
      successFieldHighlight: false,
      showSubmitButton: true,
      submitState: const ViewState<bool>.initial(),
    );

    if (state.displayName.trim().isEmpty) {
      state = state.copyWith(inputError: RegisterInputError.emptyDisplayName);
      return;
    }
    if (!_isValidEmailFormat(state.email)) {
      state = state.copyWith(inputError: RegisterInputError.invalidEmail);
      return;
    }
    if (state.password.isEmpty) {
      state = state.copyWith(inputError: RegisterInputError.emptyPassword);
      return;
    }
    if (state.confirmPassword.isEmpty) {
      state = state.copyWith(
        inputError: RegisterInputError.emptyConfirmPassword,
      );
      return;
    }
    if (state.password != state.confirmPassword) {
      state = state.copyWith(inputError: RegisterInputError.passwordsMismatch);
      return;
    }

    state = state.copyWith(submitState: const ViewState<bool>.loading());

    final now = DateTime.now();
    final user = User(
      id: const Uuid().v4(),
      email: state.email.trim(),
      createdAt: now,
      updatedAt: now,
      displayName: state.displayName.trim(),
      photoUrl: state.displayPicture?.path,
    );

    final result = await _ref.read(registerUsecaseProvider)(
      data: user,
      password: state.password,
      validatePassword: state.confirmPassword,
    );

    result.when(
      success: (_) {
        state = state.copyWith(
          submitState: const ViewState<bool>.success(data: true),
          showSubmitButton: false,
          successFieldHighlight: true,
          inputError: RegisterInputError.none,
        );
      },
      failed: (message, data, exception, stackTrace) {
        final duplicate = message.toLowerCase().contains('already') ||
            message.toLowerCase().contains('exist');
        state = state.copyWith(
          submitState: ViewState<bool>.error(message: message),
          inputError: duplicate
              ? RegisterInputError.duplicateEmail
              : RegisterInputError.none,
        );
      },
    );

    if (!state.successFieldHighlight) return;

    await Future<void>.delayed(const Duration(seconds: 3));
    onRegistered();
  }
}

final registerViewModelProvider =
    StateNotifierProvider.autoDispose<RegisterViewModel, RegisterState>(
  (ref) => RegisterViewModel(ref),
);
