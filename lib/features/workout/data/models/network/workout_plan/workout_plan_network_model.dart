import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_plan_network_model.freezed.dart';
part 'workout_plan_network_model.g.dart';

@freezed
class WorkoutDayNetworkModel with _$WorkoutDayNetworkModel {
  const factory WorkoutDayNetworkModel({
    @JsonKey(name: 'day_of_week') required int dayOfWeek,
    required String label,
    @JsonKey(name: 'exercise_ids') required List<String> exerciseIds,
  }) = _WorkoutDayNetworkModel;

  factory WorkoutDayNetworkModel.fromJson(Map<String, dynamic> json) =>
      _$WorkoutDayNetworkModelFromJson(json);
}

@freezed
class WorkoutPlanNetworkModel with _$WorkoutPlanNetworkModel {
  const factory WorkoutPlanNetworkModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    required String name,
    required List<WorkoutDayNetworkModel> days,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _WorkoutPlanNetworkModel;

  factory WorkoutPlanNetworkModel.fromJson(Map<String, dynamic> json) =>
      _$WorkoutPlanNetworkModelFromJson(json);
}
