import 'package:daily_reboot_tracker/features/user/data/models/local/user/user_entity.dart';

abstract class UserLocalService {
  Future<bool> createNewUser({
    required String email,
    String? displayName,
    String? displayPicture,
    String? password,
  });
  UserEntity? findUserByEmail(String email);
  Future<bool> saveCurrentSession(UserEntity userId);
  UserEntity? getCurrentSession();
  Future<bool> clearCurrentSession();
}
