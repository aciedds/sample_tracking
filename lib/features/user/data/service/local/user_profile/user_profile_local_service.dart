import 'package:daily_reboot_tracker/features/user/data/models/local/user_profile/user_profile_entity.dart';

abstract class UserProfileLocalService {
  Future<void> create(String key, UserProfileEntity value);
  UserProfileEntity? read(String key);
  Future<void> update(String key, UserProfileEntity value);
  Future<void> delete(String key);
  List<UserProfileEntity> readAll();
}
