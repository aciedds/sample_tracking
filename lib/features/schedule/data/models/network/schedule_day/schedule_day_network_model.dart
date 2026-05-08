import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_day_network_model.freezed.dart';
part 'schedule_day_network_model.g.dart';

@freezed
class ScheduleDayNetworkModel with _$ScheduleDayNetworkModel {
  const factory ScheduleDayNetworkModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    required DateTime date,
    @JsonKey(name: 'day_of_week') required int dayOfWeek,
    required String status,
    @JsonKey(name: 'workout_plan_day_label') String? workoutPlanDayLabel,
    @JsonKey(name: 'session_id') String? sessionId,
  }) = _ScheduleDayNetworkModel;

  factory ScheduleDayNetworkModel.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDayNetworkModelFromJson(json);
}
