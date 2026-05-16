import 'package:daily_reboot_tracker/features/user/domain/entities/user_profile/user_profile.dart';

class UserProfileSetupDraft {
  const UserProfileSetupDraft({
    required this.weightKg,
    required this.heightCm,
    required this.ageYears,
    required this.gender,
    required this.bmi,
    required this.bmr,
  });

  final double weightKg;
  final double heightCm;
  final int ageYears;
  final Gender gender;
  final double bmi;
  final double bmr;
}
