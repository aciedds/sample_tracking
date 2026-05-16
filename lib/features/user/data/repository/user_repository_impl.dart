import 'package:daily_reboot_tracker/core/state/data/data_state.dart';
import 'package:daily_reboot_tracker/features/user/data/models/local/user/user_entity.dart';
import 'package:daily_reboot_tracker/features/user/data/service/local/user/user_local_service.dart';
import 'package:daily_reboot_tracker/features/user/domain/entities/user/user.dart';
import 'package:daily_reboot_tracker/features/user/domain/repository/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final UserLocalService _localService;
  UserRepositoryImpl(this._localService);

  @override
  Future<DataState<bool>> clearCurrentSession() async {
    try {
      final result = await _localService.clearCurrentSession();
      return DataState.success(data: result);
    } catch (e, stackTrace) {
      return DataState.failed(
        exception: e,
        message: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<DataState<bool>> createNewUser(
    User userData, {
    required String password,
  }) async {
    try {
      final result = await _localService.createNewUser(
        email: userData.email,
        displayName: userData.displayName,
        displayPicture: userData.photoUrl,
        password: password,
      );
      return DataState.success(data: result);
    } catch (e, stackTrace) {
      return DataState.failed(
        exception: e,
        message: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  @override
  DataState<User> findUserByEmail(String email) {
    try {
      final result = _localService.findUserByEmail(email);
      if (result != null) {
        return DataState.success(data: result.toDomain());
      } else {
        return DataState.failed(message: "Data Not Found");
      }
    } catch (e, stackTrace) {
      return DataState.failed(
        exception: e,
        message: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  @override
  DataState<User> getCurrentSession() {
    try {
      final result = _localService.getCurrentSession();
      if (result != null) {
        return DataState.success(data: result.toDomain());
      } else {
        return DataState.failed(message: "Data Not Found");
      }
    } catch (e, stackTrace) {
      return DataState.failed(
        exception: e,
        message: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<DataState<bool>> signInWithCredentials({
    required String email,
    required String password,
  }) async {
    try {
      final entity = _localService.findUserByEmail(email);
      if (entity == null) {
        return const DataState.failed(message: 'Invalid email or password');
      }
      final stored = entity.password;
      final passwordOk = (stored == null || stored.isEmpty)
          ? password.isNotEmpty
          : stored == password;
      if (!passwordOk) {
        return const DataState.failed(message: 'Invalid email or password');
      }
      final saved = await _localService.saveCurrentSession(entity);
      return saved
          ? const DataState.success(data: true)
          : const DataState.failed(message: 'Could not save session');
    } catch (e, stackTrace) {
      return DataState.failed(
        exception: e,
        message: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }

  @override
  Future<DataState<bool>> saveCurrentSession(User userData) async {
    try {
      final result = await _localService.saveCurrentSession(
        UserEntity.fromDomain(userData),
      );
      return DataState.success(data: result);
    } catch (e, stackTrace) {
      return DataState.failed(
        exception: e,
        message: e.toString(),
        stackTrace: stackTrace,
      );
    }
  }
}
