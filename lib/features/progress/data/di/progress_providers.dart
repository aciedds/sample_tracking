import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:daily_reboot_tracker/core/di/providers.dart';
import 'package:daily_reboot_tracker/features/progress/data/models/local/body_weight/body_weight_local_model.dart';
import 'package:daily_reboot_tracker/features/progress/data/repository/body_weight_repository_impl.dart';
import 'package:daily_reboot_tracker/features/progress/data/service/local/body_weight/body_weight_local_service.dart';
import 'package:daily_reboot_tracker/features/progress/data/service/local/body_weight/body_weight_local_service_impl.dart';
import 'package:daily_reboot_tracker/features/progress/data/service/network/body_weight/body_weight_network_service.dart';
import 'package:daily_reboot_tracker/features/progress/data/service/network/body_weight/body_weight_network_service_impl.dart';
import 'package:daily_reboot_tracker/features/progress/domain/repository/body_weight_repository.dart';

final bodyWeightBoxProvider = Provider<Box<BodyWeightLocalModel>>(
  (ref) => throw UnimplementedError('Override bodyWeightBoxProvider in main().'),
);

final bodyWeightLocalServiceProvider = Provider<BodyWeightLocalService>((ref) {
  final box = ref.watch(bodyWeightBoxProvider);
  return BodyWeightLocalServiceImpl(box);
});

final bodyWeightNetworkServiceProvider = Provider<BodyWeightNetworkService>((ref) {
  final dio = ref.watch(dioProvider);
  return BodyWeightNetworkServiceImpl(dio);
});

final bodyWeightRepositoryProvider = Provider<BodyWeightRepository>((ref) {
  final localService = ref.watch(bodyWeightLocalServiceProvider);
  final networkService = ref.watch(bodyWeightNetworkServiceProvider);
  return BodyWeightRepositoryImpl(localService, networkService);
});
