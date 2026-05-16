import 'package:daily_reboot_tracker/core/state/data/data_state.dart';
import 'package:daily_reboot_tracker/features/user/domain/entities/user/user.dart';

abstract class RegisterUsecase {
  Future<DataState<bool>> call({
    required User data,
    required String password,
    required String validatePassword,
  });
}
