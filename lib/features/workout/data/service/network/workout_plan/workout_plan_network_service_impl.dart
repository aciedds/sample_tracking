import 'package:dio/dio.dart';

import 'package:daily_reboot_tracker/features/workout/data/models/network/workout_plan/workout_plan_network_model.dart';
import 'workout_plan_network_service.dart';

class WorkoutPlanNetworkServiceImpl extends WorkoutPlanNetworkService {
  WorkoutPlanNetworkServiceImpl(this._dio);

  final Dio _dio;
  static const String _endpoint = '/workout-plans';

  @override
  Future<void> create(String key, WorkoutPlanNetworkModel value) async {
    await _dio.post('$_endpoint/$key', data: value.toJson());
  }

  @override
  Future<WorkoutPlanNetworkModel?> read(String key) async {
    final response = await _dio.get('$_endpoint/$key');
    final data = response.data;
    if (data is! Map<String, dynamic>) return null;
    return WorkoutPlanNetworkModel.fromJson(data);
  }

  @override
  Future<void> update(String key, WorkoutPlanNetworkModel value) async {
    await _dio.put('$_endpoint/$key', data: value.toJson());
  }

  @override
  Future<void> delete(String key) async {
    await _dio.delete('$_endpoint/$key');
  }

  @override
  Future<List<WorkoutPlanNetworkModel>> readAll() async {
    final response = await _dio.get(_endpoint);
    final data = response.data;
    if (data is! List) return const [];
    return data.whereType<Map<String, dynamic>>().map(WorkoutPlanNetworkModel.fromJson).toList(growable: false);
  }
}
