import 'package:daily_reboot_tracker/features/onboarding/domain/repository/workout_day_repository.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/models/local/workout_plan/workout_plan_local_model.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/models/network/workout_plan/workout_plan_network_model.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/service/local/workout_day/workout_day_local_service.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/service/network/workout_day/workout_day_network_service.dart';

class WorkoutDayRepositoryImpl extends WorkoutDayRepository {
  WorkoutDayRepositoryImpl(this._localService, this._networkService);

  final WorkoutDayLocalService _localService;
  final WorkoutDayNetworkService _networkService;

  @override
  Future<void> createLocal(String key, WorkoutDayLocalModel value) async =>
      _localService.create(key, value);

  @override
  WorkoutDayLocalModel? readLocal(String key) => _localService.read(key);

  @override
  Future<void> updateLocal(String key, WorkoutDayLocalModel value) async =>
      _localService.update(key, value);

  @override
  Future<void> deleteLocal(String key) async => _localService.delete(key);

  @override
  List<WorkoutDayLocalModel> readAllLocal() => _localService.readAll();

  @override
  Future<void> createNetwork(String key, WorkoutDayNetworkModel value) async =>
      _networkService.create(key, value);

  @override
  Future<WorkoutDayNetworkModel?> readNetwork(String key) => _networkService.read(key);

  @override
  Future<void> updateNetwork(String key, WorkoutDayNetworkModel value) async =>
      _networkService.update(key, value);

  @override
  Future<void> deleteNetwork(String key) async => _networkService.delete(key);

  @override
  Future<List<WorkoutDayNetworkModel>> readAllNetwork() => _networkService.readAll();
}
