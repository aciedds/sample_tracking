import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:daily_reboot_tracker/core/di/providers.dart';
import 'package:daily_reboot_tracker/features/schedule/data/models/local/schedule_day/schedule_day_local_model.dart';
import 'package:daily_reboot_tracker/features/schedule/data/repository/schedule_day_repository_impl.dart';
import 'package:daily_reboot_tracker/features/schedule/data/service/local/schedule_day/schedule_day_local_service.dart';
import 'package:daily_reboot_tracker/features/schedule/data/service/local/schedule_day/schedule_day_local_service_impl.dart';
import 'package:daily_reboot_tracker/features/schedule/data/service/network/schedule_day/schedule_day_network_service.dart';
import 'package:daily_reboot_tracker/features/schedule/data/service/network/schedule_day/schedule_day_network_service_impl.dart';
import 'package:daily_reboot_tracker/features/schedule/domain/repository/schedule_day_repository.dart';

final scheduleDayBoxProvider = Provider<Box<ScheduleDayLocalModel>>(
  (ref) => throw UnimplementedError('Override scheduleDayBoxProvider in main().'),
);

final scheduleDayLocalServiceProvider = Provider<ScheduleDayLocalService>((ref) {
  final box = ref.watch(scheduleDayBoxProvider);
  return ScheduleDayLocalServiceImpl(box);
});

final scheduleDayNetworkServiceProvider = Provider<ScheduleDayNetworkService>((ref) {
  final dio = ref.watch(dioProvider);
  return ScheduleDayNetworkServiceImpl(dio);
});

final scheduleDayRepositoryProvider = Provider<ScheduleDayRepository>((ref) {
  final localService = ref.watch(scheduleDayLocalServiceProvider);
  final networkService = ref.watch(scheduleDayNetworkServiceProvider);
  return ScheduleDayRepositoryImpl(localService, networkService);
});
