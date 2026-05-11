import 'package:daily_reboot_tracker/features/auth/data/models/entities/user/user_entity.dart';
import 'package:daily_reboot_tracker/features/auth/domain/usecase/user_usecases.dart';
import 'package:daily_reboot_tracker/features/auth/domain/usecase/user_usecases_impl.dart';
import 'package:hive/hive.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:daily_reboot_tracker/core/di/providers.dart';
import 'package:daily_reboot_tracker/features/auth/data/repository/user_repository_impl.dart';
import 'package:daily_reboot_tracker/features/auth/data/data_source/local/user_local_service.dart';
import 'package:daily_reboot_tracker/features/auth/data/data_source/local/user_local_service_impl.dart';
import 'package:daily_reboot_tracker/features/auth/domain/repository/user_repository.dart';

final userBoxProvider = Provider<Box<UserEntity>>(
  (ref) => throw UnimplementedError('Override userBoxProvider in main().'),
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

final userUsecaseProvider = Provider<UserUsecases>((ref) {
  final userRepository = ref.watch(userRepositoryProvider);
  return UserUsecasesImpl(userRepository);
});
