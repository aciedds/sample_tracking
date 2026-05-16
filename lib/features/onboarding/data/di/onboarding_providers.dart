import 'package:daily_reboot_tracker/features/workout/data/repository/workout_day_repository_impl.dart';
import 'package:daily_reboot_tracker/features/workout/data/repository/workout_plan_repository_impl.dart';
import 'package:daily_reboot_tracker/features/workout/data/service/local/workout_day/workout_day_local_service.dart';
import 'package:daily_reboot_tracker/features/workout/data/service/local/workout_day/workout_day_local_service_impl.dart';
import 'package:daily_reboot_tracker/features/workout/data/service/local/workout_plan/workout_plan_local_service.dart';
import 'package:daily_reboot_tracker/features/workout/data/service/local/workout_plan/workout_plan_local_service_impl.dart';
import 'package:daily_reboot_tracker/features/workout/data/service/network/workout_day/workout_day_network_service.dart';
import 'package:daily_reboot_tracker/features/workout/data/service/network/workout_day/workout_day_network_service_impl.dart';
import 'package:daily_reboot_tracker/features/workout/data/service/network/workout_plan/workout_plan_network_service.dart';
import 'package:daily_reboot_tracker/features/workout/data/service/network/workout_plan/workout_plan_network_service_impl.dart';
import 'package:daily_reboot_tracker/features/workout/domain/repository/workout_day_repository.dart';
import 'package:daily_reboot_tracker/features/workout/domain/repository/workout_plan_repository.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:daily_reboot_tracker/core/di/providers.dart';
import 'package:daily_reboot_tracker/features/workout/data/models/local/workout_plan/workout_plan_local_model.dart';

final workoutPlanBoxProvider = Provider<Box<WorkoutPlanLocalModel>>(
  (ref) => throw UnimplementedError('Override workoutPlanBoxProvider in main().'),
);

final workoutDayBoxProvider = Provider<Box<WorkoutDayLocalModel>>(
  (ref) => throw UnimplementedError('Override workoutDayBoxProvider in main().'),
);

final workoutPlanLocalServiceProvider = Provider<WorkoutPlanLocalService>((ref) {
  final box = ref.watch(workoutPlanBoxProvider);
  return WorkoutPlanLocalServiceImpl(box);
});

final workoutDayLocalServiceProvider = Provider<WorkoutDayLocalService>((ref) {
  final box = ref.watch(workoutDayBoxProvider);
  return WorkoutDayLocalServiceImpl(box);
});

final workoutPlanNetworkServiceProvider = Provider<WorkoutPlanNetworkService>((ref) {
  final dio = ref.watch(dioProvider);
  return WorkoutPlanNetworkServiceImpl(dio);
});

final workoutDayNetworkServiceProvider = Provider<WorkoutDayNetworkService>((ref) {
  final dio = ref.watch(dioProvider );
  return WorkoutDayNetworkServiceImpl(dio);
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
