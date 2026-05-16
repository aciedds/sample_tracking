import 'package:daily_reboot_tracker/features/workout/data/models/local/workout_plan/workout_plan_local_model.dart';
import 'package:daily_reboot_tracker/features/workout/data/models/network/workout_plan/workout_plan_network_model.dart';

abstract class WorkoutDayRepository {
  Future<void> createLocal(String key, WorkoutDayLocalModel value);
  WorkoutDayLocalModel? readLocal(String key);
  Future<void> updateLocal(String key, WorkoutDayLocalModel value);
  Future<void> deleteLocal(String key);
  List<WorkoutDayLocalModel> readAllLocal();

  Future<void> createNetwork(String key, WorkoutDayNetworkModel value);
  Future<WorkoutDayNetworkModel?> readNetwork(String key);
  Future<void> updateNetwork(String key, WorkoutDayNetworkModel value);
  Future<void> deleteNetwork(String key);
  Future<List<WorkoutDayNetworkModel>> readAllNetwork();
}
