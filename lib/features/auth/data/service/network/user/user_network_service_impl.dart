import 'package:dio/dio.dart';

import 'package:daily_reboot_tracker/features/auth/data/models/network/user/user_network_model.dart';
import 'user_network_service.dart';

class UserNetworkServiceImpl extends UserNetworkService {
  UserNetworkServiceImpl(this._dio);

  final Dio _dio;
  static const String _endpoint = '/users';

  @override
  Future<void> create(String key, UserNetworkModel value) async {
    await _dio.post('$_endpoint/$key', data: value.toJson());
  }

  @override
  Future<UserNetworkModel?> read(String key) async {
    final response = await _dio.get('$_endpoint/$key');
    final data = response.data;
    if (data is! Map<String, dynamic>) return null;
    return UserNetworkModel.fromJson(data);
  }

  @override
  Future<void> update(String key, UserNetworkModel value) async {
    await _dio.put('$_endpoint/$key', data: value.toJson());
  }

  @override
  Future<void> delete(String key) async {
    await _dio.delete('$_endpoint/$key');
  }

  @override
  Future<List<UserNetworkModel>> readAll() async {
    final response = await _dio.get(_endpoint);
    final data = response.data;
    if (data is! List) return const [];
    return data.whereType<Map<String, dynamic>>().map(UserNetworkModel.fromJson).toList(growable: false);
  }
}
