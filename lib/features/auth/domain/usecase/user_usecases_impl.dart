import 'package:daily_reboot_tracker/core/state/data/data_state.dart';
import 'package:daily_reboot_tracker/features/auth/domain/entities/user/user.dart';
import 'package:daily_reboot_tracker/features/auth/domain/repository/user_repository.dart';
import 'package:daily_reboot_tracker/features/auth/domain/usecase/user_usecases.dart';

class UserUsecasesImpl implements UserUsecases {
  final UserRepository _userRepository;
  UserUsecasesImpl(this._userRepository);

  @override
  Future<DataState<bool>> login(String email, String password) async {
    return _userRepository.signInWithCredentials(
      email: email,
      password: password,
    );
  }

  @override
  Future<bool> logout() async {
    final result = await _userRepository.clearCurrentSession();
    return result.when(
      success: (status) => true,
      failed: (message, data, exception, stackTrace) => false,
    );
  }

  @override
  Future<DataState<User>> profile() async {
    final result = _userRepository.getCurrentSession();
    return result;
  }

  @override
  Future<DataState<bool>> register({
    required User data,
    required String password,
    required String validatePassword,
  }) async {
    final record = _userRepository.findUserByEmail(data.email);
    return record.when(
      success: (_) {
        return DataState.failed(message: "User is already exist.");
      },
      failed: (message, _, exception, stackTrace) async {
        final result = await _userRepository.createNewUser(
          data,
          password: password,
        );
        return result.when(
          success: (status) async {
            return login(data.email, password);
          },
          failed: (message, data, exception, stackTrace) {
            return DataState.failed(
              message: message,
              exception: exception,
              stackTrace: stackTrace,
            );
          },
        );
      },
    );
  }
}
