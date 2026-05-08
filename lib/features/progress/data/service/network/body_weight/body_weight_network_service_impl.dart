import 'package:dio/dio.dart';

import 'package:daily_reboot_tracker/features/progress/data/models/network/body_weight/body_weight_network_model.dart';
import 'body_weight_network_service.dart';

class BodyWeightNetworkServiceImpl extends BodyWeightNetworkService {
  BodyWeightNetworkServiceImpl(this._dio);

  final Dio _dio;
  static const String _endpoint = '/body-weights';

  @override
  Future<void> create(String key, BodyWeightNetworkModel value) async {
    await _dio.post('$_endpoint/$key', data: value.toJson());
  }

  @override
  Future<BodyWeightNetworkModel?> read(String key) async {
    final response = await _dio.get('$_endpoint/$key');
    final data = response.data;
    if (data is! Map<String, dynamic>) return null;
    return BodyWeightNetworkModel.fromJson(data);
  }

  @override
  Future<void> update(String key, BodyWeightNetworkModel value) async {
    await _dio.put('$_endpoint/$key', data: value.toJson());
  }

  @override
  Future<void> delete(String key) async {
    await _dio.delete('$_endpoint/$key');
  }

  @override
  Future<List<BodyWeightNetworkModel>> readAll() async {
    final response = await _dio.get(_endpoint);
    final data = response.data;
    if (data is! List) return const [];
    return data.whereType<Map<String, dynamic>>().map(BodyWeightNetworkModel.fromJson).toList(growable: false);
  }
}
