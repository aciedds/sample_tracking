import 'package:daily_reboot_tracker/core/state/data/data_state.dart';
import 'package:daily_reboot_tracker/features/onboarding/domain/entities/user_profile_setup_draft.dart';
import 'package:daily_reboot_tracker/features/user/data/models/local/user_profile/user_profile_entity.dart';
import 'package:daily_reboot_tracker/features/user/domain/entities/user_profile/user_profile.dart';
import 'package:daily_reboot_tracker/features/user/domain/repository/user_profile_repository.dart';
import 'package:daily_reboot_tracker/features/user/domain/repository/user_repository.dart';
import 'package:daily_reboot_tracker/features/user/domain/usecase/save_fitness_goal_profile_usecase.dart';

class SaveFitnessGoalProfileUsecaseImpl implements SaveFitnessGoalProfileUsecase {
  SaveFitnessGoalProfileUsecaseImpl(this._userRepository, this._profileRepository);

  final UserRepository _userRepository;
  final UserProfileRepository _profileRepository;

  static const _allowedGoals = {'Turun BB', 'Naik BB', 'Maintain'};
  static const _allowedLevels = {'Beginner', 'Intermediate', 'Advanced'};

  @override
  Future<DataState<UserProfile>> call({
    required UserProfileSetupDraft physicalDraft,
    required String goalType,
    required String workoutDaysPerWeekText,
    required String fitnessLevel,
    String? targetWeightKgText,
  }) async {
    if (!_allowedGoals.contains(goalType)) {
      return const DataState.failed(message: 'Pilih tujuan latihan');
    }
    if (!_allowedLevels.contains(fitnessLevel)) {
      return const DataState.failed(message: 'Pilih level kebugaran');
    }

    final workoutDays = int.tryParse(workoutDaysPerWeekText.trim());
    if (workoutDays == null || workoutDays < 1 || workoutDays > 7) {
      return const DataState.failed(message: 'Hari latihan / minggu harus 1–7');
    }

    double? targetWeightKg;
    if (targetWeightKgText != null && targetWeightKgText.trim().isNotEmpty) {
      targetWeightKg = double.tryParse(targetWeightKgText.trim());
      if (targetWeightKg == null || targetWeightKg <= 0) {
        return const DataState.failed(message: 'Target berat badan tidak valid');
      }
    }

    final session = _userRepository.getCurrentSession();
    return session.when(
      success: (user) async {
        final profile = UserProfile(
          userId: user.id,
          weightKg: physicalDraft.weightKg,
          heightCm: physicalDraft.heightCm,
          ageYears: physicalDraft.ageYears,
          gender: physicalDraft.gender,
          goalType: goalType,
          level: fitnessLevel,
          workoutDaysPerWeek: workoutDays,
          targetWeightKg: targetWeightKg,
          bmi: physicalDraft.bmi,
          bmr: physicalDraft.bmr,
        );

        final entity = UserProfileEntity(
          userId: profile.userId,
          weightKg: profile.weightKg,
          heightCm: profile.heightCm,
          ageYears: profile.ageYears,
          gender: _genderToStorage(profile.gender),
          goalType: profile.goalType,
          targetWeightKg: profile.targetWeightKg,
          level: profile.level,
          workoutDaysPerWeek: profile.workoutDaysPerWeek,
          bmi: profile.bmi,
          bmr: profile.bmr,
        );

        await _profileRepository.createLocal(profile.userId, entity);
        return DataState.success(data: profile);
      },
      failed: (message, data, exception, stackTrace) {
        return DataState.failed(
          message: 'Sesi login tidak ditemukan. Silakan masuk kembali.',
          exception: exception,
          stackTrace: stackTrace,
        );
      },
    );
  }

  String _genderToStorage(Gender gender) =>
      gender == Gender.male ? 'Pria' : 'Wanita';
}
