import 'package:daily_reboot_tracker/features/schedule/data/models/local/schedule_day/schedule_day_local_model.dart';

abstract class ScheduleDayLocalService {
  Future<void> create(String key, ScheduleDayLocalModel value);
  ScheduleDayLocalModel? read(String key);
  Future<void> update(String key, ScheduleDayLocalModel value);
  Future<void> delete(String key);
  List<ScheduleDayLocalModel> readAll();
}
