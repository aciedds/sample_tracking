import 'package:daily_reboot_tracker/features/auth/domain/repository/user_repository.dart';
import 'package:daily_reboot_tracker/features/auth/data/models/local/user/user_local_model.dart';
import 'package:daily_reboot_tracker/features/auth/data/models/network/user/user_network_model.dart';
import 'package:daily_reboot_tracker/features/auth/data/service/local/user/user_local_service.dart';
import 'package:daily_reboot_tracker/features/auth/data/service/network/user/user_network_service.dart';

class UserRepositoryImpl extends UserRepository {
  UserRepositoryImpl(this._localService, this._networkService);

  final UserLocalService _localService;
  final UserNetworkService _networkService;

  @override
  Future<void> createLocal(String key, UserLocalModel value) async =>
      _localService.create(key, value);

  @override
  UserLocalModel? readLocal(String key) => _localService.read(key);

  @override
  Future<void> updateLocal(String key, UserLocalModel value) async =>
      _localService.update(key, value);

  @override
  Future<void> deleteLocal(String key) async => _localService.delete(key);

  @override
  List<UserLocalModel> readAllLocal() => _localService.readAll();

  @override
  Future<void> createNetwork(String key, UserNetworkModel value) async =>
      _networkService.create(key, value);

  @override
  Future<UserNetworkModel?> readNetwork(String key) => _networkService.read(key);

  @override
  Future<void> updateNetwork(String key, UserNetworkModel value) async =>
      _networkService.update(key, value);

  @override
  Future<void> deleteNetwork(String key) async => _networkService.delete(key);

  @override
  Future<List<UserNetworkModel>> readAllNetwork() => _networkService.readAll();
}
