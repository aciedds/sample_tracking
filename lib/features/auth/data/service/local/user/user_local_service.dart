import 'package:daily_reboot_tracker/features/auth/data/models/local/user/user_local_model.dart';

abstract class UserLocalService {
  Future<void> create(String key, UserLocalModel value);
  UserLocalModel? read(String key);
  Future<void> update(String key, UserLocalModel value);
  Future<void> delete(String key);
  List<UserLocalModel> readAll();
}
