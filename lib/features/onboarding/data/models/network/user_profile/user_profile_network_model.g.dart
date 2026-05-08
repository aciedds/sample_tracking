// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_network_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileNetworkModelImpl _$$UserProfileNetworkModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileNetworkModelImpl(
      userId: json['user_id'] as String,
      weightKg: (json['weight_kg'] as num).toDouble(),
      heightCm: (json['height_cm'] as num).toDouble(),
      ageYears: (json['age_years'] as num).toInt(),
      gender: json['gender'] as String,
      goalType: json['goal_type'] as String,
      targetWeightKg: (json['target_weight_kg'] as num?)?.toDouble(),
      level: json['level'] as String,
      workoutDaysPerWeek: (json['workout_days_per_week'] as num).toInt(),
      bmi: (json['bmi'] as num).toDouble(),
      bmr: (json['bmr'] as num).toDouble(),
    );

Map<String, dynamic> _$$UserProfileNetworkModelImplToJson(
        _$UserProfileNetworkModelImpl instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'weight_kg': instance.weightKg,
      'height_cm': instance.heightCm,
      'age_years': instance.ageYears,
      'gender': instance.gender,
      'goal_type': instance.goalType,
      'target_weight_kg': instance.targetWeightKg,
      'level': instance.level,
      'workout_days_per_week': instance.workoutDaysPerWeek,
      'bmi': instance.bmi,
      'bmr': instance.bmr,
    };
