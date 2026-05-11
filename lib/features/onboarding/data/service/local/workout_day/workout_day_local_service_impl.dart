import 'package:hive/hive.dart';

import 'package:daily_reboot_tracker/core/local/hive_config.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/models/local/workout_plan/workout_plan_local_model.dart';
import 'workout_day_local_service.dart';

class WorkoutDayLocalServiceImpl extends WorkoutDayLocalService {
  WorkoutDayLocalServiceImpl(Box<WorkoutDayLocalModel> box)
      : _hiveConfig = HiveConfig<WorkoutDayLocalModel>(box);

  final HiveConfig<WorkoutDayLocalModel> _hiveConfig;

  @override
  Future<void> create(String key, WorkoutDayLocalModel value) async {
    await _hiveConfig.create(key, value);
  }

  @override
  WorkoutDayLocalModel? read(String key) {
    return _hiveConfig.read(key);
  }

  @override
  Future<void> update(String key, WorkoutDayLocalModel value) async {
    await _hiveConfig.update(key, value);
  }

  @override
  Future<void> delete(String key) async {
    await _hiveConfig.delete(key);
  }

  @override
  List<WorkoutDayLocalModel> readAll() {
    return _hiveConfig.readAll();
  }
}
