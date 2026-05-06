import 'tracker_models.dart';

class TrackerState {
  const TrackerState({
    required this.today,
    required this.streak,
    required this.weeklySummary,
  });

  final DailyTrackerRecord today;
  final StreakStats streak;
  final WeeklySummary weeklySummary;

  TrackerState copyWith({
    DailyTrackerRecord? today,
    StreakStats? streak,
    WeeklySummary? weeklySummary,
  }) {
    return TrackerState(
      today: today ?? this.today,
      streak: streak ?? this.streak,
      weeklySummary: weeklySummary ?? this.weeklySummary,
    );
  }
}
