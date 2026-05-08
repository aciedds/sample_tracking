import 'package:daily_reboot_tracker/features/auth/data/models/network/user/user_network_model.dart';

abstract class UserNetworkService {
  Future<void> create(String key, UserNetworkModel value);
  Future<UserNetworkModel?> read(String key);
  Future<void> update(String key, UserNetworkModel value);
  Future<void> delete(String key);
  Future<List<UserNetworkModel>> readAll();
}
