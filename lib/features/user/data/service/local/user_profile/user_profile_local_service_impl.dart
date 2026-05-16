import 'package:hive/hive.dart';

import 'package:daily_reboot_tracker/core/local/hive_config.dart';
import 'package:daily_reboot_tracker/features/user/data/models/local/user_profile/user_profile_entity.dart';
import 'user_profile_local_service.dart';

class UserProfileLocalServiceImpl extends UserProfileLocalService {
  UserProfileLocalServiceImpl(Box<UserProfileEntity> box)
      : _hiveConfig = HiveConfig<UserProfileEntity>(box);

  final HiveConfig<UserProfileEntity> _hiveConfig;

  @override
  Future<void> create(String key, UserProfileEntity value) async {
    await _hiveConfig.create(key, value);
  }

  @override
  UserProfileEntity? read(String key) {
    return _hiveConfig.read(key);
  }

  @override
  Future<void> update(String key, UserProfileEntity value) async {
    await _hiveConfig.update(key, value);
  }

  @override
  Future<void> delete(String key) async {
    await _hiveConfig.delete(key);
  }

  @override
  List<UserProfileEntity> readAll() {
    return _hiveConfig.readAll();
  }
}
