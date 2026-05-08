import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_record.freezed.dart';

@freezed
class SessionRecord with _$SessionRecord {
  const factory SessionRecord({
    required String id,
    required String userId,
    required String dayLabel,
    required DateTime date,
    required int durationSeconds,
    required int completedSets,
    required int totalSets,
    required double estimatedCalories,
    required double performanceScore,
  }) = _SessionRecord;
}
