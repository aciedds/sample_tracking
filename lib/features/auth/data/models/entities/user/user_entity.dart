import 'package:daily_reboot_tracker/features/auth/domain/entities/user/user.dart';
import 'package:hive/hive.dart';

part 'user_entity.g.dart';

@HiveType(typeId: 1)
class UserEntity {
  const UserEntity({
    required this.id,
    required this.email,
    required this.createdAt,
    required this.updatedAt,
    this.displayName,
    this.photoUrl,
  });

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String email;

  @HiveField(2)
  final String? displayName;

  @HiveField(3)
  final String? photoUrl;

  @HiveField(4)
  final DateTime createdAt;

  @HiveField(5)
  final DateTime updatedAt;

  User toDomain() => User(
        id: id,
        email: email,
        displayName: displayName,
        photoUrl: photoUrl,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );

  factory UserEntity.fromDomain(User entity) => UserEntity(
        id: entity.id,
        email: entity.email,
        displayName: entity.displayName,
        photoUrl: entity.photoUrl,
        createdAt: entity.createdAt,
        updatedAt: entity.updatedAt,
      );
}
