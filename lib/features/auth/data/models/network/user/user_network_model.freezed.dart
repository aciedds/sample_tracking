// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_network_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserNetworkModel _$UserNetworkModelFromJson(Map<String, dynamic> json) {
  return _UserNetworkModel.fromJson(json);
}

/// @nodoc
mixin _$UserNetworkModel {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this UserNetworkModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserNetworkModelCopyWith<UserNetworkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNetworkModelCopyWith<$Res> {
  factory $UserNetworkModelCopyWith(
          UserNetworkModel value, $Res Function(UserNetworkModel) then) =
      _$UserNetworkModelCopyWithImpl<$Res, UserNetworkModel>;
  @useResult
  $Res call(
      {String id,
      String email,
      @JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'photo_url') String? photoUrl,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$UserNetworkModelCopyWithImpl<$Res, $Val extends UserNetworkModel>
    implements $UserNetworkModelCopyWith<$Res> {
  _$UserNetworkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? displayName = freezed,
    Object? photoUrl = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserNetworkModelImplCopyWith<$Res>
    implements $UserNetworkModelCopyWith<$Res> {
  factory _$$UserNetworkModelImplCopyWith(_$UserNetworkModelImpl value,
          $Res Function(_$UserNetworkModelImpl) then) =
      __$$UserNetworkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String email,
      @JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'photo_url') String? photoUrl,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$$UserNetworkModelImplCopyWithImpl<$Res>
    extends _$UserNetworkModelCopyWithImpl<$Res, _$UserNetworkModelImpl>
    implements _$$UserNetworkModelImplCopyWith<$Res> {
  __$$UserNetworkModelImplCopyWithImpl(_$UserNetworkModelImpl _value,
      $Res Function(_$UserNetworkModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? displayName = freezed,
    Object? photoUrl = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$UserNetworkModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserNetworkModelImpl implements _UserNetworkModel {
  const _$UserNetworkModelImpl(
      {required this.id,
      required this.email,
      @JsonKey(name: 'display_name') this.displayName,
      @JsonKey(name: 'photo_url') this.photoUrl,
      @JsonKey(name: 'created_at') required this.createdAt});

  factory _$UserNetworkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserNetworkModelImplFromJson(json);

  @override
  final String id;
  @override
  final String email;
  @override
  @JsonKey(name: 'display_name')
  final String? displayName;
  @override
  @JsonKey(name: 'photo_url')
  final String? photoUrl;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'UserNetworkModel(id: $id, email: $email, displayName: $displayName, photoUrl: $photoUrl, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNetworkModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, email, displayName, photoUrl, createdAt);

  /// Create a copy of UserNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNetworkModelImplCopyWith<_$UserNetworkModelImpl> get copyWith =>
      __$$UserNetworkModelImplCopyWithImpl<_$UserNetworkModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserNetworkModelImplToJson(
      this,
    );
  }
}

abstract class _UserNetworkModel implements UserNetworkModel {
  const factory _UserNetworkModel(
          {required final String id,
          required final String email,
          @JsonKey(name: 'display_name') final String? displayName,
          @JsonKey(name: 'photo_url') final String? photoUrl,
          @JsonKey(name: 'created_at') required final DateTime createdAt}) =
      _$UserNetworkModelImpl;

  factory _UserNetworkModel.fromJson(Map<String, dynamic> json) =
      _$UserNetworkModelImpl.fromJson;

  @override
  String get id;
  @override
  String get email;
  @override
  @JsonKey(name: 'display_name')
  String? get displayName;
  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Create a copy of UserNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserNetworkModelImplCopyWith<_$UserNetworkModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
