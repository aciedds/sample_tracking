import 'package:daily_reboot_tracker/features/onboarding/data/models/network/workout_plan/workout_plan_network_model.dart';

abstract class WorkoutPlanNetworkService {
  Future<void> create(String key, WorkoutPlanNetworkModel value);
  Future<WorkoutPlanNetworkModel?> read(String key);
  Future<void> update(String key, WorkoutPlanNetworkModel value);
  Future<void> delete(String key);
  Future<List<WorkoutPlanNetworkModel>> readAll();
}
