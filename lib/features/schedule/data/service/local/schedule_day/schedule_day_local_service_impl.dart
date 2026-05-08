import 'package:hive/hive.dart';

import 'package:daily_reboot_tracker/core/local/hive_config.dart';
import 'package:daily_reboot_tracker/features/schedule/data/models/local/schedule_day/schedule_day_local_model.dart';
import 'schedule_day_local_service.dart';

class ScheduleDayLocalServiceImpl extends ScheduleDayLocalService {
  ScheduleDayLocalServiceImpl(Box<ScheduleDayLocalModel> box) : _hiveConfig = HiveConfig<ScheduleDayLocalModel>(box);

  final HiveConfig<ScheduleDayLocalModel> _hiveConfig;

  @override
  Future<void> create(String key, ScheduleDayLocalModel value) async {
    await _hiveConfig.create(key, value);
  }

  @override
  ScheduleDayLocalModel? read(String key) {
    return _hiveConfig.read(key);
  }

  @override
  Future<void> update(String key, ScheduleDayLocalModel value) async {
    await _hiveConfig.update(key, value);
  }

  @override
  Future<void> delete(String key) async {
    await _hiveConfig.delete(key);
  }

  @override
  List<ScheduleDayLocalModel> readAll() {
    return _hiveConfig.readAll();
  }
}
