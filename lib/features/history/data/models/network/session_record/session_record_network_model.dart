import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/session_record/session_record.dart';

part 'session_record_network_model.freezed.dart';
part 'session_record_network_model.g.dart';

@freezed
class SessionRecordNetworkModel with _$SessionRecordNetworkModel {
  const factory SessionRecordNetworkModel({
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'day_label') required String dayLabel,
    required DateTime date,
    @JsonKey(name: 'duration_seconds') required int durationSeconds,
    @JsonKey(name: 'completed_sets') required int completedSets,
    @JsonKey(name: 'total_sets') required int totalSets,
    @JsonKey(name: 'estimated_calories') required double estimatedCalories,
    @JsonKey(name: 'performance_score') required double performanceScore,
  }) = _SessionRecordNetworkModel;

  factory SessionRecordNetworkModel.fromJson(Map<String, dynamic> json) =>
      _$SessionRecordNetworkModelFromJson(json);
}

extension SessionRecordNetworkModelX on SessionRecordNetworkModel {
  SessionRecord toEntity() => SessionRecord(
        id: id,
        userId: userId,
        dayLabel: dayLabel,
        date: date,
        durationSeconds: durationSeconds,
        completedSets: completedSets,
        totalSets: totalSets,
        estimatedCalories: estimatedCalories,
        performanceScore: performanceScore,
      );
}
