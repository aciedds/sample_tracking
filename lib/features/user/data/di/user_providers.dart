import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:daily_reboot_tracker/core/di/providers.dart';
import 'package:daily_reboot_tracker/features/user/data/models/local/user/user_entity.dart';
import 'package:daily_reboot_tracker/features/user/data/models/local/user_profile/user_profile_entity.dart';
import 'package:daily_reboot_tracker/features/user/data/repository/user_profile_repository_impl.dart';
import 'package:daily_reboot_tracker/features/user/data/repository/user_repository_impl.dart';
import 'package:daily_reboot_tracker/features/user/data/service/local/user/user_local_service.dart';
import 'package:daily_reboot_tracker/features/user/data/service/local/user/user_local_service_impl.dart';
import 'package:daily_reboot_tracker/features/user/data/service/local/user_profile/user_profile_local_service.dart';
import 'package:daily_reboot_tracker/features/user/data/service/local/user_profile/user_profile_local_service_impl.dart';
import 'package:daily_reboot_tracker/features/user/domain/repository/user_profile_repository.dart';
import 'package:daily_reboot_tracker/features/user/domain/repository/user_repository.dart';
import 'package:daily_reboot_tracker/features/user/domain/usecase/save_fitness_goal_profile_usecase.dart';
import 'package:daily_reboot_tracker/features/user/domain/usecase/save_fitness_goal_profile_usecase_impl.dart';
import 'package:daily_reboot_tracker/features/user/domain/usecase/validate_physical_profile_usecase.dart';
import 'package:daily_reboot_tracker/features/user/domain/usecase/validate_physical_profile_usecase_impl.dart';

final userBoxProvider = Provider<Box<UserEntity>>(
  (ref) => throw UnimplementedError('Override userBoxProvider in main().'),
);

final userProfileBoxProvider = Provider<Box<UserProfileEntity>>(
  (ref) => throw UnimplementedError('Override userProfileBoxProvider in main().'),
);

final userHiveConfigProvider = hiveConfigProvider<UserEntity>(userBoxProvider);

final userLocalServiceProvider = Provider<UserLocalService>((ref) {
  final hiveConfig = ref.watch(userHiveConfigProvider);
  return UserLocalServiceImpl(hiveConfig);
});

final userRepositoryProvider = Provider<UserRepository>((ref) {
  final localService = ref.watch(userLocalServiceProvider);
  return UserRepositoryImpl(localService);
});

final userProfileLocalServiceProvider = Provider<UserProfileLocalService>((ref) {
  final box = ref.watch(userProfileBoxProvider);
  return UserProfileLocalServiceImpl(box);
});

final userProfileRepositoryProvider = Provider<UserProfileRepository>((ref) {
  final localService = ref.watch(userProfileLocalServiceProvider);
  return UserProfileRepositoryImpl(localService);
});

final validatePhysicalProfileUsecaseProvider =
    Provider<ValidatePhysicalProfileUsecase>((ref) {
  return ValidatePhysicalProfileUsecaseImpl();
});

final saveFitnessGoalProfileUsecaseProvider =
    Provider<SaveFitnessGoalProfileUsecase>((ref) {
  return SaveFitnessGoalProfileUsecaseImpl(
    ref.watch(userRepositoryProvider),
    ref.watch(userProfileRepositoryProvider),
  );
});
