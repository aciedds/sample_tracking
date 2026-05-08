import 'package:daily_reboot_tracker/features/progress/data/models/network/body_weight/body_weight_network_model.dart';

abstract class BodyWeightNetworkService {
  Future<void> create(String key, BodyWeightNetworkModel value);
  Future<BodyWeightNetworkModel?> read(String key);
  Future<void> update(String key, BodyWeightNetworkModel value);
  Future<void> delete(String key);
  Future<List<BodyWeightNetworkModel>> readAll();
}
