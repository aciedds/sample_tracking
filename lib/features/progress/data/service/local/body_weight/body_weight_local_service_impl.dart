import 'package:hive/hive.dart';

import 'package:daily_reboot_tracker/core/local/hive_config.dart';
import 'package:daily_reboot_tracker/features/progress/data/models/local/body_weight/body_weight_local_model.dart';
import 'body_weight_local_service.dart';

class BodyWeightLocalServiceImpl extends BodyWeightLocalService {
  BodyWeightLocalServiceImpl(Box<BodyWeightLocalModel> box)
      : _hiveConfig = HiveConfig<BodyWeightLocalModel>(box);

  final HiveConfig<BodyWeightLocalModel> _hiveConfig;

  @override
  Future<void> create(String key, BodyWeightLocalModel value) async {
    await _hiveConfig.create(key, value);
  }

  @override
  BodyWeightLocalModel? read(String key) {
    return _hiveConfig.read(key);
  }

  @override
  Future<void> update(String key, BodyWeightLocalModel value) async {
    await _hiveConfig.update(key, value);
  }

  @override
  Future<void> delete(String key) async {
    await _hiveConfig.delete(key);
  }

  @override
  List<BodyWeightLocalModel> readAll() {
    return _hiveConfig.readAll();
  }
}
