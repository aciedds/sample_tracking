// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_day_network_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScheduleDayNetworkModelImpl _$$ScheduleDayNetworkModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ScheduleDayNetworkModelImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      date: DateTime.parse(json['date'] as String),
      dayOfWeek: (json['day_of_week'] as num).toInt(),
      status: json['status'] as String,
      workoutPlanDayLabel: json['workout_plan_day_label'] as String?,
      sessionId: json['session_id'] as String?,
    );

Map<String, dynamic> _$$ScheduleDayNetworkModelImplToJson(
        _$ScheduleDayNetworkModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'date': instance.date.toIso8601String(),
      'day_of_week': instance.dayOfWeek,
      'status': instance.status,
      'workout_plan_day_label': instance.workoutPlanDayLabel,
      'session_id': instance.sessionId,
    };
