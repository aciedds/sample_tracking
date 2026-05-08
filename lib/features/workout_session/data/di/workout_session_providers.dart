import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:daily_reboot_tracker/core/di/providers.dart';
import 'package:daily_reboot_tracker/features/workout_session/data/models/local/session/session_local_model.dart';
import 'package:daily_reboot_tracker/features/workout_session/data/models/local/set_log/set_log_local_model.dart';
import 'package:daily_reboot_tracker/features/workout_session/data/repository/session_repository_impl.dart';
import 'package:daily_reboot_tracker/features/workout_session/data/repository/set_log_repository_impl.dart';
import 'package:daily_reboot_tracker/features/workout_session/data/service/local/session/session_local_service.dart';
import 'package:daily_reboot_tracker/features/workout_session/data/service/local/session/session_local_service_impl.dart';
import 'package:daily_reboot_tracker/features/workout_session/data/service/local/set_log/set_log_local_service.dart';
import 'package:daily_reboot_tracker/features/workout_session/data/service/local/set_log/set_log_local_service_impl.dart';
import 'package:daily_reboot_tracker/features/workout_session/data/service/network/session/session_network_service.dart';
import 'package:daily_reboot_tracker/features/workout_session/data/service/network/session/session_network_service_impl.dart';
import 'package:daily_reboot_tracker/features/workout_session/data/service/network/set_log/set_log_network_service.dart';
import 'package:daily_reboot_tracker/features/workout_session/data/service/network/set_log/set_log_network_service_impl.dart';
import 'package:daily_reboot_tracker/features/workout_session/domain/repository/session_repository.dart';
import 'package:daily_reboot_tracker/features/workout_session/domain/repository/set_log_repository.dart';

final setLogBoxProvider = Provider<Box<SetLogLocalModel>>(
  (ref) => throw UnimplementedError('Override setLogBoxProvider in main().'),
);

final sessionBoxProvider = Provider<Box<SessionLocalModel>>(
  (ref) => throw UnimplementedError('Override sessionBoxProvider in main().'),
);

final setLogLocalServiceProvider = Provider<SetLogLocalService>((ref) {
  final box = ref.watch(setLogBoxProvider);
  return SetLogLocalServiceImpl(box);
});

final sessionLocalServiceProvider = Provider<SessionLocalService>((ref) {
  final box = ref.watch(sessionBoxProvider);
  return SessionLocalServiceImpl(box);
});

final setLogNetworkServiceProvider = Provider<SetLogNetworkService>((ref) {
  final dio = ref.watch(dioProvider);
  return SetLogNetworkServiceImpl(dio);
});

final sessionNetworkServiceProvider = Provider<SessionNetworkService>((ref) {
  final dio = ref.watch(dioProvider);
  return SessionNetworkServiceImpl(dio);
});

final setLogRepositoryProvider = Provider<SetLogRepository>((ref) {
  final localService = ref.watch(setLogLocalServiceProvider);
  final networkService = ref.watch(setLogNetworkServiceProvider);
  return SetLogRepositoryImpl(localService, networkService);
});

final sessionRepositoryProvider = Provider<SessionRepository>((ref) {
  final localService = ref.watch(sessionLocalServiceProvider);
  final networkService = ref.watch(sessionNetworkServiceProvider);
  return SessionRepositoryImpl(localService, networkService);
});
