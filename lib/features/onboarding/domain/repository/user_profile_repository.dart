import 'package:daily_reboot_tracker/features/onboarding/data/models/local/user_profile/user_profile_local_model.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/models/network/user_profile/user_profile_network_model.dart';

abstract class UserProfileRepository {
  Future<void> createLocal(String key, UserProfileLocalModel value);
  UserProfileLocalModel? readLocal(String key);
  Future<void> updateLocal(String key, UserProfileLocalModel value);
  Future<void> deleteLocal(String key);
  List<UserProfileLocalModel> readAllLocal();

  Future<void> createNetwork(String key, UserProfileNetworkModel value);
  Future<UserProfileNetworkModel?> readNetwork(String key);
  Future<void> updateNetwork(String key, UserProfileNetworkModel value);
  Future<void> deleteNetwork(String key);
  Future<List<UserProfileNetworkModel>> readAllNetwork();
}
