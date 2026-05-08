// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_day.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduleDay {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  int get dayOfWeek => throw _privateConstructorUsedError;
  ScheduleDayStatus get status => throw _privateConstructorUsedError;
  String? get workoutPlanDayLabel => throw _privateConstructorUsedError;
  String? get sessionId => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleDayCopyWith<ScheduleDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDayCopyWith<$Res> {
  factory $ScheduleDayCopyWith(
          ScheduleDay value, $Res Function(ScheduleDay) then) =
      _$ScheduleDayCopyWithImpl<$Res, ScheduleDay>;
  @useResult
  $Res call(
      {String id,
      String userId,
      DateTime date,
      int dayOfWeek,
      ScheduleDayStatus status,
      String? workoutPlanDayLabel,
      String? sessionId});
}

/// @nodoc
class _$ScheduleDayCopyWithImpl<$Res, $Val extends ScheduleDay>
    implements $ScheduleDayCopyWith<$Res> {
  _$ScheduleDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? date = null,
    Object? dayOfWeek = null,
    Object? status = null,
    Object? workoutPlanDayLabel = freezed,
    Object? sessionId = freezed,
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScheduleDayStatus,
      workoutPlanDayLabel: freezed == workoutPlanDayLabel
          ? _value.workoutPlanDayLabel
          : workoutPlanDayLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScheduleDayImplCopyWith<$Res>
    implements $ScheduleDayCopyWith<$Res> {
  factory _$$ScheduleDayImplCopyWith(
          _$ScheduleDayImpl value, $Res Function(_$ScheduleDayImpl) then) =
      __$$ScheduleDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      DateTime date,
      int dayOfWeek,
      ScheduleDayStatus status,
      String? workoutPlanDayLabel,
      String? sessionId});
}

/// @nodoc
class __$$ScheduleDayImplCopyWithImpl<$Res>
    extends _$ScheduleDayCopyWithImpl<$Res, _$ScheduleDayImpl>
    implements _$$ScheduleDayImplCopyWith<$Res> {
  __$$ScheduleDayImplCopyWithImpl(
      _$ScheduleDayImpl _value, $Res Function(_$ScheduleDayImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? date = null,
    Object? dayOfWeek = null,
    Object? status = null,
    Object? workoutPlanDayLabel = freezed,
    Object? sessionId = freezed,
  }) {
    return _then(_$ScheduleDayImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ScheduleDayStatus,
      workoutPlanDayLabel: freezed == workoutPlanDayLabel
          ? _value.workoutPlanDayLabel
          : workoutPlanDayLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ScheduleDayImpl implements _ScheduleDay {
  const _$ScheduleDayImpl(
      {required this.id,
      required this.userId,
      required this.date,
      required this.dayOfWeek,
      required this.status,
      this.workoutPlanDayLabel,
      this.sessionId});

  @override
  final String id;
  @override
  final String userId;
  @override
  final DateTime date;
  @override
  final int dayOfWeek;
  @override
  final ScheduleDayStatus status;
  @override
  final String? workoutPlanDayLabel;
  @override
  final String? sessionId;

  @override
  String toString() {
    return 'ScheduleDay(id: $id, userId: $userId, date: $date, dayOfWeek: $dayOfWeek, status: $status, workoutPlanDayLabel: $workoutPlanDayLabel, sessionId: $sessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleDayImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.workoutPlanDayLabel, workoutPlanDayLabel) ||
                other.workoutPlanDayLabel == workoutPlanDayLabel) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, date, dayOfWeek,
      status, workoutPlanDayLabel, sessionId);

  /// Create a copy of ScheduleDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleDayImplCopyWith<_$ScheduleDayImpl> get copyWith =>
      __$$ScheduleDayImplCopyWithImpl<_$ScheduleDayImpl>(this, _$identity);
}

abstract class _ScheduleDay implements ScheduleDay {
  const factory _ScheduleDay(
      {required final String id,
      required final String userId,
      required final DateTime date,
      required final int dayOfWeek,
      required final ScheduleDayStatus status,
      final String? workoutPlanDayLabel,
      final String? sessionId}) = _$ScheduleDayImpl;

  @override
  String get id;
  @override
  String get userId;
  @override
  DateTime get date;
  @override
  int get dayOfWeek;
  @override
  ScheduleDayStatus get status;
  @override
  String? get workoutPlanDayLabel;
  @override
  String? get sessionId;

  /// Create a copy of ScheduleDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleDayImplCopyWith<_$ScheduleDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
