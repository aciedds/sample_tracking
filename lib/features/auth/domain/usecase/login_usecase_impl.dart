import 'package:daily_reboot_tracker/core/state/data/data_state.dart';
import 'package:daily_reboot_tracker/features/auth/domain/usecase/login_usecase.dart';
import 'package:daily_reboot_tracker/features/user/domain/repository/user_repository.dart';

class LoginUsecaseImpl implements LoginUsecase {
  LoginUsecaseImpl(this._userRepository);

  final UserRepository _userRepository;

  static final _emailPattern = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

  @override
  Future<DataState<bool>> call(String email, String password) async {
    final validationError = _validateInput(email, password);
    if (validationError != null) {
      return DataState.failed(message: validationError);
    }

    final result = await _userRepository.signInWithCredentials(
      email: email.trim(),
      password: password,
    );

    return result.when(
      success: (data) => DataState.success(data: data),
      failed: (message, data, exception, stackTrace) => DataState.failed(
        message: _mapErrorMessage(message),
        data: data,
        exception: exception,
        stackTrace: stackTrace,
      ),
    );
  }

  String? _validateInput(String email, String password) {
    final trimmedEmail = email.trim();
    if (trimmedEmail.isEmpty) {
      return 'Email wajib diisi';
    }
    if (!_emailPattern.hasMatch(trimmedEmail)) {
      return 'Format email tidak valid';
    }
    if (password.isEmpty) {
      return 'Password wajib diisi';
    }
    return null;
  }

  String _mapErrorMessage(String message) {
    return switch (message) {
      'Invalid email or password' => 'Email atau password salah',
      'Could not save session' => 'Gagal menyimpan sesi login',
      _ => message,
    };
  }
}
