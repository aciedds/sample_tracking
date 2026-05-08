// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_network_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionNetworkModelImpl _$$SessionNetworkModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SessionNetworkModelImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      workoutPlanId: json['workout_plan_id'] as String,
      dayLabel: json['day_label'] as String,
      startedAt: DateTime.parse(json['started_at'] as String),
      finishedAt: json['finished_at'] == null
          ? null
          : DateTime.parse(json['finished_at'] as String),
      sets: (json['sets'] as List<dynamic>)
          .map((e) => SetLogNetworkModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String? ?? 'idle',
    );

Map<String, dynamic> _$$SessionNetworkModelImplToJson(
        _$SessionNetworkModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'workout_plan_id': instance.workoutPlanId,
      'day_label': instance.dayLabel,
      'started_at': instance.startedAt.toIso8601String(),
      'finished_at': instance.finishedAt?.toIso8601String(),
      'sets': instance.sets,
      'status': instance.status,
    };
