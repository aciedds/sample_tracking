import 'package:daily_reboot_tracker/core/state/data/data_state.dart';

abstract class LoginUsecase {
  Future<DataState<bool>> call(String email, String password);
}
