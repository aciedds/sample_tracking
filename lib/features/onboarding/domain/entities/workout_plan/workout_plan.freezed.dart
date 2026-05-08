// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_plan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WorkoutDay {
  int get dayOfWeek => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  List<String> get exerciseIds => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutDayCopyWith<WorkoutDay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutDayCopyWith<$Res> {
  factory $WorkoutDayCopyWith(
          WorkoutDay value, $Res Function(WorkoutDay) then) =
      _$WorkoutDayCopyWithImpl<$Res, WorkoutDay>;
  @useResult
  $Res call({int dayOfWeek, String label, List<String> exerciseIds});
}

/// @nodoc
class _$WorkoutDayCopyWithImpl<$Res, $Val extends WorkoutDay>
    implements $WorkoutDayCopyWith<$Res> {
  _$WorkoutDayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOfWeek = null,
    Object? label = null,
    Object? exerciseIds = null,
  }) {
    return _then(_value.copyWith(
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseIds: null == exerciseIds
          ? _value.exerciseIds
          : exerciseIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutDayImplCopyWith<$Res>
    implements $WorkoutDayCopyWith<$Res> {
  factory _$$WorkoutDayImplCopyWith(
          _$WorkoutDayImpl value, $Res Function(_$WorkoutDayImpl) then) =
      __$$WorkoutDayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int dayOfWeek, String label, List<String> exerciseIds});
}

/// @nodoc
class __$$WorkoutDayImplCopyWithImpl<$Res>
    extends _$WorkoutDayCopyWithImpl<$Res, _$WorkoutDayImpl>
    implements _$$WorkoutDayImplCopyWith<$Res> {
  __$$WorkoutDayImplCopyWithImpl(
      _$WorkoutDayImpl _value, $Res Function(_$WorkoutDayImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutDay
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOfWeek = null,
    Object? label = null,
    Object? exerciseIds = null,
  }) {
    return _then(_$WorkoutDayImpl(
      dayOfWeek: null == dayOfWeek
          ? _value.dayOfWeek
          : dayOfWeek // ignore: cast_nullable_to_non_nullable
              as int,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseIds: null == exerciseIds
          ? _value._exerciseIds
          : exerciseIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$WorkoutDayImpl implements _WorkoutDay {
  const _$WorkoutDayImpl(
      {required this.dayOfWeek,
      required this.label,
      required final List<String> exerciseIds})
      : _exerciseIds = exerciseIds;

  @override
  final int dayOfWeek;
  @override
  final String label;
  final List<String> _exerciseIds;
  @override
  List<String> get exerciseIds {
    if (_exerciseIds is EqualUnmodifiableListView) return _exerciseIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exerciseIds);
  }

  @override
  String toString() {
    return 'WorkoutDay(dayOfWeek: $dayOfWeek, label: $label, exerciseIds: $exerciseIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutDayImpl &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality()
                .equals(other._exerciseIds, _exerciseIds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dayOfWeek, label,
      const DeepCollectionEquality().hash(_exerciseIds));

  /// Create a copy of WorkoutDay
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutDayImplCopyWith<_$WorkoutDayImpl> get copyWith =>
      __$$WorkoutDayImplCopyWithImpl<_$WorkoutDayImpl>(this, _$identity);
}

abstract class _WorkoutDay implements WorkoutDay {
  const factory _WorkoutDay(
      {required final int dayOfWeek,
      required final String label,
      required final List<String> exerciseIds}) = _$WorkoutDayImpl;

  @override
  int get dayOfWeek;
  @override
  String get label;
  @override
  List<String> get exerciseIds;

  /// Create a copy of WorkoutDay
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutDayImplCopyWith<_$WorkoutDayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WorkoutPlan {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<WorkoutDay> get days => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutPlanCopyWith<WorkoutPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutPlanCopyWith<$Res> {
  factory $WorkoutPlanCopyWith(
          WorkoutPlan value, $Res Function(WorkoutPlan) then) =
      _$WorkoutPlanCopyWithImpl<$Res, WorkoutPlan>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String name,
      List<WorkoutDay> days,
      DateTime createdAt});
}

/// @nodoc
class _$WorkoutPlanCopyWithImpl<$Res, $Val extends WorkoutPlan>
    implements $WorkoutPlanCopyWith<$Res> {
  _$WorkoutPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? days = null,
    Object? createdAt = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<WorkoutDay>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutPlanImplCopyWith<$Res>
    implements $WorkoutPlanCopyWith<$Res> {
  factory _$$WorkoutPlanImplCopyWith(
          _$WorkoutPlanImpl value, $Res Function(_$WorkoutPlanImpl) then) =
      __$$WorkoutPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String name,
      List<WorkoutDay> days,
      DateTime createdAt});
}

/// @nodoc
class __$$WorkoutPlanImplCopyWithImpl<$Res>
    extends _$WorkoutPlanCopyWithImpl<$Res, _$WorkoutPlanImpl>
    implements _$$WorkoutPlanImplCopyWith<$Res> {
  __$$WorkoutPlanImplCopyWithImpl(
      _$WorkoutPlanImpl _value, $Res Function(_$WorkoutPlanImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? name = null,
    Object? days = null,
    Object? createdAt = null,
  }) {
    return _then(_$WorkoutPlanImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<WorkoutDay>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$WorkoutPlanImpl implements _WorkoutPlan {
  const _$WorkoutPlanImpl(
      {required this.id,
      required this.userId,
      required this.name,
      required final List<WorkoutDay> days,
      required this.createdAt})
      : _days = days;

  @override
  final String id;
  @override
  final String userId;
  @override
  final String name;
  final List<WorkoutDay> _days;
  @override
  List<WorkoutDay> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'WorkoutPlan(id: $id, userId: $userId, name: $name, days: $days, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutPlanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, name,
      const DeepCollectionEquality().hash(_days), createdAt);

  /// Create a copy of WorkoutPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutPlanImplCopyWith<_$WorkoutPlanImpl> get copyWith =>
      __$$WorkoutPlanImplCopyWithImpl<_$WorkoutPlanImpl>(this, _$identity);
}

abstract class _WorkoutPlan implements WorkoutPlan {
  const factory _WorkoutPlan(
      {required final String id,
      required final String userId,
      required final String name,
      required final List<WorkoutDay> days,
      required final DateTime createdAt}) = _$WorkoutPlanImpl;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get name;
  @override
  List<WorkoutDay> get days;
  @override
  DateTime get createdAt;

  /// Create a copy of WorkoutPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutPlanImplCopyWith<_$WorkoutPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
