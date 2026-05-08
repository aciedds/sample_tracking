// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fitness_goal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FitnessGoal {
  FitnessGoalType get type => throw _privateConstructorUsedError;
  double? get targetWeightKg => throw _privateConstructorUsedError;

  /// Create a copy of FitnessGoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FitnessGoalCopyWith<FitnessGoal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FitnessGoalCopyWith<$Res> {
  factory $FitnessGoalCopyWith(
          FitnessGoal value, $Res Function(FitnessGoal) then) =
      _$FitnessGoalCopyWithImpl<$Res, FitnessGoal>;
  @useResult
  $Res call({FitnessGoalType type, double? targetWeightKg});
}

/// @nodoc
class _$FitnessGoalCopyWithImpl<$Res, $Val extends FitnessGoal>
    implements $FitnessGoalCopyWith<$Res> {
  _$FitnessGoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FitnessGoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? targetWeightKg = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FitnessGoalType,
      targetWeightKg: freezed == targetWeightKg
          ? _value.targetWeightKg
          : targetWeightKg // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FitnessGoalImplCopyWith<$Res>
    implements $FitnessGoalCopyWith<$Res> {
  factory _$$FitnessGoalImplCopyWith(
          _$FitnessGoalImpl value, $Res Function(_$FitnessGoalImpl) then) =
      __$$FitnessGoalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FitnessGoalType type, double? targetWeightKg});
}

/// @nodoc
class __$$FitnessGoalImplCopyWithImpl<$Res>
    extends _$FitnessGoalCopyWithImpl<$Res, _$FitnessGoalImpl>
    implements _$$FitnessGoalImplCopyWith<$Res> {
  __$$FitnessGoalImplCopyWithImpl(
      _$FitnessGoalImpl _value, $Res Function(_$FitnessGoalImpl) _then)
      : super(_value, _then);

  /// Create a copy of FitnessGoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? targetWeightKg = freezed,
  }) {
    return _then(_$FitnessGoalImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FitnessGoalType,
      targetWeightKg: freezed == targetWeightKg
          ? _value.targetWeightKg
          : targetWeightKg // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$FitnessGoalImpl implements _FitnessGoal {
  const _$FitnessGoalImpl({required this.type, this.targetWeightKg});

  @override
  final FitnessGoalType type;
  @override
  final double? targetWeightKg;

  @override
  String toString() {
    return 'FitnessGoal(type: $type, targetWeightKg: $targetWeightKg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FitnessGoalImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.targetWeightKg, targetWeightKg) ||
                other.targetWeightKg == targetWeightKg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, targetWeightKg);

  /// Create a copy of FitnessGoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FitnessGoalImplCopyWith<_$FitnessGoalImpl> get copyWith =>
      __$$FitnessGoalImplCopyWithImpl<_$FitnessGoalImpl>(this, _$identity);
}

abstract class _FitnessGoal implements FitnessGoal {
  const factory _FitnessGoal(
      {required final FitnessGoalType type,
      final double? targetWeightKg}) = _$FitnessGoalImpl;

  @override
  FitnessGoalType get type;
  @override
  double? get targetWeightKg;

  /// Create a copy of FitnessGoal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FitnessGoalImplCopyWith<_$FitnessGoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
