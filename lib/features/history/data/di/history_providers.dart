import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:daily_reboot_tracker/core/di/providers.dart';
import 'package:daily_reboot_tracker/features/history/data/models/local/session_record/session_record_local_model.dart';
import 'package:daily_reboot_tracker/features/history/data/repository/session_record_repository_impl.dart';
import 'package:daily_reboot_tracker/features/history/data/service/local/session_record/session_record_local_service.dart';
import 'package:daily_reboot_tracker/features/history/data/service/local/session_record/session_record_local_service_impl.dart';
import 'package:daily_reboot_tracker/features/history/data/service/network/session_record/session_record_network_service.dart';
import 'package:daily_reboot_tracker/features/history/data/service/network/session_record/session_record_network_service_impl.dart';
import 'package:daily_reboot_tracker/features/history/domain/repository/session_record_repository.dart';

final sessionRecordBoxProvider = Provider<Box<SessionRecordLocalModel>>(
  (ref) => throw UnimplementedError('Override sessionRecordBoxProvider in main().'),
);

final sessionRecordLocalServiceProvider = Provider<SessionRecordLocalService>((ref) {
  final box = ref.watch(sessionRecordBoxProvider);
  return SessionRecordLocalServiceImpl(box);
});

final sessionRecordNetworkServiceProvider = Provider<SessionRecordNetworkService>((ref) {
  final dio = ref.watch(dioProvider);
  return SessionRecordNetworkServiceImpl(dio);
});

final sessionRecordRepositoryProvider = Provider<SessionRecordRepository>((ref) {
  final localService = ref.watch(sessionRecordLocalServiceProvider);
  final networkService = ref.watch(sessionRecordNetworkServiceProvider);
  return SessionRecordRepositoryImpl(localService, networkService);
});
