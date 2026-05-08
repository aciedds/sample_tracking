import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:daily_reboot_tracker/core/di/providers.dart';
import 'package:daily_reboot_tracker/features/auth/data/models/local/user/user_local_model.dart';
import 'package:daily_reboot_tracker/features/auth/data/repository/user_repository_impl.dart';
import 'package:daily_reboot_tracker/features/auth/data/service/local/user/user_local_service.dart';
import 'package:daily_reboot_tracker/features/auth/data/service/local/user/user_local_service_impl.dart';
import 'package:daily_reboot_tracker/features/auth/data/service/network/user/user_network_service.dart';
import 'package:daily_reboot_tracker/features/auth/data/service/network/user/user_network_service_impl.dart';
import 'package:daily_reboot_tracker/features/auth/domain/repository/user_repository.dart';

final userBoxProvider = Provider<Box<UserLocalModel>>(
  (ref) => throw UnimplementedError('Override userBoxProvider in main().'),
);

final userLocalServiceProvider = Provider<UserLocalService>((ref) {
  final box = ref.watch(userBoxProvider);
  return UserLocalServiceImpl(box);
});

final userNetworkServiceProvider = Provider<UserNetworkService>((ref) {
  final dio = ref.watch(dioProvider);
  return UserNetworkServiceImpl(dio);
});

final userRepositoryProvider = Provider<UserRepository>((ref) {
  final localService = ref.watch(userLocalServiceProvider);
  final networkService = ref.watch(userNetworkServiceProvider);
  return UserRepositoryImpl(localService, networkService);
});
