import 'package:daily_reboot_tracker/features/auth/data/models/entities/user/user_entity.dart';

abstract class UserLocalService {
  Future<bool> createNewUser({
    required String email,
    String? displayName,
    String? displayPicture,
  });
  UserEntity? findUserByEmail(String email);
  Future<bool> saveCurrentSession(UserEntity userId);
  UserEntity? getCurrentSession();
  Future<bool> clearCurrentSession();
}
