import 'package:daily_reboot_tracker/core/state/data/data_state.dart';
import 'package:daily_reboot_tracker/features/auth/data/models/entities/user/user_entity.dart';
import 'package:daily_reboot_tracker/features/auth/domain/entities/user/user.dart';
import 'package:daily_reboot_tracker/features/auth/domain/repository/user_repository.dart';
import 'package:daily_reboot_tracker/features/auth/data/data_source/local/user_local_service.dart';

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
  Future<DataState<bool>> createNewUser(User userData) async {
    try {
      final result = await _localService.createNewUser(
        email: userData.email,
        displayName: userData.displayName,
        displayPicture: userData.photoUrl,
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
