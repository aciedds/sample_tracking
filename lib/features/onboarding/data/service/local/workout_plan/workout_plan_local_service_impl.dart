import 'package:hive/hive.dart';

import 'package:daily_reboot_tracker/core/local/hive_config.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/models/local/workout_plan/workout_plan_local_model.dart';
import 'workout_plan_local_service.dart';

class WorkoutPlanLocalServiceImpl extends WorkoutPlanLocalService {
  WorkoutPlanLocalServiceImpl(Box<WorkoutPlanLocalModel> box) : _hiveConfig = HiveConfig<WorkoutPlanLocalModel>(box);

  final HiveConfig<WorkoutPlanLocalModel> _hiveConfig;

  @override
  Future<void> create(String key, WorkoutPlanLocalModel value) async {
    await _hiveConfig.create(key, value);
  }

  @override
  WorkoutPlanLocalModel? read(String key) {
    return _hiveConfig.read(key);
  }

  @override
  Future<void> update(String key, WorkoutPlanLocalModel value) async {
    await _hiveConfig.update(key, value);
  }

  @override
  Future<void> delete(String key) async {
    await _hiveConfig.delete(key);
  }

  @override
  List<WorkoutPlanLocalModel> readAll() {
    return _hiveConfig.readAll();
  }
}
