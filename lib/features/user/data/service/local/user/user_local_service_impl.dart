import 'package:daily_reboot_tracker/core/local/hive_config.dart';
import 'package:daily_reboot_tracker/features/user/data/models/local/user/user_entity.dart';
import 'package:daily_reboot_tracker/features/user/data/service/local/user/user_local_service.dart';
import 'package:uuid/uuid.dart';

class UserLocalServiceImpl extends UserLocalService {
  final HiveConfig<UserEntity> _userBox;
  UserLocalServiceImpl(this._userBox);

  final String _currentSessionKey = "current_session";

  Future<String> _generateUuid() async {
    final uuid = Uuid();
    return uuid.v1();
  }

  @override
  Future<bool> clearCurrentSession() async {
    try {
      await _userBox.delete(_currentSessionKey);
      return true;
    } catch (e) {
      return false;
    }
  }

  @override
  Future<bool> createNewUser({
    required String email,
    String? displayName,
    String? displayPicture,
    String? password,
  }) async {
    try {
      //
      final uuId = await _generateUuid();
      final createdAt = DateTime.now();
      final updatedAt = createdAt;
      await _userBox.create(
        uuId,
        UserEntity(
          id: uuId,
          email: email,
          displayName: displayName,
          photoUrl: displayPicture,
          createdAt: createdAt,
          updatedAt: updatedAt,
          password: password,
        ),
      );
      return true;
    } catch (e) {
      rethrow;
    }
  }

  @override
  UserEntity? findUserByEmail(String email) {
    try {
      final record =
          _userBox.findByField((userData) => userData.email == email);
      return record;
    } catch (e) {
      rethrow;
    }
  }

  @override
  UserEntity? getCurrentSession() {
    try {
      return _userBox.read(_currentSessionKey);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> saveCurrentSession(UserEntity record) async {
    try {
      await _userBox.create(_currentSessionKey, record);
      return true;
    } catch (e) {
      rethrow;
    }
  }
}
