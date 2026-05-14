import 'package:daily_reboot_tracker/core/state/view/view_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

enum LoginInputError { none, invalidEmail, emptyPassword, wrongCredentials }

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required String email,
    required String password,
    @Default(ViewState<bool>.initial()) ViewState<bool> submitState,
    @Default(true) bool showSubmitButton,
    @Default(false) bool successFieldHighlight,
    @Default(LoginInputError.none) LoginInputError inputError,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        email: '',
        password: '',
      );
}
