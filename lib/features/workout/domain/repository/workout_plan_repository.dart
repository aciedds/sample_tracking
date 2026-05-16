import 'package:daily_reboot_tracker/features/workout/data/models/local/workout_plan/workout_plan_local_model.dart';
import 'package:daily_reboot_tracker/features/workout/data/models/network/workout_plan/workout_plan_network_model.dart';

abstract class WorkoutPlanRepository {
  Future<void> createLocal(String key, WorkoutPlanLocalModel value);
  WorkoutPlanLocalModel? readLocal(String key);
  Future<void> updateLocal(String key, WorkoutPlanLocalModel value);
  Future<void> deleteLocal(String key);
  List<WorkoutPlanLocalModel> readAllLocal();

  Future<void> createNetwork(String key, WorkoutPlanNetworkModel value);
  Future<WorkoutPlanNetworkModel?> readNetwork(String key);
  Future<void> updateNetwork(String key, WorkoutPlanNetworkModel value);
  Future<void> deleteNetwork(String key);
  Future<List<WorkoutPlanNetworkModel>> readAllNetwork();
}
