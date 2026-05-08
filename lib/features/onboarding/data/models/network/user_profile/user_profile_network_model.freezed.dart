// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_network_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserProfileNetworkModel _$UserProfileNetworkModelFromJson(
    Map<String, dynamic> json) {
  return _UserProfileNetworkModel.fromJson(json);
}

/// @nodoc
mixin _$UserProfileNetworkModel {
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight_kg')
  double get weightKg => throw _privateConstructorUsedError;
  @JsonKey(name: 'height_cm')
  double get heightCm => throw _privateConstructorUsedError;
  @JsonKey(name: 'age_years')
  int get ageYears => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'goal_type')
  String get goalType => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_weight_kg')
  double? get targetWeightKg => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'workout_days_per_week')
  int get workoutDaysPerWeek => throw _privateConstructorUsedError;
  double get bmi => throw _privateConstructorUsedError;
  double get bmr => throw _privateConstructorUsedError;

  /// Serializes this UserProfileNetworkModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserProfileNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserProfileNetworkModelCopyWith<UserProfileNetworkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileNetworkModelCopyWith<$Res> {
  factory $UserProfileNetworkModelCopyWith(UserProfileNetworkModel value,
          $Res Function(UserProfileNetworkModel) then) =
      _$UserProfileNetworkModelCopyWithImpl<$Res, UserProfileNetworkModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'weight_kg') double weightKg,
      @JsonKey(name: 'height_cm') double heightCm,
      @JsonKey(name: 'age_years') int ageYears,
      String gender,
      @JsonKey(name: 'goal_type') String goalType,
      @JsonKey(name: 'target_weight_kg') double? targetWeightKg,
      String level,
      @JsonKey(name: 'workout_days_per_week') int workoutDaysPerWeek,
      double bmi,
      double bmr});
}

/// @nodoc
class _$UserProfileNetworkModelCopyWithImpl<$Res,
        $Val extends UserProfileNetworkModel>
    implements $UserProfileNetworkModelCopyWith<$Res> {
  _$UserProfileNetworkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? weightKg = null,
    Object? heightCm = null,
    Object? ageYears = null,
    Object? gender = null,
    Object? goalType = null,
    Object? targetWeightKg = freezed,
    Object? level = null,
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
              as String,
      goalType: null == goalType
          ? _value.goalType
          : goalType // ignore: cast_nullable_to_non_nullable
              as String,
      targetWeightKg: freezed == targetWeightKg
          ? _value.targetWeightKg
          : targetWeightKg // ignore: cast_nullable_to_non_nullable
              as double?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
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
}

/// @nodoc
abstract class _$$UserProfileNetworkModelImplCopyWith<$Res>
    implements $UserProfileNetworkModelCopyWith<$Res> {
  factory _$$UserProfileNetworkModelImplCopyWith(
          _$UserProfileNetworkModelImpl value,
          $Res Function(_$UserProfileNetworkModelImpl) then) =
      __$$UserProfileNetworkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'weight_kg') double weightKg,
      @JsonKey(name: 'height_cm') double heightCm,
      @JsonKey(name: 'age_years') int ageYears,
      String gender,
      @JsonKey(name: 'goal_type') String goalType,
      @JsonKey(name: 'target_weight_kg') double? targetWeightKg,
      String level,
      @JsonKey(name: 'workout_days_per_week') int workoutDaysPerWeek,
      double bmi,
      double bmr});
}

/// @nodoc
class __$$UserProfileNetworkModelImplCopyWithImpl<$Res>
    extends _$UserProfileNetworkModelCopyWithImpl<$Res,
        _$UserProfileNetworkModelImpl>
    implements _$$UserProfileNetworkModelImplCopyWith<$Res> {
  __$$UserProfileNetworkModelImplCopyWithImpl(
      _$UserProfileNetworkModelImpl _value,
      $Res Function(_$UserProfileNetworkModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? weightKg = null,
    Object? heightCm = null,
    Object? ageYears = null,
    Object? gender = null,
    Object? goalType = null,
    Object? targetWeightKg = freezed,
    Object? level = null,
    Object? workoutDaysPerWeek = null,
    Object? bmi = null,
    Object? bmr = null,
  }) {
    return _then(_$UserProfileNetworkModelImpl(
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
              as String,
      goalType: null == goalType
          ? _value.goalType
          : goalType // ignore: cast_nullable_to_non_nullable
              as String,
      targetWeightKg: freezed == targetWeightKg
          ? _value.targetWeightKg
          : targetWeightKg // ignore: cast_nullable_to_non_nullable
              as double?,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
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
@JsonSerializable()
class _$UserProfileNetworkModelImpl implements _UserProfileNetworkModel {
  const _$UserProfileNetworkModelImpl(
      {@JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'weight_kg') required this.weightKg,
      @JsonKey(name: 'height_cm') required this.heightCm,
      @JsonKey(name: 'age_years') required this.ageYears,
      required this.gender,
      @JsonKey(name: 'goal_type') required this.goalType,
      @JsonKey(name: 'target_weight_kg') this.targetWeightKg,
      required this.level,
      @JsonKey(name: 'workout_days_per_week') required this.workoutDaysPerWeek,
      required this.bmi,
      required this.bmr});

  factory _$UserProfileNetworkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserProfileNetworkModelImplFromJson(json);

  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'weight_kg')
  final double weightKg;
  @override
  @JsonKey(name: 'height_cm')
  final double heightCm;
  @override
  @JsonKey(name: 'age_years')
  final int ageYears;
  @override
  final String gender;
  @override
  @JsonKey(name: 'goal_type')
  final String goalType;
  @override
  @JsonKey(name: 'target_weight_kg')
  final double? targetWeightKg;
  @override
  final String level;
  @override
  @JsonKey(name: 'workout_days_per_week')
  final int workoutDaysPerWeek;
  @override
  final double bmi;
  @override
  final double bmr;

  @override
  String toString() {
    return 'UserProfileNetworkModel(userId: $userId, weightKg: $weightKg, heightCm: $heightCm, ageYears: $ageYears, gender: $gender, goalType: $goalType, targetWeightKg: $targetWeightKg, level: $level, workoutDaysPerWeek: $workoutDaysPerWeek, bmi: $bmi, bmr: $bmr)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileNetworkModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.weightKg, weightKg) ||
                other.weightKg == weightKg) &&
            (identical(other.heightCm, heightCm) ||
                other.heightCm == heightCm) &&
            (identical(other.ageYears, ageYears) ||
                other.ageYears == ageYears) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.goalType, goalType) ||
                other.goalType == goalType) &&
            (identical(other.targetWeightKg, targetWeightKg) ||
                other.targetWeightKg == targetWeightKg) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.workoutDaysPerWeek, workoutDaysPerWeek) ||
                other.workoutDaysPerWeek == workoutDaysPerWeek) &&
            (identical(other.bmi, bmi) || other.bmi == bmi) &&
            (identical(other.bmr, bmr) || other.bmr == bmr));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      weightKg,
      heightCm,
      ageYears,
      gender,
      goalType,
      targetWeightKg,
      level,
      workoutDaysPerWeek,
      bmi,
      bmr);

  /// Create a copy of UserProfileNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileNetworkModelImplCopyWith<_$UserProfileNetworkModelImpl>
      get copyWith => __$$UserProfileNetworkModelImplCopyWithImpl<
          _$UserProfileNetworkModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserProfileNetworkModelImplToJson(
      this,
    );
  }
}

abstract class _UserProfileNetworkModel implements UserProfileNetworkModel {
  const factory _UserProfileNetworkModel(
      {@JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'weight_kg') required final double weightKg,
      @JsonKey(name: 'height_cm') required final double heightCm,
      @JsonKey(name: 'age_years') required final int ageYears,
      required final String gender,
      @JsonKey(name: 'goal_type') required final String goalType,
      @JsonKey(name: 'target_weight_kg') final double? targetWeightKg,
      required final String level,
      @JsonKey(name: 'workout_days_per_week')
      required final int workoutDaysPerWeek,
      required final double bmi,
      required final double bmr}) = _$UserProfileNetworkModelImpl;

  factory _UserProfileNetworkModel.fromJson(Map<String, dynamic> json) =
      _$UserProfileNetworkModelImpl.fromJson;

  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'weight_kg')
  double get weightKg;
  @override
  @JsonKey(name: 'height_cm')
  double get heightCm;
  @override
  @JsonKey(name: 'age_years')
  int get ageYears;
  @override
  String get gender;
  @override
  @JsonKey(name: 'goal_type')
  String get goalType;
  @override
  @JsonKey(name: 'target_weight_kg')
  double? get targetWeightKg;
  @override
  String get level;
  @override
  @JsonKey(name: 'workout_days_per_week')
  int get workoutDaysPerWeek;
  @override
  double get bmi;
  @override
  double get bmr;

  /// Create a copy of UserProfileNetworkModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileNetworkModelImplCopyWith<_$UserProfileNetworkModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
