import 'package:hive/hive.dart';

import 'package:daily_reboot_tracker/core/local/hive_config.dart';
import 'package:daily_reboot_tracker/features/history/data/models/local/session_record/session_record_local_model.dart';
import 'session_record_local_service.dart';

class SessionRecordLocalServiceImpl extends SessionRecordLocalService {
  SessionRecordLocalServiceImpl(Box<SessionRecordLocalModel> box)
      : _hiveConfig = HiveConfig<SessionRecordLocalModel>(box);

  final HiveConfig<SessionRecordLocalModel> _hiveConfig;

  @override
  Future<void> create(String key, SessionRecordLocalModel value) async {
    await _hiveConfig.create(key, value);
  }

  @override
  SessionRecordLocalModel? read(String key) {
    return _hiveConfig.read(key);
  }

  @override
  Future<void> update(String key, SessionRecordLocalModel value) async {
    await _hiveConfig.update(key, value);
  }

  @override
  Future<void> delete(String key) async {
    await _hiveConfig.delete(key);
  }

  @override
  List<SessionRecordLocalModel> readAll() {
    return _hiveConfig.readAll();
  }
}
