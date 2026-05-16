import 'package:daily_reboot_tracker/features/workout/data/models/local/set_log/set_log_local_model.dart';
import 'package:daily_reboot_tracker/features/workout/data/models/network/set_log/set_log_network_model.dart';

abstract class SetLogRepository {
  Future<void> createLocal(String key, SetLogLocalModel value);
  SetLogLocalModel? readLocal(String key);
  Future<void> updateLocal(String key, SetLogLocalModel value);
  Future<void> deleteLocal(String key);
  List<SetLogLocalModel> readAllLocal();

  Future<void> createNetwork(String key, SetLogNetworkModel value);
  Future<SetLogNetworkModel?> readNetwork(String key);
  Future<void> updateNetwork(String key, SetLogNetworkModel value);
  Future<void> deleteNetwork(String key);
  Future<List<SetLogNetworkModel>> readAllNetwork();
}
