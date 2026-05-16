import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';

enum Gender { male, female }

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String userId,
    required double weightKg,
    required double heightCm,
    required int ageYears,
    required Gender gender,
    required String goalType,
    required String level,
    required int workoutDaysPerWeek,
    required double? targetWeightKg,
    required double bmi,
    required double bmr,
  }) = _UserProfile;
}