import 'package:hive/hive.dart';

import '../../../../domain/entities/user/user.dart';

part 'user_local_model.g.dart';

@HiveType(typeId: 1)
class UserLocalModel {
  const UserLocalModel({
    required this.id,
    required this.email,
    this.displayName,
    this.photoUrl,
    required this.createdAt,
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

  User toEntity() => User(
        id: id,
        email: email,
        displayName: displayName,
        photoUrl: photoUrl,
        createdAt: createdAt,
      );

  factory UserLocalModel.fromEntity(User entity) => UserLocalModel(
        id: entity.id,
        email: entity.email,
        displayName: entity.displayName,
        photoUrl: entity.photoUrl,
        createdAt: entity.createdAt,
      );
}
