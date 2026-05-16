import 'package:daily_reboot_tracker/features/user/data/models/local/user_profile/user_profile_entity.dart';

abstract class UserProfileRepository {
  Future<void> createLocal(String key, UserProfileEntity value);
  UserProfileEntity? readLocal(String key);
  Future<void> updateLocal(String key, UserProfileEntity value);
  Future<void> deleteLocal(String key);
  List<UserProfileEntity> readAllLocal();
}
