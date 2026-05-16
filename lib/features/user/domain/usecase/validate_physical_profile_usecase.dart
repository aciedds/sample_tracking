import 'package:daily_reboot_tracker/core/state/data/data_state.dart';
import 'package:daily_reboot_tracker/features/onboarding/domain/entities/user_profile_setup_draft.dart';
abstract class ValidatePhysicalProfileUsecase {
  DataState<UserProfileSetupDraft> call({
    required String weightKgText,
    required String heightCmText,
    required String ageYearsText,
    required String genderLabel,
  });
}
