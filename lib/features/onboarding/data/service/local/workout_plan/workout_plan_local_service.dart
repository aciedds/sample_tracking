import 'package:daily_reboot_tracker/features/onboarding/data/models/local/workout_plan/workout_plan_local_model.dart';

abstract class WorkoutPlanLocalService {
  Future<void> create(String key, WorkoutPlanLocalModel value);
  WorkoutPlanLocalModel? read(String key);
  Future<void> update(String key, WorkoutPlanLocalModel value);
  Future<void> delete(String key);
  List<WorkoutPlanLocalModel> readAll();
}
