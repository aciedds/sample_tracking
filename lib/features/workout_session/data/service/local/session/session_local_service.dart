import 'package:daily_reboot_tracker/features/workout_session/data/models/local/session/session_local_model.dart';

abstract class SessionLocalService {
  Future<void> create(String key, SessionLocalModel value);
  SessionLocalModel? read(String key);
  Future<void> update(String key, SessionLocalModel value);
  Future<void> delete(String key);
  List<SessionLocalModel> readAll();
}
