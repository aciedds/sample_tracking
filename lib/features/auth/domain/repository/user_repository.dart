import 'package:daily_reboot_tracker/core/state/data/data_state.dart';
import 'package:daily_reboot_tracker/features/auth/domain/entities/user/user.dart';

abstract class UserRepository {
  Future<DataState<bool>> createNewUser(User userData);
  DataState<User> findUserByEmail(String email);
  Future<DataState<bool>> saveCurrentSession(User userData);
  DataState<User> getCurrentSession();
  Future<DataState<bool>> clearCurrentSession();
}
