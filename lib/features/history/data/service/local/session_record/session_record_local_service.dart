import 'package:daily_reboot_tracker/features/history/data/models/local/session_record/session_record_local_model.dart';

abstract class SessionRecordLocalService {
  Future<void> create(String key, SessionRecordLocalModel value);
  SessionRecordLocalModel? read(String key);
  Future<void> update(String key, SessionRecordLocalModel value);
  Future<void> delete(String key);
  List<SessionRecordLocalModel> readAll();
}
