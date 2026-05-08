// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_day_network_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScheduleDayNetworkModel _$ScheduleDayNetworkModelFromJson(
    Map<String, dynamic> json) {
  return _ScheduleDayNetworkModel.fromJson(json);
}

/// @nodoc
mixin _$ScheduleDayNetworkModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'day_of_week')
  int get dayOfWeek => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'workout_plan_day_label')
  String? get workoutPlanDayLabel => throw _privateConstructorUsedError;
  @JsonKey(name: 'session_id')
  String? get sessionId => throw _privateConstructorUsedError;

  /// Serializes this ScheduleDayNetworkModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ScheduleDayNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ScheduleDayNetworkModelCopyWith<ScheduleDayNetworkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDayNetworkModelCopyWith<$Res> {
  factory $ScheduleDayNetworkModelCopyWith(ScheduleDayNetworkModel value,
          $Res Function(ScheduleDayNetworkModel) then) =
      _$ScheduleDayNetworkModelCopyWithImpl<$Res, ScheduleDayNetworkModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      DateTime date,
      @JsonKey(name: 'day_of_week') int dayOfWeek,
      String status,
      @JsonKey(name: 'workout_plan_day_label') String? workoutPlanDayLabel,
      @JsonKey(name: 'session_id') String? sessionId});
}

/// @nodoc
class _$ScheduleDayNetworkModelCopyWithImpl<$Res,
        $Val extends ScheduleDayNetworkModel>
    implements $ScheduleDayNetworkModelCopyWith<$Res> {
  _$ScheduleDayNetworkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ScheduleDayNetworkModel
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
              as String,
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
abstract class _$$ScheduleDayNetworkModelImplCopyWith<$Res>
    implements $ScheduleDayNetworkModelCopyWith<$Res> {
  factory _$$ScheduleDayNetworkModelImplCopyWith(
          _$ScheduleDayNetworkModelImpl value,
          $Res Function(_$ScheduleDayNetworkModelImpl) then) =
      __$$ScheduleDayNetworkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      DateTime date,
      @JsonKey(name: 'day_of_week') int dayOfWeek,
      String status,
      @JsonKey(name: 'workout_plan_day_label') String? workoutPlanDayLabel,
      @JsonKey(name: 'session_id') String? sessionId});
}

/// @nodoc
class __$$ScheduleDayNetworkModelImplCopyWithImpl<$Res>
    extends _$ScheduleDayNetworkModelCopyWithImpl<$Res,
        _$ScheduleDayNetworkModelImpl>
    implements _$$ScheduleDayNetworkModelImplCopyWith<$Res> {
  __$$ScheduleDayNetworkModelImplCopyWithImpl(
      _$ScheduleDayNetworkModelImpl _value,
      $Res Function(_$ScheduleDayNetworkModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ScheduleDayNetworkModel
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
    return _then(_$ScheduleDayNetworkModelImpl(
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
              as String,
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
@JsonSerializable()
class _$ScheduleDayNetworkModelImpl implements _ScheduleDayNetworkModel {
  const _$ScheduleDayNetworkModelImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      required this.date,
      @JsonKey(name: 'day_of_week') required this.dayOfWeek,
      required this.status,
      @JsonKey(name: 'workout_plan_day_label') this.workoutPlanDayLabel,
      @JsonKey(name: 'session_id') this.sessionId});

  factory _$ScheduleDayNetworkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScheduleDayNetworkModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  final DateTime date;
  @override
  @JsonKey(name: 'day_of_week')
  final int dayOfWeek;
  @override
  final String status;
  @override
  @JsonKey(name: 'workout_plan_day_label')
  final String? workoutPlanDayLabel;
  @override
  @JsonKey(name: 'session_id')
  final String? sessionId;

  @override
  String toString() {
    return 'ScheduleDayNetworkModel(id: $id, userId: $userId, date: $date, dayOfWeek: $dayOfWeek, status: $status, workoutPlanDayLabel: $workoutPlanDayLabel, sessionId: $sessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduleDayNetworkModelImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, date, dayOfWeek,
      status, workoutPlanDayLabel, sessionId);

  /// Create a copy of ScheduleDayNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScheduleDayNetworkModelImplCopyWith<_$ScheduleDayNetworkModelImpl>
      get copyWith => __$$ScheduleDayNetworkModelImplCopyWithImpl<
          _$ScheduleDayNetworkModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScheduleDayNetworkModelImplToJson(
      this,
    );
  }
}

abstract class _ScheduleDayNetworkModel implements ScheduleDayNetworkModel {
  const factory _ScheduleDayNetworkModel(
          {required final String id,
          @JsonKey(name: 'user_id') required final String userId,
          required final DateTime date,
          @JsonKey(name: 'day_of_week') required final int dayOfWeek,
          required final String status,
          @JsonKey(name: 'workout_plan_day_label')
          final String? workoutPlanDayLabel,
          @JsonKey(name: 'session_id') final String? sessionId}) =
      _$ScheduleDayNetworkModelImpl;

  factory _ScheduleDayNetworkModel.fromJson(Map<String, dynamic> json) =
      _$ScheduleDayNetworkModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  DateTime get date;
  @override
  @JsonKey(name: 'day_of_week')
  int get dayOfWeek;
  @override
  String get status;
  @override
  @JsonKey(name: 'workout_plan_day_label')
  String? get workoutPlanDayLabel;
  @override
  @JsonKey(name: 'session_id')
  String? get sessionId;

  /// Create a copy of ScheduleDayNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScheduleDayNetworkModelImplCopyWith<_$ScheduleDayNetworkModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
