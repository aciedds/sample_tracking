import 'package:dio/dio.dart';

import 'package:daily_reboot_tracker/features/workout_session/data/models/network/session/session_network_model.dart';
import 'session_network_service.dart';

class SessionNetworkServiceImpl extends SessionNetworkService {
  SessionNetworkServiceImpl(this._dio);

  final Dio _dio;
  static const String _endpoint = '/sessions';

  @override
  Future<void> create(String key, SessionNetworkModel value) async {
    await _dio.post('$_endpoint/$key', data: value.toJson());
  }

  @override
  Future<SessionNetworkModel?> read(String key) async {
    final response = await _dio.get('$_endpoint/$key');
    final data = response.data;
    if (data is! Map<String, dynamic>) return null;
    return SessionNetworkModel.fromJson(data);
  }

  @override
  Future<void> update(String key, SessionNetworkModel value) async {
    await _dio.put('$_endpoint/$key', data: value.toJson());
  }

  @override
  Future<void> delete(String key) async {
    await _dio.delete('$_endpoint/$key');
  }

  @override
  Future<List<SessionNetworkModel>> readAll() async {
    final response = await _dio.get(_endpoint);
    final data = response.data;
    if (data is! List) return const [];
    return data.whereType<Map<String, dynamic>>().map(SessionNetworkModel.fromJson).toList(growable: false);
  }
}
