// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserProfile {
  String get userId => throw _privateConstructorUsedError;
  double get weightKg => throw _privateConstructorUsedError;
  double get heightCm => throw _privateConstructorUsedError;
  int get ageYears => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  FitnessGoal get goal => throw _privateConstructorUsedError;
  FitnessLevel get level => throw _privateConstructorUsedError;
  int get workoutDaysPerWeek => throw _privateConstructorUsedError;
  double get bmi => throw _privateConstructorUsedError;
  double get bmr => throw _privateConstructorUsedError;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileCopyWith<UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res, UserProfile>;
  @useResult
  $Res call(
      {String userId,
      double weightKg,
      double heightCm,
      int ageYears,
      Gender gender,
      FitnessGoal goal,
      FitnessLevel level,
      int workoutDaysPerWeek,
      double bmi,
      double bmr});

  $FitnessGoalCopyWith<$Res> get goal;
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res, $Val extends UserProfile>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? weightKg = null,
    Object? heightCm = null,
    Object? ageYears = null,
    Object? gender = null,
    Object? goal = null,
    Object? level = freezed,
    Object? workoutDaysPerWeek = null,
    Object? bmi = null,
    Object? bmr = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      weightKg: null == weightKg
          ? _value.weightKg
          : weightKg // ignore: cast_nullable_to_non_nullable
              as double,
      heightCm: null == heightCm
          ? _value.heightCm
          : heightCm // ignore: cast_nullable_to_non_nullable
              as double,
      ageYears: null == ageYears
          ? _value.ageYears
          : ageYears // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as FitnessGoal,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as FitnessLevel,
      workoutDaysPerWeek: null == workoutDaysPerWeek
          ? _value.workoutDaysPerWeek
          : workoutDaysPerWeek // ignore: cast_nullable_to_non_nullable
              as int,
      bmi: null == bmi
          ? _value.bmi
          : bmi // ignore: cast_nullable_to_non_nullable
              as double,
      bmr: null == bmr
          ? _value.bmr
          : bmr // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FitnessGoalCopyWith<$Res> get goal {
    return $FitnessGoalCopyWith<$Res>(_value.goal, (value) {
      return _then(_value.copyWith(goal: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserProfileImplCopyWith<$Res>
    implements $UserProfileCopyWith<$Res> {
  factory _$$UserProfileImplCopyWith(
          _$UserProfileImpl value, $Res Function(_$UserProfileImpl) then) =
      __$$UserProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      double weightKg,
      double heightCm,
      int ageYears,
      Gender gender,
      FitnessGoal goal,
      FitnessLevel level,
      int workoutDaysPerWeek,
      double bmi,
      double bmr});

  @override
  $FitnessGoalCopyWith<$Res> get goal;
}

/// @nodoc
class __$$UserProfileImplCopyWithImpl<$Res>
    extends _$UserProfileCopyWithImpl<$Res, _$UserProfileImpl>
    implements _$$UserProfileImplCopyWith<$Res> {
  __$$UserProfileImplCopyWithImpl(
      _$UserProfileImpl _value, $Res Function(_$UserProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? weightKg = null,
    Object? heightCm = null,
    Object? ageYears = null,
    Object? gender = null,
    Object? goal = null,
    Object? level = freezed,
    Object? workoutDaysPerWeek = null,
    Object? bmi = null,
    Object? bmr = null,
  }) {
    return _then(_$UserProfileImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      weightKg: null == weightKg
          ? _value.weightKg
          : weightKg // ignore: cast_nullable_to_non_nullable
              as double,
      heightCm: null == heightCm
          ? _value.heightCm
          : heightCm // ignore: cast_nullable_to_non_nullable
              as double,
      ageYears: null == ageYears
          ? _value.ageYears
          : ageYears // ignore: cast_nullable_to_non_nullable
              as int,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      goal: null == goal
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as FitnessGoal,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as FitnessLevel,
      workoutDaysPerWeek: null == workoutDaysPerWeek
          ? _value.workoutDaysPerWeek
          : workoutDaysPerWeek // ignore: cast_nullable_to_non_nullable
              as int,
      bmi: null == bmi
          ? _value.bmi
          : bmi // ignore: cast_nullable_to_non_nullable
              as double,
      bmr: null == bmr
          ? _value.bmr
          : bmr // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$UserProfileImpl implements _UserProfile {
  const _$UserProfileImpl(
      {required this.userId,
      required this.weightKg,
      required this.heightCm,
      required this.ageYears,
      required this.gender,
      required this.goal,
      required this.level,
      required this.workoutDaysPerWeek,
      required this.bmi,
      required this.bmr});

  @override
  final String userId;
  @override
  final double weightKg;
  @override
  final double heightCm;
  @override
  final int ageYears;
  @override
  final Gender gender;
  @override
  final FitnessGoal goal;
  @override
  final FitnessLevel level;
  @override
  final int workoutDaysPerWeek;
  @override
  final double bmi;
  @override
  final double bmr;

  @override
  String toString() {
    return 'UserProfile(userId: $userId, weightKg: $weightKg, heightCm: $heightCm, ageYears: $ageYears, gender: $gender, goal: $goal, level: $level, workoutDaysPerWeek: $workoutDaysPerWeek, bmi: $bmi, bmr: $bmr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.weightKg, weightKg) ||
                other.weightKg == weightKg) &&
            (identical(other.heightCm, heightCm) ||
                other.heightCm == heightCm) &&
            (identical(other.ageYears, ageYears) ||
                other.ageYears == ageYears) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.goal, goal) || other.goal == goal) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            (identical(other.workoutDaysPerWeek, workoutDaysPerWeek) ||
                other.workoutDaysPerWeek == workoutDaysPerWeek) &&
            (identical(other.bmi, bmi) || other.bmi == bmi) &&
            (identical(other.bmr, bmr) || other.bmr == bmr));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      weightKg,
      heightCm,
      ageYears,
      gender,
      goal,
      const DeepCollectionEquality().hash(level),
      workoutDaysPerWeek,
      bmi,
      bmr);

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      __$$UserProfileImplCopyWithImpl<_$UserProfileImpl>(this, _$identity);
}

abstract class _UserProfile implements UserProfile {
  const factory _UserProfile(
      {required final String userId,
      required final double weightKg,
      required final double heightCm,
      required final int ageYears,
      required final Gender gender,
      required final FitnessGoal goal,
      required final FitnessLevel level,
      required final int workoutDaysPerWeek,
      required final double bmi,
      required final double bmr}) = _$UserProfileImpl;

  @override
  String get userId;
  @override
  double get weightKg;
  @override
  double get heightCm;
  @override
  int get ageYears;
  @override
  Gender get gender;
  @override
  FitnessGoal get goal;
  @override
  FitnessLevel get level;
  @override
  int get workoutDaysPerWeek;
  @override
  double get bmi;
  @override
  double get bmr;

  /// Create a copy of UserProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileImplCopyWith<_$UserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
