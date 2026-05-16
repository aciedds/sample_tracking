import 'package:daily_reboot_tracker/features/auth/domain/usecase/login_usecase.dart';
import 'package:daily_reboot_tracker/features/auth/domain/usecase/login_usecase_impl.dart';
import 'package:daily_reboot_tracker/features/auth/domain/usecase/logout_usecase.dart';
import 'package:daily_reboot_tracker/features/auth/domain/usecase/logout_usecase_impl.dart';
import 'package:daily_reboot_tracker/features/auth/domain/usecase/register_usecase.dart';
import 'package:daily_reboot_tracker/features/auth/domain/usecase/register_usecase_impl.dart';
import 'package:daily_reboot_tracker/features/user/data/di/user_providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loginUsecaseProvider = Provider<LoginUsecase>((ref) {
  return LoginUsecaseImpl(ref.watch(userRepositoryProvider));
});

final logoutUsecaseProvider = Provider<LogoutUsecase>((ref) {
  return LogoutUsecaseImpl(ref.watch(userRepositoryProvider));
});

final registerUsecaseProvider = Provider<RegisterUsecase>((ref) {
  return RegisterUsecaseImpl(
    ref.watch(userRepositoryProvider),
    ref.watch(loginUsecaseProvider),
  );
});
