import 'package:hive/hive.dart';

import 'package:daily_reboot_tracker/core/local/hive_config.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/models/local/user_profile/user_profile_local_model.dart';
import 'user_profile_local_service.dart';

class UserProfileLocalServiceImpl extends UserProfileLocalService {
  UserProfileLocalServiceImpl(Box<UserProfileLocalModel> box)
      : _hiveConfig = HiveConfig<UserProfileLocalModel>(box);

  final HiveConfig<UserProfileLocalModel> _hiveConfig;

  @override
  Future<void> create(String key, UserProfileLocalModel value) async {
    await _hiveConfig.create(key, value);
  }

  @override
  UserProfileLocalModel? read(String key) {
    return _hiveConfig.read(key);
  }

  @override
  Future<void> update(String key, UserProfileLocalModel value) async {
    await _hiveConfig.update(key, value);
  }

  @override
  Future<void> delete(String key) async {
    await _hiveConfig.delete(key);
  }

  @override
  List<UserProfileLocalModel> readAll() {
    return _hiveConfig.readAll();
  }
}
