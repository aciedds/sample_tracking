import 'package:daily_reboot_tracker/core/state/data/data_state.dart';
import 'package:daily_reboot_tracker/features/onboarding/domain/entities/user_profile_setup_draft.dart';
import 'package:daily_reboot_tracker/features/user/domain/entities/user_profile/user_profile.dart';
import 'package:daily_reboot_tracker/features/user/domain/usecase/validate_physical_profile_usecase.dart';

class ValidatePhysicalProfileUsecaseImpl implements ValidatePhysicalProfileUsecase {
  @override
  DataState<UserProfileSetupDraft> call({
    required String weightKgText,
    required String heightCmText,
    required String ageYearsText,
    required String genderLabel,
  }) {
    final weight = double.tryParse(weightKgText.trim());
    if (weight == null || weight <= 0) {
      return const DataState.failed(message: 'Berat badan tidak valid');
    }

    final height = double.tryParse(heightCmText.trim());
    if (height == null || height <= 0) {
      return const DataState.failed(message: 'Tinggi badan tidak valid');
    }

    final age = int.tryParse(ageYearsText.trim());
    if (age == null || age <= 0) {
      return const DataState.failed(message: 'Umur tidak valid');
    }

    final gender = switch (genderLabel) {
      'Pria' => Gender.male,
      'Wanita' => Gender.female,
      _ => null,
    };
    if (gender == null) {
      return const DataState.failed(message: 'Pilih jenis kelamin');
    }

    final heightM = height / 100;
    final bmi = weight / (heightM * heightM);
    final bmr = _calculateBmr(weightKg: weight, heightCm: height, ageYears: age, gender: gender);

    return DataState.success(
      data: UserProfileSetupDraft(
        weightKg: weight,
        heightCm: height,
        ageYears: age,
        gender: gender,
        bmi: double.parse(bmi.toStringAsFixed(1)),
        bmr: double.parse(bmr.toStringAsFixed(0)),
      ),
    );
  }

  double _calculateBmr({
    required double weightKg,
    required double heightCm,
    required int ageYears,
    required Gender gender,
  }) {
    final base = 10 * weightKg + 6.25 * heightCm - 5 * ageYears;
    return gender == Gender.male ? base + 5 : base - 161;
  }
}
