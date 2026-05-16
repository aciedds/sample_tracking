import 'package:daily_reboot_tracker/features/workout/data/models/network/workout_plan/workout_plan_network_model.dart';

abstract class WorkoutDayNetworkService {
  Future<void> create(String key, WorkoutDayNetworkModel value);
  Future<WorkoutDayNetworkModel?> read(String key);
  Future<void> update(String key, WorkoutDayNetworkModel value);
  Future<void> delete(String key);
  Future<List<WorkoutDayNetworkModel>> readAll();
}
