import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_weight_entry.freezed.dart';

@freezed
class BodyWeightEntry with _$BodyWeightEntry {
  const factory BodyWeightEntry({
    required String id,
    required String userId,
    required double weightKg,
    required double bmi,
    required DateTime recordedAt,
    String? note,
  }) = _BodyWeightEntry;
}
