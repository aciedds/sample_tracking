import 'package:daily_reboot_tracker/features/onboarding/data/models/local/user_profile/user_profile_local_model.dart';

abstract class UserProfileLocalService {
  Future<void> create(String key, UserProfileLocalModel value);
  UserProfileLocalModel? read(String key);
  Future<void> update(String key, UserProfileLocalModel value);
  Future<void> delete(String key);
  List<UserProfileLocalModel> readAll();
}
