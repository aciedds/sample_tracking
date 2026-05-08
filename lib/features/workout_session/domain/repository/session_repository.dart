import 'package:daily_reboot_tracker/features/workout_session/data/models/local/session/session_local_model.dart';
import 'package:daily_reboot_tracker/features/workout_session/data/models/network/session/session_network_model.dart';

abstract class SessionRepository {
  Future<void> createLocal(String key, SessionLocalModel value);
  SessionLocalModel? readLocal(String key);
  Future<void> updateLocal(String key, SessionLocalModel value);
  Future<void> deleteLocal(String key);
  List<SessionLocalModel> readAllLocal();

  Future<void> createNetwork(String key, SessionNetworkModel value);
  Future<SessionNetworkModel?> readNetwork(String key);
  Future<void> updateNetwork(String key, SessionNetworkModel value);
  Future<void> deleteNetwork(String key);
  Future<List<SessionNetworkModel>> readAllNetwork();
}
