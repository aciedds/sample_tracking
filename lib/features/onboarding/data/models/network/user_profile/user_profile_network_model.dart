import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_network_model.freezed.dart';
part 'user_profile_network_model.g.dart';

@freezed
class UserProfileNetworkModel with _$UserProfileNetworkModel {
  const factory UserProfileNetworkModel({
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'weight_kg') required double weightKg,
    @JsonKey(name: 'height_cm') required double heightCm,
    @JsonKey(name: 'age_years') required int ageYears,
    required String gender,
    @JsonKey(name: 'goal_type') required String goalType,
    @JsonKey(name: 'target_weight_kg') double? targetWeightKg,
    required String level,
    @JsonKey(name: 'workout_days_per_week') required int workoutDaysPerWeek,
    required double bmi,
    required double bmr,
  }) = _UserProfileNetworkModel;

  factory UserProfileNetworkModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileNetworkModelFromJson(json);
}
