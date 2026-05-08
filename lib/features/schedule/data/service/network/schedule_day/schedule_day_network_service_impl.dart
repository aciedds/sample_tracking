import 'package:dio/dio.dart';

import 'package:daily_reboot_tracker/features/schedule/data/models/network/schedule_day/schedule_day_network_model.dart';
import 'schedule_day_network_service.dart';

class ScheduleDayNetworkServiceImpl extends ScheduleDayNetworkService {
  ScheduleDayNetworkServiceImpl(this._dio);

  final Dio _dio;
  static const String _endpoint = '/schedule-days';

  @override
  Future<void> create(String key, ScheduleDayNetworkModel value) async {
    await _dio.post('$_endpoint/$key', data: value.toJson());
  }

  @override
  Future<ScheduleDayNetworkModel?> read(String key) async {
    final response = await _dio.get('$_endpoint/$key');
    final data = response.data;
    if (data is! Map<String, dynamic>) return null;
    return ScheduleDayNetworkModel.fromJson(data);
  }

  @override
  Future<void> update(String key, ScheduleDayNetworkModel value) async {
    await _dio.put('$_endpoint/$key', data: value.toJson());
  }

  @override
  Future<void> delete(String key) async {
    await _dio.delete('$_endpoint/$key');
  }

  @override
  Future<List<ScheduleDayNetworkModel>> readAll() async {
    final response = await _dio.get(_endpoint);
    final data = response.data;
    if (data is! List) return const [];
    return data.whereType<Map<String, dynamic>>().map(ScheduleDayNetworkModel.fromJson).toList(growable: false);
  }
}
