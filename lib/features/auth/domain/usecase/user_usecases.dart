import 'package:daily_reboot_tracker/core/state/data/data_state.dart';
import 'package:daily_reboot_tracker/features/auth/domain/entities/user/user.dart';

abstract class UserUsecases {
  Future<DataState<bool>> register({
    required User data,
    required String password,
    required String validatePassword,
  });
  Future<DataState<bool>> login(String email);
  Future<DataState<User>> profile();
  Future<bool> logout();
}
