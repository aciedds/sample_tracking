import 'package:daily_reboot_tracker/features/onboarding/data/models/network/user_profile/user_profile_network_model.dart';

abstract class UserProfileNetworkService {
  Future<void> create(String key, UserProfileNetworkModel value);
  Future<UserProfileNetworkModel?> read(String key);
  Future<void> update(String key, UserProfileNetworkModel value);
  Future<void> delete(String key);
  Future<List<UserProfileNetworkModel>> readAll();
}
