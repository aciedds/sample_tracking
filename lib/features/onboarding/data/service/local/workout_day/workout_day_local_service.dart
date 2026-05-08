import 'package:daily_reboot_tracker/features/onboarding/data/models/local/workout_plan/workout_plan_local_model.dart';

abstract class WorkoutDayLocalService {
  Future<void> create(String key, WorkoutDayLocalModel value);
  WorkoutDayLocalModel? read(String key);
  Future<void> update(String key, WorkoutDayLocalModel value);
  Future<void> delete(String key);
  List<WorkoutDayLocalModel> readAll();
}
