import 'package:hive/hive.dart';

import 'package:daily_reboot_tracker/core/local/hive_config.dart';
import 'package:daily_reboot_tracker/features/workout_session/data/models/local/set_log/set_log_local_model.dart';
import 'set_log_local_service.dart';

class SetLogLocalServiceImpl extends SetLogLocalService {
  SetLogLocalServiceImpl(Box<SetLogLocalModel> box)
      : _hiveConfig = HiveConfig<SetLogLocalModel>(box);

  final HiveConfig<SetLogLocalModel> _hiveConfig;

  @override
  Future<void> create(String key, SetLogLocalModel value) async {
    await _hiveConfig.create(key, value);
  }

  @override
  SetLogLocalModel? read(String key) {
    return _hiveConfig.read(key);
  }

  @override
  Future<void> update(String key, SetLogLocalModel value) async {
    await _hiveConfig.update(key, value);
  }

  @override
  Future<void> delete(String key) async {
    await _hiveConfig.delete(key);
  }

  @override
  List<SetLogLocalModel> readAll() {
    return _hiveConfig.readAll();
  }
}
