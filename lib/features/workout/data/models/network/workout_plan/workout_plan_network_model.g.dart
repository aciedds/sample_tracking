// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_plan_network_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkoutDayNetworkModelImpl _$$WorkoutDayNetworkModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkoutDayNetworkModelImpl(
      dayOfWeek: (json['day_of_week'] as num).toInt(),
      label: json['label'] as String,
      exerciseIds: (json['exercise_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$WorkoutDayNetworkModelImplToJson(
        _$WorkoutDayNetworkModelImpl instance) =>
    <String, dynamic>{
      'day_of_week': instance.dayOfWeek,
      'label': instance.label,
      'exercise_ids': instance.exerciseIds,
    };

_$WorkoutPlanNetworkModelImpl _$$WorkoutPlanNetworkModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkoutPlanNetworkModelImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      name: json['name'] as String,
      days: (json['days'] as List<dynamic>)
          .map(
              (e) => WorkoutDayNetworkModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$WorkoutPlanNetworkModelImplToJson(
        _$WorkoutPlanNetworkModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'name': instance.name,
      'days': instance.days,
      'created_at': instance.createdAt.toIso8601String(),
    };
