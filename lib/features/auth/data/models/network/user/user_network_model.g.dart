// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_network_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserNetworkModelImpl _$$UserNetworkModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserNetworkModelImpl(
      id: json['id'] as String,
      email: json['email'] as String,
      displayName: json['display_name'] as String?,
      photoUrl: json['photo_url'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$UserNetworkModelImplToJson(
        _$UserNetworkModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'display_name': instance.displayName,
      'photo_url': instance.photoUrl,
      'created_at': instance.createdAt.toIso8601String(),
    };
