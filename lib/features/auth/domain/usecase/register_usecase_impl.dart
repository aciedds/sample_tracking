import 'package:daily_reboot_tracker/core/state/data/data_state.dart';
import 'package:daily_reboot_tracker/features/auth/domain/usecase/login_usecase.dart';
import 'package:daily_reboot_tracker/features/auth/domain/usecase/register_usecase.dart';
import 'package:daily_reboot_tracker/features/user/domain/entities/user/user.dart';
import 'package:daily_reboot_tracker/features/user/domain/repository/user_repository.dart';

class RegisterUsecaseImpl implements RegisterUsecase {
  RegisterUsecaseImpl(this._userRepository, this._loginUsecase);

  final UserRepository _userRepository;
  final LoginUsecase _loginUsecase;

  @override
  Future<DataState<bool>> call({
    required User data,
    required String password,
    required String validatePassword,
  }) async {
    final validationError = _validateInput(data, password, validatePassword);
    if (validationError != null) {
      return DataState.failed(message: validationError);
    }

    final email = data.email.trim();
    final user = data.copyWith(
      email: email,
      displayName: data.displayName?.trim(),
    );

    final lookup = _userRepository.findUserByEmail(email);
    return lookup.when(
      success: (_) => const DataState.failed(
        message: 'Email sudah terdaftar',
      ),
      failed: (message, _, exception, stackTrace) async {
        if (exception != null) {
          return DataState.failed(
            message: message,
            exception: exception,
            stackTrace: stackTrace,
          );
        }

        final createResult = await _userRepository.createNewUser(
          user,
          password: password,
        );

        return createResult.when(
          success: (_) => _loginUsecase(email, password),
          failed: (message, data, exception, stackTrace) => DataState.failed(
            message: message,
            data: data,
            exception: exception,
            stackTrace: stackTrace,
          ),
        );
      },
    );
  }

  String? _validateInput(
    User data,
    String password,
    String validatePassword,
  ) {
    if (data.email.trim().isEmpty) {
      return 'Email wajib diisi';
    }
    if ((data.displayName ?? '').trim().isEmpty) {
      return 'Nama tampilan wajib diisi';
    }
    if (password.isEmpty) {
      return 'Password wajib diisi';
    }
    if (validatePassword.isEmpty) {
      return 'Konfirmasi password wajib diisi';
    }
    if (password != validatePassword) {
      return 'Konfirmasi password tidak cocok';
    }
    return null;
  }
}
