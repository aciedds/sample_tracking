import 'package:hive/hive.dart';

import 'package:daily_reboot_tracker/core/local/hive_config.dart';
import 'package:daily_reboot_tracker/features/auth/data/models/local/user/user_local_model.dart';
import 'user_local_service.dart';

class UserLocalServiceImpl extends UserLocalService {
  UserLocalServiceImpl(Box<UserLocalModel> box) : _hiveConfig = HiveConfig<UserLocalModel>(box);

  final HiveConfig<UserLocalModel> _hiveConfig;

  @override
  Future<void> create(String key, UserLocalModel value) async {
    await _hiveConfig.create(key, value);
  }

  @override
  UserLocalModel? read(String key) {
    return _hiveConfig.read(key);
  }

  @override
  Future<void> update(String key, UserLocalModel value) async {
    await _hiveConfig.update(key, value);
  }

  @override
  Future<void> delete(String key) async {
    await _hiveConfig.delete(key);
  }

  @override
  List<UserLocalModel> readAll() {
    return _hiveConfig.readAll();
  }
}
