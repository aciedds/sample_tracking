import 'package:daily_reboot_tracker/features/workout_session/domain/repository/session_repository.dart';
import 'package:daily_reboot_tracker/features/workout_session/data/models/local/session/session_local_model.dart';
import 'package:daily_reboot_tracker/features/workout_session/data/models/network/session/session_network_model.dart';
import 'package:daily_reboot_tracker/features/workout_session/data/service/local/session/session_local_service.dart';
import 'package:daily_reboot_tracker/features/workout_session/data/service/network/session/session_network_service.dart';

class SessionRepositoryImpl extends SessionRepository {
  SessionRepositoryImpl(this._localService, this._networkService);

  final SessionLocalService _localService;
  final SessionNetworkService _networkService;

  @override
  Future<void> createLocal(String key, SessionLocalModel value) async =>
      _localService.create(key, value);

  @override
  SessionLocalModel? readLocal(String key) => _localService.read(key);

  @override
  Future<void> updateLocal(String key, SessionLocalModel value) async =>
      _localService.update(key, value);

  @override
  Future<void> deleteLocal(String key) async => _localService.delete(key);

  @override
  List<SessionLocalModel> readAllLocal() => _localService.readAll();

  @override
  Future<void> createNetwork(String key, SessionNetworkModel value) async =>
      _networkService.create(key, value);

  @override
  Future<SessionNetworkModel?> readNetwork(String key) => _networkService.read(key);

  @override
  Future<void> updateNetwork(String key, SessionNetworkModel value) async =>
      _networkService.update(key, value);

  @override
  Future<void> deleteNetwork(String key) async => _networkService.delete(key);

  @override
  Future<List<SessionNetworkModel>> readAllNetwork() => _networkService.readAll();
}
