import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_weight_network_model.freezed.dart';
part 'body_weight_network_model.g.dart';

@freezed
class BodyWeightNetworkModel with _$BodyWeightNetworkModel {
  const factory BodyWeightNetworkModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'weight_kg') required double weightKg,
    required double bmi,
    @JsonKey(name: 'recorded_at') required DateTime recordedAt,
    String? note,
  }) = _BodyWeightNetworkModel;

  factory BodyWeightNetworkModel.fromJson(Map<String, dynamic> json) =>
      _$BodyWeightNetworkModelFromJson(json);
}
