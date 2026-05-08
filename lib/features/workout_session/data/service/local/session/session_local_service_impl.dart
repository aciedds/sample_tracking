import 'package:hive/hive.dart';

import 'package:daily_reboot_tracker/core/local/hive_config.dart';
import 'package:daily_reboot_tracker/features/workout_session/data/models/local/session/session_local_model.dart';
import 'session_local_service.dart';

class SessionLocalServiceImpl extends SessionLocalService {
  SessionLocalServiceImpl(Box<SessionLocalModel> box) : _hiveConfig = HiveConfig<SessionLocalModel>(box);

  final HiveConfig<SessionLocalModel> _hiveConfig;

  @override
  Future<void> create(String key, SessionLocalModel value) async {
    await _hiveConfig.create(key, value);
  }

  @override
  SessionLocalModel? read(String key) {
    return _hiveConfig.read(key);
  }

  @override
  Future<void> update(String key, SessionLocalModel value) async {
    await _hiveConfig.update(key, value);
  }

  @override
  Future<void> delete(String key) async {
    await _hiveConfig.delete(key);
  }

  @override
  List<SessionLocalModel> readAll() {
    return _hiveConfig.readAll();
  }
}
