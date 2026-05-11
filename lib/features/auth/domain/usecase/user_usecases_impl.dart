import 'package:daily_reboot_tracker/core/state/data/data_state.dart';
import 'package:daily_reboot_tracker/features/auth/domain/entities/user/user.dart';
import 'package:daily_reboot_tracker/features/auth/domain/repository/user_repository.dart';
import 'package:daily_reboot_tracker/features/auth/domain/usecase/user_usecases.dart';

class UserUsecasesImpl implements UserUsecases {
  final UserRepository _userRepository;
  UserUsecasesImpl(this._userRepository);

  @override
  Future<DataState<bool>> login(String email) async {
    final result = _userRepository.findUserByEmail(email);
    return result.when(success: (userData) {
      _userRepository.saveCurrentSession(userData);
      return DataState.success(data: true);
    }, failed: (message, data, exception, stackTrace) {
      return DataState.failed(
        message: message,
        exception: exception,
        stackTrace: stackTrace,
      );
    });
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
        final result = await _userRepository.createNewUser(data);
        return result.when(
          success: (status) async {
            return login(data.email);
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
