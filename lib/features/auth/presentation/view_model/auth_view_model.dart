import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthUiState {
  const AuthUiState({this.email = '', this.password = ''});

  final String email;
  final String password;

  AuthUiState copyWith({String? email, String? password}) {
    return AuthUiState(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}

class AuthViewModel extends StateNotifier<AuthUiState> {
  AuthViewModel() : super(const AuthUiState());

  void setEmail(String value) => state = state.copyWith(email: value);
  void setPassword(String value) => state = state.copyWith(password: value);

  void login({required void Function() onSuccess}) {
    onSuccess();
  }
}

final authViewModelProvider = StateNotifierProvider<AuthViewModel, AuthUiState>(
  (ref) => AuthViewModel(),
);
