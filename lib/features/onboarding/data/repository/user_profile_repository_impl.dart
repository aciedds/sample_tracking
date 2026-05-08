import 'package:daily_reboot_tracker/features/onboarding/domain/repository/user_profile_repository.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/models/local/user_profile/user_profile_local_model.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/models/network/user_profile/user_profile_network_model.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/service/local/user_profile/user_profile_local_service.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/service/network/user_profile/user_profile_network_service.dart';

class UserProfileRepositoryImpl extends UserProfileRepository {
  UserProfileRepositoryImpl(this._localService, this._networkService);

  final UserProfileLocalService _localService;
  final UserProfileNetworkService _networkService;

  @override
  Future<void> createLocal(String key, UserProfileLocalModel value) async =>
      _localService.create(key, value);

  @override
  UserProfileLocalModel? readLocal(String key) => _localService.read(key);

  @override
  Future<void> updateLocal(String key, UserProfileLocalModel value) async =>
      _localService.update(key, value);

  @override
  Future<void> deleteLocal(String key) async => _localService.delete(key);

  @override
  List<UserProfileLocalModel> readAllLocal() => _localService.readAll();

  @override
  Future<void> createNetwork(String key, UserProfileNetworkModel value) async =>
      _networkService.create(key, value);

  @override
  Future<UserProfileNetworkModel?> readNetwork(String key) => _networkService.read(key);

  @override
  Future<void> updateNetwork(String key, UserProfileNetworkModel value) async =>
      _networkService.update(key, value);

  @override
  Future<void> deleteNetwork(String key) async => _networkService.delete(key);

  @override
  Future<List<UserProfileNetworkModel>> readAllNetwork() => _networkService.readAll();
}
