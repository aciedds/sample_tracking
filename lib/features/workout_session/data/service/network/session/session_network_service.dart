import 'package:daily_reboot_tracker/features/workout_session/data/models/network/session/session_network_model.dart';

abstract class SessionNetworkService {
  Future<void> create(String key, SessionNetworkModel value);
  Future<SessionNetworkModel?> read(String key);
  Future<void> update(String key, SessionNetworkModel value);
  Future<void> delete(String key);
  Future<List<SessionNetworkModel>> readAll();
}
