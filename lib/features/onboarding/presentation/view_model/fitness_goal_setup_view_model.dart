import 'package:daily_reboot_tracker/core/state/view/view_state.dart';
import 'package:daily_reboot_tracker/features/onboarding/domain/entities/user_profile_setup_draft.dart';
import 'package:daily_reboot_tracker/features/user/data/di/user_providers.dart';
import 'package:daily_reboot_tracker/features/user/domain/usecase/save_fitness_goal_profile_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FitnessGoalSetupState {
  FitnessGoalSetupState({
    this.goalType = 'Turun BB',
    this.fitnessLevel = 'Beginner',
    ViewState<bool>? submitState,
    this.errorMessage,
  }) : submitState = submitState ?? ViewState<bool>.initial();

  final String goalType;
  final String fitnessLevel;
  final ViewState<bool> submitState;
  final String? errorMessage;

  FitnessGoalSetupState copyWith({
    String? goalType,
    String? fitnessLevel,
    ViewState<bool>? submitState,
    String? errorMessage,
  }) {
    return FitnessGoalSetupState(
      goalType: goalType ?? this.goalType,
      fitnessLevel: fitnessLevel ?? this.fitnessLevel,
      submitState: submitState ?? this.submitState,
      errorMessage: errorMessage,
    );
  }
}

class FitnessGoalSetupViewModel extends StateNotifier<FitnessGoalSetupState> {
  FitnessGoalSetupViewModel(this._saveFitnessGoalProfile)
      : super(FitnessGoalSetupState());

  final SaveFitnessGoalProfileUsecase _saveFitnessGoalProfile;

  void setGoalType(String? value) {
    if (value == null) return;
    state = state.copyWith(goalType: value, errorMessage: null);
  }

  void setFitnessLevel(String? value) {
    if (value == null) return;
    state = state.copyWith(fitnessLevel: value, errorMessage: null);
  }

  Future<bool> submit({
    required UserProfileSetupDraft physicalDraft,
    required String workoutDaysPerWeek,
    String? targetWeightKg,
  }) async {
    state = state.copyWith(
      submitState: const ViewState.loading(),
      errorMessage: null,
    );

    final result = await _saveFitnessGoalProfile(
      physicalDraft: physicalDraft,
      goalType: state.goalType,
      workoutDaysPerWeekText: workoutDaysPerWeek,
      fitnessLevel: state.fitnessLevel,
      targetWeightKgText: targetWeightKg,
    );

    return result.when(
      success: (_) {
        state = state.copyWith(
          submitState: const ViewState.success(data: true),
          errorMessage: null,
        );
        return true;
      },
      failed: (message, _, __, ___) {
        state = state.copyWith(
          submitState: ViewState.error(message: message),
          errorMessage: message,
        );
        return false;
      },
    );
  }
}

final fitnessGoalSetupViewModelProvider = StateNotifierProvider.autoDispose<
    FitnessGoalSetupViewModel, FitnessGoalSetupState>(
  (ref) => FitnessGoalSetupViewModel(
    ref.watch(saveFitnessGoalProfileUsecaseProvider),
  ),
);
