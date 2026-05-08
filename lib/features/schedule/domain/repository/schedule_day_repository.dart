import 'package:daily_reboot_tracker/features/schedule/data/models/local/schedule_day/schedule_day_local_model.dart';
import 'package:daily_reboot_tracker/features/schedule/data/models/network/schedule_day/schedule_day_network_model.dart';

abstract class ScheduleDayRepository {
  Future<void> createLocal(String key, ScheduleDayLocalModel value);
  ScheduleDayLocalModel? readLocal(String key);
  Future<void> updateLocal(String key, ScheduleDayLocalModel value);
  Future<void> deleteLocal(String key);
  List<ScheduleDayLocalModel> readAllLocal();

  Future<void> createNetwork(String key, ScheduleDayNetworkModel value);
  Future<ScheduleDayNetworkModel?> readNetwork(String key);
  Future<void> updateNetwork(String key, ScheduleDayNetworkModel value);
  Future<void> deleteNetwork(String key);
  Future<List<ScheduleDayNetworkModel>> readAllNetwork();
}
