import 'package:daily_reboot_tracker/features/auth/domain/usecase/logout_usecase.dart';
import 'package:daily_reboot_tracker/features/user/domain/repository/user_repository.dart';

class LogoutUsecaseImpl implements LogoutUsecase {
  LogoutUsecaseImpl(this._userRepository);

  final UserRepository _userRepository;

  @override
  Future<bool> call() async {
    final result = await _userRepository.clearCurrentSession();
    return result.when(
      success: (_) => true,
      failed: (_, __, ___, ____) => false,
    );
  }
}
