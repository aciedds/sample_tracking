import 'package:daily_reboot_tracker/features/schedule/domain/repository/schedule_day_repository.dart';
import 'package:daily_reboot_tracker/features/schedule/data/models/local/schedule_day/schedule_day_local_model.dart';
import 'package:daily_reboot_tracker/features/schedule/data/models/network/schedule_day/schedule_day_network_model.dart';
import 'package:daily_reboot_tracker/features/schedule/data/service/local/schedule_day/schedule_day_local_service.dart';
import 'package:daily_reboot_tracker/features/schedule/data/service/network/schedule_day/schedule_day_network_service.dart';

class ScheduleDayRepositoryImpl extends ScheduleDayRepository {
  ScheduleDayRepositoryImpl(this._localService, this._networkService);

  final ScheduleDayLocalService _localService;
  final ScheduleDayNetworkService _networkService;

  @override
  Future<void> createLocal(String key, ScheduleDayLocalModel value) async =>
      _localService.create(key, value);

  @override
  ScheduleDayLocalModel? readLocal(String key) => _localService.read(key);

  @override
  Future<void> updateLocal(String key, ScheduleDayLocalModel value) async =>
      _localService.update(key, value);

  @override
  Future<void> deleteLocal(String key) async => _localService.delete(key);

  @override
  List<ScheduleDayLocalModel> readAllLocal() => _localService.readAll();

  @override
  Future<void> createNetwork(String key, ScheduleDayNetworkModel value) async =>
      _networkService.create(key, value);

  @override
  Future<ScheduleDayNetworkModel?> readNetwork(String key) => _networkService.read(key);

  @override
  Future<void> updateNetwork(String key, ScheduleDayNetworkModel value) async =>
      _networkService.update(key, value);

  @override
  Future<void> deleteNetwork(String key) async => _networkService.delete(key);

  @override
  Future<List<ScheduleDayNetworkModel>> readAllNetwork() => _networkService.readAll();
}
