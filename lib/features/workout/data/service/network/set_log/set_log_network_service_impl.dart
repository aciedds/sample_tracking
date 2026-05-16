import 'package:dio/dio.dart';

import 'package:daily_reboot_tracker/features/workout/data/models/network/set_log/set_log_network_model.dart';
import 'set_log_network_service.dart';

class SetLogNetworkServiceImpl extends SetLogNetworkService {
  SetLogNetworkServiceImpl(this._dio);

  final Dio _dio;
  static const String _endpoint = '/set-logs';

  @override
  Future<void> create(String key, SetLogNetworkModel value) async {
    await _dio.post('$_endpoint/$key', data: value.toJson());
  }

  @override
  Future<SetLogNetworkModel?> read(String key) async {
    final response = await _dio.get('$_endpoint/$key');
    final data = response.data;
    if (data is! Map<String, dynamic>) return null;
    return SetLogNetworkModel.fromJson(data);
  }

  @override
  Future<void> update(String key, SetLogNetworkModel value) async {
    await _dio.put('$_endpoint/$key', data: value.toJson());
  }

  @override
  Future<void> delete(String key) async {
    await _dio.delete('$_endpoint/$key');
  }

  @override
  Future<List<SetLogNetworkModel>> readAll() async {
    final response = await _dio.get(_endpoint);
    final data = response.data;
    if (data is! List) return const [];
    return data.whereType<Map<String, dynamic>>().map(SetLogNetworkModel.fromJson).toList(growable: false);
  }
}
