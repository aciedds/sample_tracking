// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workout_plan_network_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WorkoutDayNetworkModel _$WorkoutDayNetworkModelFromJson(
    Map<String, dynamic> json) {
  return _WorkoutDayNetworkModel.fromJson(json);
}

/// @nodoc
mixin _$WorkoutDayNetworkModel {
  @JsonKey(name: 'day_of_week')
  int get dayOfWeek => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'exercise_ids')
  List<String> get exerciseIds => throw _privateConstructorUsedError;

  /// Serializes this WorkoutDayNetworkModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutDayNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutDayNetworkModelCopyWith<WorkoutDayNetworkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutDayNetworkModelCopyWith<$Res> {
  factory $WorkoutDayNetworkModelCopyWith(WorkoutDayNetworkModel value,
          $Res Function(WorkoutDayNetworkModel) then) =
      _$WorkoutDayNetworkModelCopyWithImpl<$Res, WorkoutDayNetworkModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'day_of_week') int dayOfWeek,
      String label,
      @JsonKey(name: 'exercise_ids') List<String> exerciseIds});
}

/// @nodoc
class _$WorkoutDayNetworkModelCopyWithImpl<$Res,
        $Val extends WorkoutDayNetworkModel>
    implements $WorkoutDayNetworkModelCopyWith<$Res> {
  _$WorkoutDayNetworkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutDayNetworkModel
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
abstract class _$$WorkoutDayNetworkModelImplCopyWith<$Res>
    implements $WorkoutDayNetworkModelCopyWith<$Res> {
  factory _$$WorkoutDayNetworkModelImplCopyWith(
          _$WorkoutDayNetworkModelImpl value,
          $Res Function(_$WorkoutDayNetworkModelImpl) then) =
      __$$WorkoutDayNetworkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'day_of_week') int dayOfWeek,
      String label,
      @JsonKey(name: 'exercise_ids') List<String> exerciseIds});
}

/// @nodoc
class __$$WorkoutDayNetworkModelImplCopyWithImpl<$Res>
    extends _$WorkoutDayNetworkModelCopyWithImpl<$Res,
        _$WorkoutDayNetworkModelImpl>
    implements _$$WorkoutDayNetworkModelImplCopyWith<$Res> {
  __$$WorkoutDayNetworkModelImplCopyWithImpl(
      _$WorkoutDayNetworkModelImpl _value,
      $Res Function(_$WorkoutDayNetworkModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutDayNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayOfWeek = null,
    Object? label = null,
    Object? exerciseIds = null,
  }) {
    return _then(_$WorkoutDayNetworkModelImpl(
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
@JsonSerializable()
class _$WorkoutDayNetworkModelImpl implements _WorkoutDayNetworkModel {
  const _$WorkoutDayNetworkModelImpl(
      {@JsonKey(name: 'day_of_week') required this.dayOfWeek,
      required this.label,
      @JsonKey(name: 'exercise_ids') required final List<String> exerciseIds})
      : _exerciseIds = exerciseIds;

  factory _$WorkoutDayNetworkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutDayNetworkModelImplFromJson(json);

  @override
  @JsonKey(name: 'day_of_week')
  final int dayOfWeek;
  @override
  final String label;
  final List<String> _exerciseIds;
  @override
  @JsonKey(name: 'exercise_ids')
  List<String> get exerciseIds {
    if (_exerciseIds is EqualUnmodifiableListView) return _exerciseIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exerciseIds);
  }

  @override
  String toString() {
    return 'WorkoutDayNetworkModel(dayOfWeek: $dayOfWeek, label: $label, exerciseIds: $exerciseIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutDayNetworkModelImpl &&
            (identical(other.dayOfWeek, dayOfWeek) ||
                other.dayOfWeek == dayOfWeek) &&
            (identical(other.label, label) || other.label == label) &&
            const DeepCollectionEquality()
                .equals(other._exerciseIds, _exerciseIds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dayOfWeek, label,
      const DeepCollectionEquality().hash(_exerciseIds));

  /// Create a copy of WorkoutDayNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutDayNetworkModelImplCopyWith<_$WorkoutDayNetworkModelImpl>
      get copyWith => __$$WorkoutDayNetworkModelImplCopyWithImpl<
          _$WorkoutDayNetworkModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutDayNetworkModelImplToJson(
      this,
    );
  }
}

abstract class _WorkoutDayNetworkModel implements WorkoutDayNetworkModel {
  const factory _WorkoutDayNetworkModel(
      {@JsonKey(name: 'day_of_week') required final int dayOfWeek,
      required final String label,
      @JsonKey(name: 'exercise_ids')
      required final List<String> exerciseIds}) = _$WorkoutDayNetworkModelImpl;

  factory _WorkoutDayNetworkModel.fromJson(Map<String, dynamic> json) =
      _$WorkoutDayNetworkModelImpl.fromJson;

  @override
  @JsonKey(name: 'day_of_week')
  int get dayOfWeek;
  @override
  String get label;
  @override
  @JsonKey(name: 'exercise_ids')
  List<String> get exerciseIds;

  /// Create a copy of WorkoutDayNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutDayNetworkModelImplCopyWith<_$WorkoutDayNetworkModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WorkoutPlanNetworkModel _$WorkoutPlanNetworkModelFromJson(
    Map<String, dynamic> json) {
  return _WorkoutPlanNetworkModel.fromJson(json);
}

/// @nodoc
mixin _$WorkoutPlanNetworkModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<WorkoutDayNetworkModel> get days => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this WorkoutPlanNetworkModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WorkoutPlanNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WorkoutPlanNetworkModelCopyWith<WorkoutPlanNetworkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutPlanNetworkModelCopyWith<$Res> {
  factory $WorkoutPlanNetworkModelCopyWith(WorkoutPlanNetworkModel value,
          $Res Function(WorkoutPlanNetworkModel) then) =
      _$WorkoutPlanNetworkModelCopyWithImpl<$Res, WorkoutPlanNetworkModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      String name,
      List<WorkoutDayNetworkModel> days,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$WorkoutPlanNetworkModelCopyWithImpl<$Res,
        $Val extends WorkoutPlanNetworkModel>
    implements $WorkoutPlanNetworkModelCopyWith<$Res> {
  _$WorkoutPlanNetworkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WorkoutPlanNetworkModel
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
              as List<WorkoutDayNetworkModel>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkoutPlanNetworkModelImplCopyWith<$Res>
    implements $WorkoutPlanNetworkModelCopyWith<$Res> {
  factory _$$WorkoutPlanNetworkModelImplCopyWith(
          _$WorkoutPlanNetworkModelImpl value,
          $Res Function(_$WorkoutPlanNetworkModelImpl) then) =
      __$$WorkoutPlanNetworkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      String name,
      List<WorkoutDayNetworkModel> days,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$$WorkoutPlanNetworkModelImplCopyWithImpl<$Res>
    extends _$WorkoutPlanNetworkModelCopyWithImpl<$Res,
        _$WorkoutPlanNetworkModelImpl>
    implements _$$WorkoutPlanNetworkModelImplCopyWith<$Res> {
  __$$WorkoutPlanNetworkModelImplCopyWithImpl(
      _$WorkoutPlanNetworkModelImpl _value,
      $Res Function(_$WorkoutPlanNetworkModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of WorkoutPlanNetworkModel
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
    return _then(_$WorkoutPlanNetworkModelImpl(
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
              as List<WorkoutDayNetworkModel>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkoutPlanNetworkModelImpl implements _WorkoutPlanNetworkModel {
  const _$WorkoutPlanNetworkModelImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      required this.name,
      required final List<WorkoutDayNetworkModel> days,
      @JsonKey(name: 'created_at') required this.createdAt})
      : _days = days;

  factory _$WorkoutPlanNetworkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkoutPlanNetworkModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  final String name;
  final List<WorkoutDayNetworkModel> _days;
  @override
  List<WorkoutDayNetworkModel> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'WorkoutPlanNetworkModel(id: $id, userId: $userId, name: $name, days: $days, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkoutPlanNetworkModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, name,
      const DeepCollectionEquality().hash(_days), createdAt);

  /// Create a copy of WorkoutPlanNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkoutPlanNetworkModelImplCopyWith<_$WorkoutPlanNetworkModelImpl>
      get copyWith => __$$WorkoutPlanNetworkModelImplCopyWithImpl<
          _$WorkoutPlanNetworkModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkoutPlanNetworkModelImplToJson(
      this,
    );
  }
}

abstract class _WorkoutPlanNetworkModel implements WorkoutPlanNetworkModel {
  const factory _WorkoutPlanNetworkModel(
          {required final String id,
          @JsonKey(name: 'user_id') required final String userId,
          required final String name,
          required final List<WorkoutDayNetworkModel> days,
          @JsonKey(name: 'created_at') required final DateTime createdAt}) =
      _$WorkoutPlanNetworkModelImpl;

  factory _WorkoutPlanNetworkModel.fromJson(Map<String, dynamic> json) =
      _$WorkoutPlanNetworkModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  String get name;
  @override
  List<WorkoutDayNetworkModel> get days;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  /// Create a copy of WorkoutPlanNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WorkoutPlanNetworkModelImplCopyWith<_$WorkoutPlanNetworkModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
