// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_network_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SessionNetworkModel _$SessionNetworkModelFromJson(Map<String, dynamic> json) {
  return _SessionNetworkModel.fromJson(json);
}

/// @nodoc
mixin _$SessionNetworkModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'workout_plan_id')
  String get workoutPlanId => throw _privateConstructorUsedError;
  @JsonKey(name: 'day_label')
  String get dayLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'started_at')
  DateTime get startedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'finished_at')
  DateTime? get finishedAt => throw _privateConstructorUsedError;
  List<SetLogNetworkModel> get sets => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this SessionNetworkModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionNetworkModelCopyWith<SessionNetworkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionNetworkModelCopyWith<$Res> {
  factory $SessionNetworkModelCopyWith(
          SessionNetworkModel value, $Res Function(SessionNetworkModel) then) =
      _$SessionNetworkModelCopyWithImpl<$Res, SessionNetworkModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'workout_plan_id') String workoutPlanId,
      @JsonKey(name: 'day_label') String dayLabel,
      @JsonKey(name: 'started_at') DateTime startedAt,
      @JsonKey(name: 'finished_at') DateTime? finishedAt,
      List<SetLogNetworkModel> sets,
      String status});
}

/// @nodoc
class _$SessionNetworkModelCopyWithImpl<$Res, $Val extends SessionNetworkModel>
    implements $SessionNetworkModelCopyWith<$Res> {
  _$SessionNetworkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? workoutPlanId = null,
    Object? dayLabel = null,
    Object? startedAt = null,
    Object? finishedAt = freezed,
    Object? sets = null,
    Object? status = null,
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
      workoutPlanId: null == workoutPlanId
          ? _value.workoutPlanId
          : workoutPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      dayLabel: null == dayLabel
          ? _value.dayLabel
          : dayLabel // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishedAt: freezed == finishedAt
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<SetLogNetworkModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionNetworkModelImplCopyWith<$Res>
    implements $SessionNetworkModelCopyWith<$Res> {
  factory _$$SessionNetworkModelImplCopyWith(_$SessionNetworkModelImpl value,
          $Res Function(_$SessionNetworkModelImpl) then) =
      __$$SessionNetworkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'workout_plan_id') String workoutPlanId,
      @JsonKey(name: 'day_label') String dayLabel,
      @JsonKey(name: 'started_at') DateTime startedAt,
      @JsonKey(name: 'finished_at') DateTime? finishedAt,
      List<SetLogNetworkModel> sets,
      String status});
}

/// @nodoc
class __$$SessionNetworkModelImplCopyWithImpl<$Res>
    extends _$SessionNetworkModelCopyWithImpl<$Res, _$SessionNetworkModelImpl>
    implements _$$SessionNetworkModelImplCopyWith<$Res> {
  __$$SessionNetworkModelImplCopyWithImpl(_$SessionNetworkModelImpl _value,
      $Res Function(_$SessionNetworkModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? workoutPlanId = null,
    Object? dayLabel = null,
    Object? startedAt = null,
    Object? finishedAt = freezed,
    Object? sets = null,
    Object? status = null,
  }) {
    return _then(_$SessionNetworkModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      workoutPlanId: null == workoutPlanId
          ? _value.workoutPlanId
          : workoutPlanId // ignore: cast_nullable_to_non_nullable
              as String,
      dayLabel: null == dayLabel
          ? _value.dayLabel
          : dayLabel // ignore: cast_nullable_to_non_nullable
              as String,
      startedAt: null == startedAt
          ? _value.startedAt
          : startedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      finishedAt: freezed == finishedAt
          ? _value.finishedAt
          : finishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sets: null == sets
          ? _value._sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<SetLogNetworkModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionNetworkModelImpl implements _SessionNetworkModel {
  const _$SessionNetworkModelImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'workout_plan_id') required this.workoutPlanId,
      @JsonKey(name: 'day_label') required this.dayLabel,
      @JsonKey(name: 'started_at') required this.startedAt,
      @JsonKey(name: 'finished_at') this.finishedAt,
      required final List<SetLogNetworkModel> sets,
      this.status = 'idle'})
      : _sets = sets;

  factory _$SessionNetworkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionNetworkModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'workout_plan_id')
  final String workoutPlanId;
  @override
  @JsonKey(name: 'day_label')
  final String dayLabel;
  @override
  @JsonKey(name: 'started_at')
  final DateTime startedAt;
  @override
  @JsonKey(name: 'finished_at')
  final DateTime? finishedAt;
  final List<SetLogNetworkModel> _sets;
  @override
  List<SetLogNetworkModel> get sets {
    if (_sets is EqualUnmodifiableListView) return _sets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sets);
  }

  @override
  @JsonKey()
  final String status;

  @override
  String toString() {
    return 'SessionNetworkModel(id: $id, userId: $userId, workoutPlanId: $workoutPlanId, dayLabel: $dayLabel, startedAt: $startedAt, finishedAt: $finishedAt, sets: $sets, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionNetworkModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.workoutPlanId, workoutPlanId) ||
                other.workoutPlanId == workoutPlanId) &&
            (identical(other.dayLabel, dayLabel) ||
                other.dayLabel == dayLabel) &&
            (identical(other.startedAt, startedAt) ||
                other.startedAt == startedAt) &&
            (identical(other.finishedAt, finishedAt) ||
                other.finishedAt == finishedAt) &&
            const DeepCollectionEquality().equals(other._sets, _sets) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      workoutPlanId,
      dayLabel,
      startedAt,
      finishedAt,
      const DeepCollectionEquality().hash(_sets),
      status);

  /// Create a copy of SessionNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionNetworkModelImplCopyWith<_$SessionNetworkModelImpl> get copyWith =>
      __$$SessionNetworkModelImplCopyWithImpl<_$SessionNetworkModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionNetworkModelImplToJson(
      this,
    );
  }
}

abstract class _SessionNetworkModel implements SessionNetworkModel {
  const factory _SessionNetworkModel(
      {required final String id,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'workout_plan_id') required final String workoutPlanId,
      @JsonKey(name: 'day_label') required final String dayLabel,
      @JsonKey(name: 'started_at') required final DateTime startedAt,
      @JsonKey(name: 'finished_at') final DateTime? finishedAt,
      required final List<SetLogNetworkModel> sets,
      final String status}) = _$SessionNetworkModelImpl;

  factory _SessionNetworkModel.fromJson(Map<String, dynamic> json) =
      _$SessionNetworkModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'workout_plan_id')
  String get workoutPlanId;
  @override
  @JsonKey(name: 'day_label')
  String get dayLabel;
  @override
  @JsonKey(name: 'started_at')
  DateTime get startedAt;
  @override
  @JsonKey(name: 'finished_at')
  DateTime? get finishedAt;
  @override
  List<SetLogNetworkModel> get sets;
  @override
  String get status;

  /// Create a copy of SessionNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionNetworkModelImplCopyWith<_$SessionNetworkModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
