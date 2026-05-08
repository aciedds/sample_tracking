import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_summary.freezed.dart';

@freezed
class DashboardSummary with _$DashboardSummary {
  const DashboardSummary._();

  const factory DashboardSummary({
    required String userId,
    required int currentStreak,
    required int longestStreak,
    required int completedThisWeek,
    required int targetPerWeek,
    String? todayWorkoutLabel,
    required bool todayCompleted,
    required DateTime lastUpdated,
  }) = _DashboardSummary;

  bool get isRestDay => todayWorkoutLabel == null;
  double get weeklyProgress =>
      targetPerWeek > 0 ? completedThisWeek / targetPerWeek : 0;
}
