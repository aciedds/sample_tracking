// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_log_network_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetLogNetworkModelImpl _$$SetLogNetworkModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SetLogNetworkModelImpl(
      id: json['id'] as String,
      exerciseId: json['exercise_id'] as String,
      exerciseName: json['exercise_name'] as String,
      setNumber: (json['set_number'] as num).toInt(),
      targetReps: (json['target_reps'] as num).toInt(),
      completedReps: (json['completed_reps'] as num?)?.toInt(),
      weightKg: (json['weight_kg'] as num?)?.toDouble(),
      durationSeconds: (json['duration_seconds'] as num?)?.toInt(),
      isCompleted: json['is_completed'] as bool? ?? false,
      isSkipped: json['is_skipped'] as bool? ?? false,
    );

Map<String, dynamic> _$$SetLogNetworkModelImplToJson(
        _$SetLogNetworkModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'exercise_id': instance.exerciseId,
      'exercise_name': instance.exerciseName,
      'set_number': instance.setNumber,
      'target_reps': instance.targetReps,
      'completed_reps': instance.completedReps,
      'weight_kg': instance.weightKg,
      'duration_seconds': instance.durationSeconds,
      'is_completed': instance.isCompleted,
      'is_skipped': instance.isSkipped,
    };
