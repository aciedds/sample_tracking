// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_record_network_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SessionRecordNetworkModel _$SessionRecordNetworkModelFromJson(
    Map<String, dynamic> json) {
  return _SessionRecordNetworkModel.fromJson(json);
}

/// @nodoc
mixin _$SessionRecordNetworkModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'day_label')
  String get dayLabel => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_seconds')
  int get durationSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_sets')
  int get completedSets => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_sets')
  int get totalSets => throw _privateConstructorUsedError;
  @JsonKey(name: 'estimated_calories')
  double get estimatedCalories => throw _privateConstructorUsedError;
  @JsonKey(name: 'performance_score')
  double get performanceScore => throw _privateConstructorUsedError;

  /// Serializes this SessionRecordNetworkModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SessionRecordNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionRecordNetworkModelCopyWith<SessionRecordNetworkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionRecordNetworkModelCopyWith<$Res> {
  factory $SessionRecordNetworkModelCopyWith(SessionRecordNetworkModel value,
          $Res Function(SessionRecordNetworkModel) then) =
      _$SessionRecordNetworkModelCopyWithImpl<$Res, SessionRecordNetworkModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'day_label') String dayLabel,
      DateTime date,
      @JsonKey(name: 'duration_seconds') int durationSeconds,
      @JsonKey(name: 'completed_sets') int completedSets,
      @JsonKey(name: 'total_sets') int totalSets,
      @JsonKey(name: 'estimated_calories') double estimatedCalories,
      @JsonKey(name: 'performance_score') double performanceScore});
}

/// @nodoc
class _$SessionRecordNetworkModelCopyWithImpl<$Res,
        $Val extends SessionRecordNetworkModel>
    implements $SessionRecordNetworkModelCopyWith<$Res> {
  _$SessionRecordNetworkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionRecordNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? dayLabel = null,
    Object? date = null,
    Object? durationSeconds = null,
    Object? completedSets = null,
    Object? totalSets = null,
    Object? estimatedCalories = null,
    Object? performanceScore = null,
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
      dayLabel: null == dayLabel
          ? _value.dayLabel
          : dayLabel // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationSeconds: null == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      completedSets: null == completedSets
          ? _value.completedSets
          : completedSets // ignore: cast_nullable_to_non_nullable
              as int,
      totalSets: null == totalSets
          ? _value.totalSets
          : totalSets // ignore: cast_nullable_to_non_nullable
              as int,
      estimatedCalories: null == estimatedCalories
          ? _value.estimatedCalories
          : estimatedCalories // ignore: cast_nullable_to_non_nullable
              as double,
      performanceScore: null == performanceScore
          ? _value.performanceScore
          : performanceScore // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionRecordNetworkModelImplCopyWith<$Res>
    implements $SessionRecordNetworkModelCopyWith<$Res> {
  factory _$$SessionRecordNetworkModelImplCopyWith(
          _$SessionRecordNetworkModelImpl value,
          $Res Function(_$SessionRecordNetworkModelImpl) then) =
      __$$SessionRecordNetworkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'day_label') String dayLabel,
      DateTime date,
      @JsonKey(name: 'duration_seconds') int durationSeconds,
      @JsonKey(name: 'completed_sets') int completedSets,
      @JsonKey(name: 'total_sets') int totalSets,
      @JsonKey(name: 'estimated_calories') double estimatedCalories,
      @JsonKey(name: 'performance_score') double performanceScore});
}

/// @nodoc
class __$$SessionRecordNetworkModelImplCopyWithImpl<$Res>
    extends _$SessionRecordNetworkModelCopyWithImpl<$Res,
        _$SessionRecordNetworkModelImpl>
    implements _$$SessionRecordNetworkModelImplCopyWith<$Res> {
  __$$SessionRecordNetworkModelImplCopyWithImpl(
      _$SessionRecordNetworkModelImpl _value,
      $Res Function(_$SessionRecordNetworkModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionRecordNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? dayLabel = null,
    Object? date = null,
    Object? durationSeconds = null,
    Object? completedSets = null,
    Object? totalSets = null,
    Object? estimatedCalories = null,
    Object? performanceScore = null,
  }) {
    return _then(_$SessionRecordNetworkModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      dayLabel: null == dayLabel
          ? _value.dayLabel
          : dayLabel // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      durationSeconds: null == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      completedSets: null == completedSets
          ? _value.completedSets
          : completedSets // ignore: cast_nullable_to_non_nullable
              as int,
      totalSets: null == totalSets
          ? _value.totalSets
          : totalSets // ignore: cast_nullable_to_non_nullable
              as int,
      estimatedCalories: null == estimatedCalories
          ? _value.estimatedCalories
          : estimatedCalories // ignore: cast_nullable_to_non_nullable
              as double,
      performanceScore: null == performanceScore
          ? _value.performanceScore
          : performanceScore // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionRecordNetworkModelImpl implements _SessionRecordNetworkModel {
  const _$SessionRecordNetworkModelImpl(
      {required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'day_label') required this.dayLabel,
      required this.date,
      @JsonKey(name: 'duration_seconds') required this.durationSeconds,
      @JsonKey(name: 'completed_sets') required this.completedSets,
      @JsonKey(name: 'total_sets') required this.totalSets,
      @JsonKey(name: 'estimated_calories') required this.estimatedCalories,
      @JsonKey(name: 'performance_score') required this.performanceScore});

  factory _$SessionRecordNetworkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionRecordNetworkModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'day_label')
  final String dayLabel;
  @override
  final DateTime date;
  @override
  @JsonKey(name: 'duration_seconds')
  final int durationSeconds;
  @override
  @JsonKey(name: 'completed_sets')
  final int completedSets;
  @override
  @JsonKey(name: 'total_sets')
  final int totalSets;
  @override
  @JsonKey(name: 'estimated_calories')
  final double estimatedCalories;
  @override
  @JsonKey(name: 'performance_score')
  final double performanceScore;

  @override
  String toString() {
    return 'SessionRecordNetworkModel(id: $id, userId: $userId, dayLabel: $dayLabel, date: $date, durationSeconds: $durationSeconds, completedSets: $completedSets, totalSets: $totalSets, estimatedCalories: $estimatedCalories, performanceScore: $performanceScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionRecordNetworkModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.dayLabel, dayLabel) ||
                other.dayLabel == dayLabel) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.completedSets, completedSets) ||
                other.completedSets == completedSets) &&
            (identical(other.totalSets, totalSets) ||
                other.totalSets == totalSets) &&
            (identical(other.estimatedCalories, estimatedCalories) ||
                other.estimatedCalories == estimatedCalories) &&
            (identical(other.performanceScore, performanceScore) ||
                other.performanceScore == performanceScore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      dayLabel,
      date,
      durationSeconds,
      completedSets,
      totalSets,
      estimatedCalories,
      performanceScore);

  /// Create a copy of SessionRecordNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionRecordNetworkModelImplCopyWith<_$SessionRecordNetworkModelImpl>
      get copyWith => __$$SessionRecordNetworkModelImplCopyWithImpl<
          _$SessionRecordNetworkModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionRecordNetworkModelImplToJson(
      this,
    );
  }
}

abstract class _SessionRecordNetworkModel implements SessionRecordNetworkModel {
  const factory _SessionRecordNetworkModel(
          {required final String id,
          @JsonKey(name: 'user_id') required final String userId,
          @JsonKey(name: 'day_label') required final String dayLabel,
          required final DateTime date,
          @JsonKey(name: 'duration_seconds') required final int durationSeconds,
          @JsonKey(name: 'completed_sets') required final int completedSets,
          @JsonKey(name: 'total_sets') required final int totalSets,
          @JsonKey(name: 'estimated_calories')
          required final double estimatedCalories,
          @JsonKey(name: 'performance_score')
          required final double performanceScore}) =
      _$SessionRecordNetworkModelImpl;

  factory _SessionRecordNetworkModel.fromJson(Map<String, dynamic> json) =
      _$SessionRecordNetworkModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'day_label')
  String get dayLabel;
  @override
  DateTime get date;
  @override
  @JsonKey(name: 'duration_seconds')
  int get durationSeconds;
  @override
  @JsonKey(name: 'completed_sets')
  int get completedSets;
  @override
  @JsonKey(name: 'total_sets')
  int get totalSets;
  @override
  @JsonKey(name: 'estimated_calories')
  double get estimatedCalories;
  @override
  @JsonKey(name: 'performance_score')
  double get performanceScore;

  /// Create a copy of SessionRecordNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionRecordNetworkModelImplCopyWith<_$SessionRecordNetworkModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
