import 'package:daily_reboot_tracker/features/workout/domain/repository/set_log_repository.dart';
import 'package:daily_reboot_tracker/features/workout/data/models/local/set_log/set_log_local_model.dart';
import 'package:daily_reboot_tracker/features/workout/data/models/network/set_log/set_log_network_model.dart';
import 'package:daily_reboot_tracker/features/workout/data/service/local/set_log/set_log_local_service.dart';
import 'package:daily_reboot_tracker/features/workout/data/service/network/set_log/set_log_network_service.dart';

class SetLogRepositoryImpl extends SetLogRepository {
  SetLogRepositoryImpl(this._localService, this._networkService);

  final SetLogLocalService _localService;
  final SetLogNetworkService _networkService;

  @override
  Future<void> createLocal(String key, SetLogLocalModel value) async =>
      _localService.create(key, value);

  @override
  SetLogLocalModel? readLocal(String key) => _localService.read(key);

  @override
  Future<void> updateLocal(String key, SetLogLocalModel value) async =>
      _localService.update(key, value);

  @override
  Future<void> deleteLocal(String key) async => _localService.delete(key);

  @override
  List<SetLogLocalModel> readAllLocal() => _localService.readAll();

  @override
  Future<void> createNetwork(String key, SetLogNetworkModel value) async =>
      _networkService.create(key, value);

  @override
  Future<SetLogNetworkModel?> readNetwork(String key) => _networkService.read(key);

  @override
  Future<void> updateNetwork(String key, SetLogNetworkModel value) async =>
      _networkService.update(key, value);

  @override
  Future<void> deleteNetwork(String key) async => _networkService.delete(key);

  @override
  Future<List<SetLogNetworkModel>> readAllNetwork() => _networkService.readAll();
}
