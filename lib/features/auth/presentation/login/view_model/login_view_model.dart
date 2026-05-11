import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginUiState {
  const LoginUiState({this.email = '', this.password = ''});

  final String email;
  final String password;

  LoginUiState copyWith({String? email, String? password}) {
    return LoginUiState(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}

class LoginViewModel extends StateNotifier<LoginUiState> {
  LoginViewModel() : super(const LoginUiState());

  void setEmail(String value) => state = state.copyWith(email: value);
  void setPassword(String value) => state = state.copyWith(password: value);

  void login({required void Function() onSuccess, }) {
    onSuccess();
  }
}

final authViewModelProvider =
    StateNotifierProvider<LoginViewModel, LoginUiState>(
  (ref) => LoginViewModel(),
);
