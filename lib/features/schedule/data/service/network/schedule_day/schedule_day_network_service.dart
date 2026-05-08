import 'package:daily_reboot_tracker/features/schedule/data/models/network/schedule_day/schedule_day_network_model.dart';

abstract class ScheduleDayNetworkService {
  Future<void> create(String key, ScheduleDayNetworkModel value);
  Future<ScheduleDayNetworkModel?> read(String key);
  Future<void> update(String key, ScheduleDayNetworkModel value);
  Future<void> delete(String key);
  Future<List<ScheduleDayNetworkModel>> readAll();
}
