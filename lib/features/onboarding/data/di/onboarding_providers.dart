import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:daily_reboot_tracker/core/di/providers.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/models/local/user_profile/user_profile_local_model.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/models/local/workout_plan/workout_plan_local_model.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/repository/user_profile_repository_impl.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/repository/workout_day_repository_impl.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/repository/workout_plan_repository_impl.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/service/local/user_profile/user_profile_local_service.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/service/local/user_profile/user_profile_local_service_impl.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/service/local/workout_day/workout_day_local_service.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/service/local/workout_day/workout_day_local_service_impl.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/service/local/workout_plan/workout_plan_local_service.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/service/local/workout_plan/workout_plan_local_service_impl.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/service/network/user_profile/user_profile_network_service.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/service/network/user_profile/user_profile_network_service_impl.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/service/network/workout_day/workout_day_network_service.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/service/network/workout_day/workout_day_network_service_impl.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/service/network/workout_plan/workout_plan_network_service.dart';
import 'package:daily_reboot_tracker/features/onboarding/data/service/network/workout_plan/workout_plan_network_service_impl.dart';
import 'package:daily_reboot_tracker/features/onboarding/domain/repository/user_profile_repository.dart';
import 'package:daily_reboot_tracker/features/onboarding/domain/repository/workout_day_repository.dart';
import 'package:daily_reboot_tracker/features/onboarding/domain/repository/workout_plan_repository.dart';

final userProfileBoxProvider = Provider<Box<UserProfileLocalModel>>(
  (ref) => throw UnimplementedError('Override userProfileBoxProvider in main().'),
);

final workoutPlanBoxProvider = Provider<Box<WorkoutPlanLocalModel>>(
  (ref) => throw UnimplementedError('Override workoutPlanBoxProvider in main().'),
);

final workoutDayBoxProvider = Provider<Box<WorkoutDayLocalModel>>(
  (ref) => throw UnimplementedError('Override workoutDayBoxProvider in main().'),
);

final userProfileLocalServiceProvider = Provider<UserProfileLocalService>((ref) {
  final box = ref.watch(userProfileBoxProvider);
  return UserProfileLocalServiceImpl(box);
});

final workoutPlanLocalServiceProvider = Provider<WorkoutPlanLocalService>((ref) {
  final box = ref.watch(workoutPlanBoxProvider);
  return WorkoutPlanLocalServiceImpl(box);
});

final workoutDayLocalServiceProvider = Provider<WorkoutDayLocalService>((ref) {
  final box = ref.watch(workoutDayBoxProvider);
  return WorkoutDayLocalServiceImpl(box);
});

final userProfileNetworkServiceProvider = Provider<UserProfileNetworkService>((ref) {
  final dio = ref.watch(dioProvider);
  return UserProfileNetworkServiceImpl(dio);
});

final workoutPlanNetworkServiceProvider = Provider<WorkoutPlanNetworkService>((ref) {
  final dio = ref.watch(dioProvider);
  return WorkoutPlanNetworkServiceImpl(dio);
});

final workoutDayNetworkServiceProvider = Provider<WorkoutDayNetworkService>((ref) {
  final dio = ref.watch(dioProvider);
  return WorkoutDayNetworkServiceImpl(dio);
});

final userProfileRepositoryProvider = Provider<UserProfileRepository>((ref) {
  final localService = ref.watch(userProfileLocalServiceProvider);
  final networkService = ref.watch(userProfileNetworkServiceProvider);
  return UserProfileRepositoryImpl(localService, networkService);
});

final workoutPlanRepositoryProvider = Provider<WorkoutPlanRepository>((ref) {
  final localService = ref.watch(workoutPlanLocalServiceProvider);
  final networkService = ref.watch(workoutPlanNetworkServiceProvider);
  return WorkoutPlanRepositoryImpl(localService, networkService);
});

final workoutDayRepositoryProvider = Provider<WorkoutDayRepository>((ref) {
  final localService = ref.watch(workoutDayLocalServiceProvider);
  final networkService = ref.watch(workoutDayNetworkServiceProvider);
  return WorkoutDayRepositoryImpl(localService, networkService);
});
