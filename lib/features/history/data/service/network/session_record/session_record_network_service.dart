import 'package:daily_reboot_tracker/features/history/data/models/network/session_record/session_record_network_model.dart';

abstract class SessionRecordNetworkService {
  Future<void> create(String key, SessionRecordNetworkModel value);
  Future<SessionRecordNetworkModel?> read(String key);
  Future<void> update(String key, SessionRecordNetworkModel value);
  Future<void> delete(String key);
  Future<List<SessionRecordNetworkModel>> readAll();
}
