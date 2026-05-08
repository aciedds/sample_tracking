import 'package:dio/dio.dart';

import 'package:daily_reboot_tracker/features/onboarding/data/models/network/user_profile/user_profile_network_model.dart';
import 'user_profile_network_service.dart';

class UserProfileNetworkServiceImpl extends UserProfileNetworkService {
  UserProfileNetworkServiceImpl(this._dio);

  final Dio _dio;
  static const String _endpoint = '/user-profiles';

  @override
  Future<void> create(String key, UserProfileNetworkModel value) async {
    await _dio.post('$_endpoint/$key', data: value.toJson());
  }

  @override
  Future<UserProfileNetworkModel?> read(String key) async {
    final response = await _dio.get('$_endpoint/$key');
    final data = response.data;
    if (data is! Map<String, dynamic>) return null;
    return UserProfileNetworkModel.fromJson(data);
  }

  @override
  Future<void> update(String key, UserProfileNetworkModel value) async {
    await _dio.put('$_endpoint/$key', data: value.toJson());
  }

  @override
  Future<void> delete(String key) async {
    await _dio.delete('$_endpoint/$key');
  }

  @override
  Future<List<UserProfileNetworkModel>> readAll() async {
    final response = await _dio.get(_endpoint);
    final data = response.data;
    if (data is! List) return const [];
    return data.whereType<Map<String, dynamic>>().map(UserProfileNetworkModel.fromJson).toList(growable: false);
  }
}
