import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/user/user.dart';

part 'user_network_model.freezed.dart';
part 'user_network_model.g.dart';

@freezed
class UserNetworkModel with _$UserNetworkModel {
  const factory UserNetworkModel({
    required String id,
    required String email,
    @JsonKey(name: 'display_name') String? displayName,
    @JsonKey(name: 'photo_url') String? photoUrl,
    @JsonKey(name: 'created_at') required DateTime createdAt,
  }) = _UserNetworkModel;

  factory UserNetworkModel.fromJson(Map<String, dynamic> json) =>
      _$UserNetworkModelFromJson(json);
}

extension UserNetworkModelX on UserNetworkModel {
  User toEntity() => User(
        id: id,
        email: email,
        displayName: displayName,
        photoUrl: photoUrl,
        createdAt: createdAt,
      );
}
