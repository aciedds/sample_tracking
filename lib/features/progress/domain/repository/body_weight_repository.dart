import 'package:daily_reboot_tracker/features/progress/data/models/local/body_weight/body_weight_local_model.dart';
import 'package:daily_reboot_tracker/features/progress/data/models/network/body_weight/body_weight_network_model.dart';

abstract class BodyWeightRepository {
  Future<void> createLocal(String key, BodyWeightLocalModel value);
  BodyWeightLocalModel? readLocal(String key);
  Future<void> updateLocal(String key, BodyWeightLocalModel value);
  Future<void> deleteLocal(String key);
  List<BodyWeightLocalModel> readAllLocal();

  Future<void> createNetwork(String key, BodyWeightNetworkModel value);
  Future<BodyWeightNetworkModel?> readNetwork(String key);
  Future<void> updateNetwork(String key, BodyWeightNetworkModel value);
  Future<void> deleteNetwork(String key);
  Future<List<BodyWeightNetworkModel>> readAllNetwork();
}
