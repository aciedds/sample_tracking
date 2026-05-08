import 'package:daily_reboot_tracker/features/history/domain/repository/session_record_repository.dart';
import 'package:daily_reboot_tracker/features/history/data/models/local/session_record/session_record_local_model.dart';
import 'package:daily_reboot_tracker/features/history/data/models/network/session_record/session_record_network_model.dart';
import 'package:daily_reboot_tracker/features/history/data/service/local/session_record/session_record_local_service.dart';
import 'package:daily_reboot_tracker/features/history/data/service/network/session_record/session_record_network_service.dart';

class SessionRecordRepositoryImpl extends SessionRecordRepository {
  SessionRecordRepositoryImpl(this._localService, this._networkService);

  final SessionRecordLocalService _localService;
  final SessionRecordNetworkService _networkService;

  @override
  Future<void> createLocal(String key, SessionRecordLocalModel value) async =>
      _localService.create(key, value);

  @override
  SessionRecordLocalModel? readLocal(String key) => _localService.read(key);

  @override
  Future<void> updateLocal(String key, SessionRecordLocalModel value) async =>
      _localService.update(key, value);

  @override
  Future<void> deleteLocal(String key) async => _localService.delete(key);

  @override
  List<SessionRecordLocalModel> readAllLocal() => _localService.readAll();

  @override
  Future<void> createNetwork(String key, SessionRecordNetworkModel value) async =>
      _networkService.create(key, value);

  @override
  Future<SessionRecordNetworkModel?> readNetwork(String key) => _networkService.read(key);

  @override
  Future<void> updateNetwork(String key, SessionRecordNetworkModel value) async =>
      _networkService.update(key, value);

  @override
  Future<void> deleteNetwork(String key) async => _networkService.delete(key);

  @override
  Future<List<SessionRecordNetworkModel>> readAllNetwork() => _networkService.readAll();
}
