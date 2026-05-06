import 'tracker_models.dart';

bool isSuccess(DailyTrackerRecord record) => record.score >= 3;

String toDateKey(DateTime date) {
  final y = date.year.toString().padLeft(4, '0');
  final m = date.month.toString().padLeft(2, '0');
  final d = date.day.toString().padLeft(2, '0');
  return '$y-$m-$d';
}

StreakStats computeStreak(Map<String, DailyTrackerRecord> allRecords) {
  if (allRecords.isEmpty) return const StreakStats(current: 0, longest: 0);

  final sorted = allRecords.entries.toList()
    ..sort((a, b) => a.key.compareTo(b.key));

  var longest = 0;
  var running = 0;
  DateTime? previousDate;

  for (final entry in sorted) {
    final date = DateTime.parse(entry.key);
    final success = isSuccess(entry.value);
    final contiguous =
        previousDate == null || date.difference(previousDate).inDays == 1;
    if (!contiguous) {
      running = 0;
    }
    running = success ? running + 1 : 0;
    if (running > longest) longest = running;
    previousDate = date;
  }

  var current = 0;
  final today = DateTime.now();
  for (var i = 0; i < 366; i++) {
    final date = DateTime(today.year, today.month, today.day - i);
    final record = allRecords[toDateKey(date)];
    if (record == null || !isSuccess(record)) break;
    current++;
  }

  return StreakStats(current: current, longest: longest);
}

WeeklySummary computeWeeklySummary(Map<String, DailyTrackerRecord> allRecords) {
  final now = DateTime.now();
  final days = <WeeklyDayStats>[];

  for (var i = 6; i >= 0; i--) {
    final date = DateTime(now.year, now.month, now.day - i);
    final record =
        allRecords[toDateKey(date)] ?? DailyTrackerRecord.empty(toDateKey(date));
    days.add(
      WeeklyDayStats(
        date: date,
        score: record.score,
        totalCalories: record.totalCalories,
        success: isSuccess(record),
      ),
    );
  }

  final totalScore = days.fold(0, (sum, day) => sum + day.score);
  final totalCalories = days.fold(0, (sum, day) => sum + day.totalCalories);
  final successCount = days.where((day) => day.success).length;

  return WeeklySummary(
    days: days,
    avgScore: totalScore / days.length,
    avgCalories: totalCalories / days.length,
    successCount: successCount,
  );
}
