import 'package:daily_reboot_tracker/features/auth/data/models/local/user/user_local_model.dart';
import 'package:daily_reboot_tracker/features/auth/data/models/network/user/user_network_model.dart';

abstract class UserRepository {
  Future<void> createLocal(String key, UserLocalModel value);
  UserLocalModel? readLocal(String key);
  Future<void> updateLocal(String key, UserLocalModel value);
  Future<void> deleteLocal(String key);
  List<UserLocalModel> readAllLocal();

  Future<void> createNetwork(String key, UserNetworkModel value);
  Future<UserNetworkModel?> readNetwork(String key);
  Future<void> updateNetwork(String key, UserNetworkModel value);
  Future<void> deleteNetwork(String key);
  Future<List<UserNetworkModel>> readAllNetwork();
}
