import 'package:daily_reboot_tracker/features/workout/domain/repository/workout_plan_repository.dart';
import 'package:daily_reboot_tracker/features/workout/data/models/local/workout_plan/workout_plan_local_model.dart';
import 'package:daily_reboot_tracker/features/workout/data/models/network/workout_plan/workout_plan_network_model.dart';
import 'package:daily_reboot_tracker/features/workout/data/service/local/workout_plan/workout_plan_local_service.dart';
import 'package:daily_reboot_tracker/features/workout/data/service/network/workout_plan/workout_plan_network_service.dart';

class WorkoutPlanRepositoryImpl extends WorkoutPlanRepository {
  WorkoutPlanRepositoryImpl(this._localService, this._networkService);

  final WorkoutPlanLocalService _localService;
  final WorkoutPlanNetworkService _networkService;

  @override
  Future<void> createLocal(String key, WorkoutPlanLocalModel value) async =>
      _localService.create(key, value);

  @override
  WorkoutPlanLocalModel? readLocal(String key) => _localService.read(key);

  @override
  Future<void> updateLocal(String key, WorkoutPlanLocalModel value) async =>
      _localService.update(key, value);

  @override
  Future<void> deleteLocal(String key) async => _localService.delete(key);

  @override
  List<WorkoutPlanLocalModel> readAllLocal() => _localService.readAll();

  @override
  Future<void> createNetwork(String key, WorkoutPlanNetworkModel value) async =>
      _networkService.create(key, value);

  @override
  Future<WorkoutPlanNetworkModel?> readNetwork(String key) => _networkService.read(key);

  @override
  Future<void> updateNetwork(String key, WorkoutPlanNetworkModel value) async =>
      _networkService.update(key, value);

  @override
  Future<void> deleteNetwork(String key) async => _networkService.delete(key);

  @override
  Future<List<WorkoutPlanNetworkModel>> readAllNetwork() => _networkService.readAll();
}
