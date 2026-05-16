// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SessionSummary {
  String get sessionId => throw _privateConstructorUsedError;
  int get durationSeconds => throw _privateConstructorUsedError;
  int get totalSets => throw _privateConstructorUsedError;
  int get completedSets => throw _privateConstructorUsedError;
  int get skippedSets => throw _privateConstructorUsedError;
  double get estimatedCalories => throw _privateConstructorUsedError;
  double get performanceScore => throw _privateConstructorUsedError;

  /// Create a copy of SessionSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionSummaryCopyWith<SessionSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionSummaryCopyWith<$Res> {
  factory $SessionSummaryCopyWith(
          SessionSummary value, $Res Function(SessionSummary) then) =
      _$SessionSummaryCopyWithImpl<$Res, SessionSummary>;
  @useResult
  $Res call(
      {String sessionId,
      int durationSeconds,
      int totalSets,
      int completedSets,
      int skippedSets,
      double estimatedCalories,
      double performanceScore});
}

/// @nodoc
class _$SessionSummaryCopyWithImpl<$Res, $Val extends SessionSummary>
    implements $SessionSummaryCopyWith<$Res> {
  _$SessionSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SessionSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? durationSeconds = null,
    Object? totalSets = null,
    Object? completedSets = null,
    Object? skippedSets = null,
    Object? estimatedCalories = null,
    Object? performanceScore = null,
  }) {
    return _then(_value.copyWith(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      durationSeconds: null == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      totalSets: null == totalSets
          ? _value.totalSets
          : totalSets // ignore: cast_nullable_to_non_nullable
              as int,
      completedSets: null == completedSets
          ? _value.completedSets
          : completedSets // ignore: cast_nullable_to_non_nullable
              as int,
      skippedSets: null == skippedSets
          ? _value.skippedSets
          : skippedSets // ignore: cast_nullable_to_non_nullable
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
abstract class _$$SessionSummaryImplCopyWith<$Res>
    implements $SessionSummaryCopyWith<$Res> {
  factory _$$SessionSummaryImplCopyWith(_$SessionSummaryImpl value,
          $Res Function(_$SessionSummaryImpl) then) =
      __$$SessionSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sessionId,
      int durationSeconds,
      int totalSets,
      int completedSets,
      int skippedSets,
      double estimatedCalories,
      double performanceScore});
}

/// @nodoc
class __$$SessionSummaryImplCopyWithImpl<$Res>
    extends _$SessionSummaryCopyWithImpl<$Res, _$SessionSummaryImpl>
    implements _$$SessionSummaryImplCopyWith<$Res> {
  __$$SessionSummaryImplCopyWithImpl(
      _$SessionSummaryImpl _value, $Res Function(_$SessionSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SessionSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? durationSeconds = null,
    Object? totalSets = null,
    Object? completedSets = null,
    Object? skippedSets = null,
    Object? estimatedCalories = null,
    Object? performanceScore = null,
  }) {
    return _then(_$SessionSummaryImpl(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      durationSeconds: null == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int,
      totalSets: null == totalSets
          ? _value.totalSets
          : totalSets // ignore: cast_nullable_to_non_nullable
              as int,
      completedSets: null == completedSets
          ? _value.completedSets
          : completedSets // ignore: cast_nullable_to_non_nullable
              as int,
      skippedSets: null == skippedSets
          ? _value.skippedSets
          : skippedSets // ignore: cast_nullable_to_non_nullable
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

class _$SessionSummaryImpl extends _SessionSummary {
  const _$SessionSummaryImpl(
      {required this.sessionId,
      required this.durationSeconds,
      required this.totalSets,
      required this.completedSets,
      required this.skippedSets,
      required this.estimatedCalories,
      required this.performanceScore})
      : super._();

  @override
  final String sessionId;
  @override
  final int durationSeconds;
  @override
  final int totalSets;
  @override
  final int completedSets;
  @override
  final int skippedSets;
  @override
  final double estimatedCalories;
  @override
  final double performanceScore;

  @override
  String toString() {
    return 'SessionSummary(sessionId: $sessionId, durationSeconds: $durationSeconds, totalSets: $totalSets, completedSets: $completedSets, skippedSets: $skippedSets, estimatedCalories: $estimatedCalories, performanceScore: $performanceScore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionSummaryImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.totalSets, totalSets) ||
                other.totalSets == totalSets) &&
            (identical(other.completedSets, completedSets) ||
                other.completedSets == completedSets) &&
            (identical(other.skippedSets, skippedSets) ||
                other.skippedSets == skippedSets) &&
            (identical(other.estimatedCalories, estimatedCalories) ||
                other.estimatedCalories == estimatedCalories) &&
            (identical(other.performanceScore, performanceScore) ||
                other.performanceScore == performanceScore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      sessionId,
      durationSeconds,
      totalSets,
      completedSets,
      skippedSets,
      estimatedCalories,
      performanceScore);

  /// Create a copy of SessionSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionSummaryImplCopyWith<_$SessionSummaryImpl> get copyWith =>
      __$$SessionSummaryImplCopyWithImpl<_$SessionSummaryImpl>(
          this, _$identity);
}

abstract class _SessionSummary extends SessionSummary {
  const factory _SessionSummary(
      {required final String sessionId,
      required final int durationSeconds,
      required final int totalSets,
      required final int completedSets,
      required final int skippedSets,
      required final double estimatedCalories,
      required final double performanceScore}) = _$SessionSummaryImpl;
  const _SessionSummary._() : super._();

  @override
  String get sessionId;
  @override
  int get durationSeconds;
  @override
  int get totalSets;
  @override
  int get completedSets;
  @override
  int get skippedSets;
  @override
  double get estimatedCalories;
  @override
  double get performanceScore;

  /// Create a copy of SessionSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionSummaryImplCopyWith<_$SessionSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
