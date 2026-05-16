import 'package:daily_reboot_tracker/core/state/data/data_state.dart';
import 'package:daily_reboot_tracker/features/onboarding/domain/entities/user_profile_setup_draft.dart';
import 'package:daily_reboot_tracker/features/user/domain/entities/user_profile/user_profile.dart';

abstract class SaveFitnessGoalProfileUsecase {
  Future<DataState<UserProfile>> call({
    required UserProfileSetupDraft physicalDraft,
    required String goalType,
    required String workoutDaysPerWeekText,
    required String fitnessLevel,
    String? targetWeightKgText,
  });
}
