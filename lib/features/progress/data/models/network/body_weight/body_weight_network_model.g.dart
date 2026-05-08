// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_weight_network_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BodyWeightNetworkModelImpl _$$BodyWeightNetworkModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BodyWeightNetworkModelImpl(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      weightKg: (json['weight_kg'] as num).toDouble(),
      bmi: (json['bmi'] as num).toDouble(),
      recordedAt: DateTime.parse(json['recorded_at'] as String),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$BodyWeightNetworkModelImplToJson(
        _$BodyWeightNetworkModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'weight_kg': instance.weightKg,
      'bmi': instance.bmi,
      'recorded_at': instance.recordedAt.toIso8601String(),
      'note': instance.note,
    };
