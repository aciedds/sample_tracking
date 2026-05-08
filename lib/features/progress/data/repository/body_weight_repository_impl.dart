import 'package:daily_reboot_tracker/features/progress/domain/repository/body_weight_repository.dart';
import 'package:daily_reboot_tracker/features/progress/data/models/local/body_weight/body_weight_local_model.dart';
import 'package:daily_reboot_tracker/features/progress/data/models/network/body_weight/body_weight_network_model.dart';
import 'package:daily_reboot_tracker/features/progress/data/service/local/body_weight/body_weight_local_service.dart';
import 'package:daily_reboot_tracker/features/progress/data/service/network/body_weight/body_weight_network_service.dart';

class BodyWeightRepositoryImpl extends BodyWeightRepository {
  BodyWeightRepositoryImpl(this._localService, this._networkService);

  final BodyWeightLocalService _localService;
  final BodyWeightNetworkService _networkService;

  @override
  Future<void> createLocal(String key, BodyWeightLocalModel value) async =>
      _localService.create(key, value);

  @override
  BodyWeightLocalModel? readLocal(String key) => _localService.read(key);

  @override
  Future<void> updateLocal(String key, BodyWeightLocalModel value) async =>
      _localService.update(key, value);

  @override
  Future<void> deleteLocal(String key) async => _localService.delete(key);

  @override
  List<BodyWeightLocalModel> readAllLocal() => _localService.readAll();

  @override
  Future<void> createNetwork(String key, BodyWeightNetworkModel value) async =>
      _networkService.create(key, value);

  @override
  Future<BodyWeightNetworkModel?> readNetwork(String key) => _networkService.read(key);

  @override
  Future<void> updateNetwork(String key, BodyWeightNetworkModel value) async =>
      _networkService.update(key, value);

  @override
  Future<void> deleteNetwork(String key) async => _networkService.delete(key);

  @override
  Future<List<BodyWeightNetworkModel>> readAllNetwork() => _networkService.readAll();
}
