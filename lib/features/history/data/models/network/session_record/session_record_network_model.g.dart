// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_record_network_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionRecordNetworkModelImpl _$$SessionRecordNetworkModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SessionRecordNetworkModelImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      dayLabel: json['day_label'] as String,
      date: DateTime.parse(json['date'] as String),
      durationSeconds: (json['duration_seconds'] as num).toInt(),
      completedSets: (json['completed_sets'] as num).toInt(),
      totalSets: (json['total_sets'] as num).toInt(),
      estimatedCalories: (json['estimated_calories'] as num).toDouble(),
      performanceScore: (json['performance_score'] as num).toDouble(),
    );

Map<String, dynamic> _$$SessionRecordNetworkModelImplToJson(
        _$SessionRecordNetworkModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'day_label': instance.dayLabel,
      'date': instance.date.toIso8601String(),
      'duration_seconds': instance.durationSeconds,
      'completed_sets': instance.completedSets,
      'total_sets': instance.totalSets,
      'estimated_calories': instance.estimatedCalories,
      'performance_score': instance.performanceScore,
    };
