import 'package:daily_reboot_tracker/features/workout_session/data/models/local/set_log/set_log_local_model.dart';

abstract class SetLogLocalService {
  Future<void> create(String key, SetLogLocalModel value);
  SetLogLocalModel? read(String key);
  Future<void> update(String key, SetLogLocalModel value);
  Future<void> delete(String key);
  List<SetLogLocalModel> readAll();
}
