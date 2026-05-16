// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'set_log_network_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SetLogNetworkModel _$SetLogNetworkModelFromJson(Map<String, dynamic> json) {
  return _SetLogNetworkModel.fromJson(json);
}

/// @nodoc
mixin _$SetLogNetworkModel {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'exercise_id')
  String get exerciseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'exercise_name')
  String get exerciseName => throw _privateConstructorUsedError;
  @JsonKey(name: 'set_number')
  int get setNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_reps')
  int get targetReps => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_reps')
  int? get completedReps => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight_kg')
  double? get weightKg => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_seconds')
  int? get durationSeconds => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_completed')
  bool get isCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_skipped')
  bool get isSkipped => throw _privateConstructorUsedError;

  /// Serializes this SetLogNetworkModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SetLogNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetLogNetworkModelCopyWith<SetLogNetworkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetLogNetworkModelCopyWith<$Res> {
  factory $SetLogNetworkModelCopyWith(
          SetLogNetworkModel value, $Res Function(SetLogNetworkModel) then) =
      _$SetLogNetworkModelCopyWithImpl<$Res, SetLogNetworkModel>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'exercise_id') String exerciseId,
      @JsonKey(name: 'exercise_name') String exerciseName,
      @JsonKey(name: 'set_number') int setNumber,
      @JsonKey(name: 'target_reps') int targetReps,
      @JsonKey(name: 'completed_reps') int? completedReps,
      @JsonKey(name: 'weight_kg') double? weightKg,
      @JsonKey(name: 'duration_seconds') int? durationSeconds,
      @JsonKey(name: 'is_completed') bool isCompleted,
      @JsonKey(name: 'is_skipped') bool isSkipped});
}

/// @nodoc
class _$SetLogNetworkModelCopyWithImpl<$Res, $Val extends SetLogNetworkModel>
    implements $SetLogNetworkModelCopyWith<$Res> {
  _$SetLogNetworkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetLogNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? exerciseId = null,
    Object? exerciseName = null,
    Object? setNumber = null,
    Object? targetReps = null,
    Object? completedReps = freezed,
    Object? weightKg = freezed,
    Object? durationSeconds = freezed,
    Object? isCompleted = null,
    Object? isSkipped = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseName: null == exerciseName
          ? _value.exerciseName
          : exerciseName // ignore: cast_nullable_to_non_nullable
              as String,
      setNumber: null == setNumber
          ? _value.setNumber
          : setNumber // ignore: cast_nullable_to_non_nullable
              as int,
      targetReps: null == targetReps
          ? _value.targetReps
          : targetReps // ignore: cast_nullable_to_non_nullable
              as int,
      completedReps: freezed == completedReps
          ? _value.completedReps
          : completedReps // ignore: cast_nullable_to_non_nullable
              as int?,
      weightKg: freezed == weightKg
          ? _value.weightKg
          : weightKg // ignore: cast_nullable_to_non_nullable
              as double?,
      durationSeconds: freezed == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isSkipped: null == isSkipped
          ? _value.isSkipped
          : isSkipped // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetLogNetworkModelImplCopyWith<$Res>
    implements $SetLogNetworkModelCopyWith<$Res> {
  factory _$$SetLogNetworkModelImplCopyWith(_$SetLogNetworkModelImpl value,
          $Res Function(_$SetLogNetworkModelImpl) then) =
      __$$SetLogNetworkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(name: 'exercise_id') String exerciseId,
      @JsonKey(name: 'exercise_name') String exerciseName,
      @JsonKey(name: 'set_number') int setNumber,
      @JsonKey(name: 'target_reps') int targetReps,
      @JsonKey(name: 'completed_reps') int? completedReps,
      @JsonKey(name: 'weight_kg') double? weightKg,
      @JsonKey(name: 'duration_seconds') int? durationSeconds,
      @JsonKey(name: 'is_completed') bool isCompleted,
      @JsonKey(name: 'is_skipped') bool isSkipped});
}

/// @nodoc
class __$$SetLogNetworkModelImplCopyWithImpl<$Res>
    extends _$SetLogNetworkModelCopyWithImpl<$Res, _$SetLogNetworkModelImpl>
    implements _$$SetLogNetworkModelImplCopyWith<$Res> {
  __$$SetLogNetworkModelImplCopyWithImpl(_$SetLogNetworkModelImpl _value,
      $Res Function(_$SetLogNetworkModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetLogNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? exerciseId = null,
    Object? exerciseName = null,
    Object? setNumber = null,
    Object? targetReps = null,
    Object? completedReps = freezed,
    Object? weightKg = freezed,
    Object? durationSeconds = freezed,
    Object? isCompleted = null,
    Object? isSkipped = null,
  }) {
    return _then(_$SetLogNetworkModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseId: null == exerciseId
          ? _value.exerciseId
          : exerciseId // ignore: cast_nullable_to_non_nullable
              as String,
      exerciseName: null == exerciseName
          ? _value.exerciseName
          : exerciseName // ignore: cast_nullable_to_non_nullable
              as String,
      setNumber: null == setNumber
          ? _value.setNumber
          : setNumber // ignore: cast_nullable_to_non_nullable
              as int,
      targetReps: null == targetReps
          ? _value.targetReps
          : targetReps // ignore: cast_nullable_to_non_nullable
              as int,
      completedReps: freezed == completedReps
          ? _value.completedReps
          : completedReps // ignore: cast_nullable_to_non_nullable
              as int?,
      weightKg: freezed == weightKg
          ? _value.weightKg
          : weightKg // ignore: cast_nullable_to_non_nullable
              as double?,
      durationSeconds: freezed == durationSeconds
          ? _value.durationSeconds
          : durationSeconds // ignore: cast_nullable_to_non_nullable
              as int?,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isSkipped: null == isSkipped
          ? _value.isSkipped
          : isSkipped // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SetLogNetworkModelImpl implements _SetLogNetworkModel {
  const _$SetLogNetworkModelImpl(
      {required this.id,
      @JsonKey(name: 'exercise_id') required this.exerciseId,
      @JsonKey(name: 'exercise_name') required this.exerciseName,
      @JsonKey(name: 'set_number') required this.setNumber,
      @JsonKey(name: 'target_reps') required this.targetReps,
      @JsonKey(name: 'completed_reps') this.completedReps,
      @JsonKey(name: 'weight_kg') this.weightKg,
      @JsonKey(name: 'duration_seconds') this.durationSeconds,
      @JsonKey(name: 'is_completed') this.isCompleted = false,
      @JsonKey(name: 'is_skipped') this.isSkipped = false});

  factory _$SetLogNetworkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SetLogNetworkModelImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'exercise_id')
  final String exerciseId;
  @override
  @JsonKey(name: 'exercise_name')
  final String exerciseName;
  @override
  @JsonKey(name: 'set_number')
  final int setNumber;
  @override
  @JsonKey(name: 'target_reps')
  final int targetReps;
  @override
  @JsonKey(name: 'completed_reps')
  final int? completedReps;
  @override
  @JsonKey(name: 'weight_kg')
  final double? weightKg;
  @override
  @JsonKey(name: 'duration_seconds')
  final int? durationSeconds;
  @override
  @JsonKey(name: 'is_completed')
  final bool isCompleted;
  @override
  @JsonKey(name: 'is_skipped')
  final bool isSkipped;

  @override
  String toString() {
    return 'SetLogNetworkModel(id: $id, exerciseId: $exerciseId, exerciseName: $exerciseName, setNumber: $setNumber, targetReps: $targetReps, completedReps: $completedReps, weightKg: $weightKg, durationSeconds: $durationSeconds, isCompleted: $isCompleted, isSkipped: $isSkipped)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetLogNetworkModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.exerciseId, exerciseId) ||
                other.exerciseId == exerciseId) &&
            (identical(other.exerciseName, exerciseName) ||
                other.exerciseName == exerciseName) &&
            (identical(other.setNumber, setNumber) ||
                other.setNumber == setNumber) &&
            (identical(other.targetReps, targetReps) ||
                other.targetReps == targetReps) &&
            (identical(other.completedReps, completedReps) ||
                other.completedReps == completedReps) &&
            (identical(other.weightKg, weightKg) ||
                other.weightKg == weightKg) &&
            (identical(other.durationSeconds, durationSeconds) ||
                other.durationSeconds == durationSeconds) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.isSkipped, isSkipped) ||
                other.isSkipped == isSkipped));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      exerciseId,
      exerciseName,
      setNumber,
      targetReps,
      completedReps,
      weightKg,
      durationSeconds,
      isCompleted,
      isSkipped);

  /// Create a copy of SetLogNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetLogNetworkModelImplCopyWith<_$SetLogNetworkModelImpl> get copyWith =>
      __$$SetLogNetworkModelImplCopyWithImpl<_$SetLogNetworkModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SetLogNetworkModelImplToJson(
      this,
    );
  }
}

abstract class _SetLogNetworkModel implements SetLogNetworkModel {
  const factory _SetLogNetworkModel(
          {required final String id,
          @JsonKey(name: 'exercise_id') required final String exerciseId,
          @JsonKey(name: 'exercise_name') required final String exerciseName,
          @JsonKey(name: 'set_number') required final int setNumber,
          @JsonKey(name: 'target_reps') required final int targetReps,
          @JsonKey(name: 'completed_reps') final int? completedReps,
          @JsonKey(name: 'weight_kg') final double? weightKg,
          @JsonKey(name: 'duration_seconds') final int? durationSeconds,
          @JsonKey(name: 'is_completed') final bool isCompleted,
          @JsonKey(name: 'is_skipped') final bool isSkipped}) =
      _$SetLogNetworkModelImpl;

  factory _SetLogNetworkModel.fromJson(Map<String, dynamic> json) =
      _$SetLogNetworkModelImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'exercise_id')
  String get exerciseId;
  @override
  @JsonKey(name: 'exercise_name')
  String get exerciseName;
  @override
  @JsonKey(name: 'set_number')
  int get setNumber;
  @override
  @JsonKey(name: 'target_reps')
  int get targetReps;
  @override
  @JsonKey(name: 'completed_reps')
  int? get completedReps;
  @override
  @JsonKey(name: 'weight_kg')
  double? get weightKg;
  @override
  @JsonKey(name: 'duration_seconds')
  int? get durationSeconds;
  @override
  @JsonKey(name: 'is_completed')
  bool get isCompleted;
  @override
  @JsonKey(name: 'is_skipped')
  bool get isSkipped;

  /// Create a copy of SetLogNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetLogNetworkModelImplCopyWith<_$SetLogNetworkModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
