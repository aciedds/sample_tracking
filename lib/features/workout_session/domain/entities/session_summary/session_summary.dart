import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_summary.freezed.dart';

@freezed
class SessionSummary with _$SessionSummary {
  const SessionSummary._();

  const factory SessionSummary({
    required String sessionId,
    required int durationSeconds,
    required int totalSets,
    required int completedSets,
    required int skippedSets,
    required double estimatedCalories,
    required double performanceScore,
  }) = _SessionSummary;

  String get durationFormatted {
    final m = durationSeconds ~/ 60;
    final s = durationSeconds % 60;
    return '${m}m ${s}s';
  }
}
