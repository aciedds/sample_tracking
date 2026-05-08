import 'package:daily_reboot_tracker/features/progress/data/models/local/body_weight/body_weight_local_model.dart';

abstract class BodyWeightLocalService {
  Future<void> create(String key, BodyWeightLocalModel value);
  BodyWeightLocalModel? read(String key);
  Future<void> update(String key, BodyWeightLocalModel value);
  Future<void> delete(String key);
  List<BodyWeightLocalModel> readAll();
}
