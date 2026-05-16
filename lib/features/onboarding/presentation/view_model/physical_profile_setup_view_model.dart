import 'package:daily_reboot_tracker/core/state/view/view_state.dart';
import 'package:daily_reboot_tracker/features/onboarding/domain/entities/user_profile_setup_draft.dart';
import 'package:daily_reboot_tracker/features/user/data/di/user_providers.dart';
import 'package:daily_reboot_tracker/features/user/domain/usecase/validate_physical_profile_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PhysicalProfileSetupState {
  PhysicalProfileSetupState({
    this.gender = 'Pria',
    ViewState<UserProfileSetupDraft>? submitState,
    this.errorMessage,
  }) : submitState = submitState ?? ViewState<UserProfileSetupDraft>.initial();

  final String gender;
  final ViewState<UserProfileSetupDraft> submitState;
  final String? errorMessage;

  PhysicalProfileSetupState copyWith({
    String? gender,
    ViewState<UserProfileSetupDraft>? submitState,
    String? errorMessage,
  }) {
    return PhysicalProfileSetupState(
      gender: gender ?? this.gender,
      submitState: submitState ?? this.submitState,
      errorMessage: errorMessage,
    );
  }
}

class PhysicalProfileSetupViewModel extends StateNotifier<PhysicalProfileSetupState> {
  PhysicalProfileSetupViewModel(this._validatePhysicalProfile)
      : super(PhysicalProfileSetupState());

  final ValidatePhysicalProfileUsecase _validatePhysicalProfile;

  void setGender(String? value) {
    if (value == null) return;
    state = state.copyWith(gender: value, errorMessage: null);
  }

  UserProfileSetupDraft? submit({
    required String weightKg,
    required String heightCm,
    required String ageYears,
  }) {
    state = state.copyWith(
      submitState: const ViewState.loading(),
      errorMessage: null,
    );

    final result = _validatePhysicalProfile(
      weightKgText: weightKg,
      heightCmText: heightCm,
      ageYearsText: ageYears,
      genderLabel: state.gender,
    );

    return result.when(
      success: (draft) {
        state = state.copyWith(
          submitState: ViewState.success(data: draft),
          errorMessage: null,
        );
        return draft;
      },
      failed: (message, _, __, ___) {
        state = state.copyWith(
          submitState: ViewState.error(message: message),
          errorMessage: message,
        );
        return null;
      },
    );
  }
}

final physicalProfileSetupViewModelProvider = StateNotifierProvider.autoDispose<
    PhysicalProfileSetupViewModel, PhysicalProfileSetupState>(
  (ref) => PhysicalProfileSetupViewModel(
    ref.watch(validatePhysicalProfileUsecaseProvider),
  ),
);
