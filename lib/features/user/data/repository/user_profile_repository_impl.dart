import 'package:daily_reboot_tracker/features/user/domain/repository/user_profile_repository.dart';
import 'package:daily_reboot_tracker/features/user/data/models/local/user_profile/user_profile_entity.dart';
import 'package:daily_reboot_tracker/features/user/data/service/local/user_profile/user_profile_local_service.dart';

class UserProfileRepositoryImpl extends UserProfileRepository {
  UserProfileRepositoryImpl(this._localService);

  final UserProfileLocalService _localService;

  @override
  Future<void> createLocal(String key, UserProfileEntity value) async =>
      _localService.create(key, value);

  @override
  UserProfileEntity? readLocal(String key) => _localService.read(key);

  @override
  Future<void> updateLocal(String key, UserProfileEntity value) async =>
      _localService.update(key, value);

  @override
  Future<void> deleteLocal(String key) async => _localService.delete(key);

  @override
  List<UserProfileEntity> readAllLocal() => _localService.readAll();
}
