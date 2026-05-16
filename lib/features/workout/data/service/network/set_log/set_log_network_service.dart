import 'package:daily_reboot_tracker/features/workout/data/models/network/set_log/set_log_network_model.dart';

abstract class SetLogNetworkService {
  Future<void> create(String key, SetLogNetworkModel value);
  Future<SetLogNetworkModel?> read(String key);
  Future<void> update(String key, SetLogNetworkModel value);
  Future<void> delete(String key);
  Future<List<SetLogNetworkModel>> readAll();
}
