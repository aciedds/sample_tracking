import 'package:daily_reboot_tracker/features/history/data/models/local/session_record/session_record_local_model.dart';
import 'package:daily_reboot_tracker/features/history/data/models/network/session_record/session_record_network_model.dart';

abstract class SessionRecordRepository {
  Future<void> createLocal(String key, SessionRecordLocalModel value);
  SessionRecordLocalModel? readLocal(String key);
  Future<void> updateLocal(String key, SessionRecordLocalModel value);
  Future<void> deleteLocal(String key);
  List<SessionRecordLocalModel> readAllLocal();

  Future<void> createNetwork(String key, SessionRecordNetworkModel value);
  Future<SessionRecordNetworkModel?> readNetwork(String key);
  Future<void> updateNetwork(String key, SessionRecordNetworkModel value);
  Future<void> deleteNetwork(String key);
  Future<List<SessionRecordNetworkModel>> readAllNetwork();
}
