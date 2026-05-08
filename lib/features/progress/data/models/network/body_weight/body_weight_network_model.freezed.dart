// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_weight_network_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BodyWeightNetworkModel _$BodyWeightNetworkModelFromJson(
    Map<String, dynamic> json) {
  return _BodyWeightNetworkModel.fromJson(json);
}

/// @nodoc
mixin _$BodyWeightNetworkModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight_kg')
  double get weightKg => throw _privateConstructorUsedError;
  double get bmi => throw _privateConstructorUsedError;
  @JsonKey(name: 'recorded_at')
  DateTime get recordedAt => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  /// Serializes this BodyWeightNetworkModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyWeightNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyWeightNetworkModelCopyWith<BodyWeightNetworkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyWeightNetworkModelCopyWith<$Res> {
  factory $BodyWeightNetworkModelCopyWith(BodyWeightNetworkModel value,
          $Res Function(BodyWeightNetworkModel) then) =
      _$BodyWeightNetworkModelCopyWithImpl<$Res, BodyWeightNetworkModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'weight_kg') double weightKg,
      double bmi,
      @JsonKey(name: 'recorded_at') DateTime recordedAt,
      String? note});
}

/// @nodoc
class _$BodyWeightNetworkModelCopyWithImpl<$Res,
        $Val extends BodyWeightNetworkModel>
    implements $BodyWeightNetworkModelCopyWith<$Res> {
  _$BodyWeightNetworkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyWeightNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? weightKg = null,
    Object? bmi = null,
    Object? recordedAt = null,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      weightKg: null == weightKg
          ? _value.weightKg
          : weightKg // ignore: cast_nullable_to_non_nullable
              as double,
      bmi: null == bmi
          ? _value.bmi
          : bmi // ignore: cast_nullable_to_non_nullable
              as double,
      recordedAt: null == recordedAt
          ? _value.recordedAt
          : recordedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyWeightNetworkModelImplCopyWith<$Res>
    implements $BodyWeightNetworkModelCopyWith<$Res> {
  factory _$$BodyWeightNetworkModelImplCopyWith(
          _$BodyWeightNetworkModelImpl value,
          $Res Function(_$BodyWeightNetworkModelImpl) then) =
      __$$BodyWeightNetworkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'weight_kg') double weightKg,
      double bmi,
      @JsonKey(name: 'recorded_at') DateTime recordedAt,
      String? note});
}

/// @nodoc
class __$$BodyWeightNetworkModelImplCopyWithImpl<$Res>
    extends _$BodyWeightNetworkModelCopyWithImpl<$Res,
        _$BodyWeightNetworkModelImpl>
    implements _$$BodyWeightNetworkModelImplCopyWith<$Res> {
  __$$BodyWeightNetworkModelImplCopyWithImpl(
      _$BodyWeightNetworkModelImpl _value,
      $Res Function(_$BodyWeightNetworkModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyWeightNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? weightKg = null,
    Object? bmi = null,
    Object? recordedAt = null,
    Object? note = freezed,
  }) {
    return _then(_$BodyWeightNetworkModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      weightKg: null == weightKg
          ? _value.weightKg
          : weightKg // ignore: cast_nullable_to_non_nullable
              as double,
      bmi: null == bmi
          ? _value.bmi
          : bmi // ignore: cast_nullable_to_non_nullable
              as double,
      recordedAt: null == recordedAt
          ? _value.recordedAt
          : recordedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyWeightNetworkModelImpl implements _BodyWeightNetworkModel {
  const _$BodyWeightNetworkModelImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'weight_kg') required this.weightKg,
      required this.bmi,
      @JsonKey(name: 'recorded_at') required this.recordedAt,
      this.note});

  factory _$BodyWeightNetworkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyWeightNetworkModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'weight_kg')
  final double weightKg;
  @override
  final double bmi;
  @override
  @JsonKey(name: 'recorded_at')
  final DateTime recordedAt;
  @override
  final String? note;

  @override
  String toString() {
    return 'BodyWeightNetworkModel(id: $id, userId: $userId, weightKg: $weightKg, bmi: $bmi, recordedAt: $recordedAt, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyWeightNetworkModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.weightKg, weightKg) ||
                other.weightKg == weightKg) &&
            (identical(other.bmi, bmi) || other.bmi == bmi) &&
            (identical(other.recordedAt, recordedAt) ||
                other.recordedAt == recordedAt) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, userId, weightKg, bmi, recordedAt, note);

  /// Create a copy of BodyWeightNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyWeightNetworkModelImplCopyWith<_$BodyWeightNetworkModelImpl>
      get copyWith => __$$BodyWeightNetworkModelImplCopyWithImpl<
          _$BodyWeightNetworkModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyWeightNetworkModelImplToJson(
      this,
    );
  }
}

abstract class _BodyWeightNetworkModel implements BodyWeightNetworkModel {
  const factory _BodyWeightNetworkModel(
      {required final String id,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'weight_kg') required final double weightKg,
      required final double bmi,
      @JsonKey(name: 'recorded_at') required final DateTime recordedAt,
      final String? note}) = _$BodyWeightNetworkModelImpl;

  factory _BodyWeightNetworkModel.fromJson(Map<String, dynamic> json) =
      _$BodyWeightNetworkModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'weight_kg')
  double get weightKg;
  @override
  double get bmi;
  @override
  @JsonKey(name: 'recorded_at')
  DateTime get recordedAt;
  @override
  String? get note;

  /// Create a copy of BodyWeightNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyWeightNetworkModelImplCopyWith<_$BodyWeightNetworkModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
