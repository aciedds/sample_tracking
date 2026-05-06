import '../../food/domain/food_item.dart';

enum TrackerMode { ideal, fallback }

const checklistKeys = <String>['workout', 'core', 'cardio', 'stretch'];

class DailyTrackerRecord {
  const DailyTrackerRecord({
    required this.dateKey,
    required this.checklist,
    required this.mode,
    required this.foods,
  });

  final String dateKey;
  final Map<String, bool> checklist;
  final TrackerMode mode;
  final List<FoodItem> foods;

  DailyTrackerRecord copyWith({
    Map<String, bool>? checklist,
    TrackerMode? mode,
    List<FoodItem>? foods,
  }) {
    return DailyTrackerRecord(
      dateKey: dateKey,
      checklist: checklist ?? this.checklist,
      mode: mode ?? this.mode,
      foods: foods ?? this.foods,
    );
  }

  int get score => checklist.values.where((done) => done).length;
  int get totalCalories =>
      foods.fold(0, (sum, food) => sum + food.calories);

  Map<String, dynamic> toMap() {
    return {
      'checklist': {
        ...checklist,
        'mode': mode.name,
      },
      'foods': foods.map((food) => food.toMap()).toList(),
    };
  }

  factory DailyTrackerRecord.empty(String dateKey) {
    return DailyTrackerRecord(
      dateKey: dateKey,
      checklist: {for (final key in checklistKeys) key: false},
      mode: TrackerMode.ideal,
      foods: const [],
    );
  }

  factory DailyTrackerRecord.fromMap(String dateKey, Map<String, dynamic> map) {
    final checklistRaw = (map['checklist'] as Map?)?.cast<String, dynamic>() ??
        <String, dynamic>{};
    final foodsRaw = (map['foods'] as List?)?.cast<dynamic>() ?? const [];
    final modeName = checklistRaw['mode']?.toString() ?? TrackerMode.ideal.name;

    return DailyTrackerRecord(
      dateKey: dateKey,
      checklist: {
        for (final key in checklistKeys) key: checklistRaw[key] == true,
      },
      mode: modeName == TrackerMode.fallback.name
          ? TrackerMode.fallback
          : TrackerMode.ideal,
      foods: foodsRaw
          .map(
            (item) => FoodItem.fromMap(
              (item as Map).cast<String, dynamic>(),
            ),
          )
          .toList(),
    );
  }
}

class StreakStats {
  const StreakStats({required this.current, required this.longest});

  final int current;
  final int longest;
}

class WeeklyDayStats {
  const WeeklyDayStats({
    required this.date,
    required this.score,
    required this.totalCalories,
    required this.success,
  });

  final DateTime date;
  final int score;
  final int totalCalories;
  final bool success;
}

class WeeklySummary {
  const WeeklySummary({
    required this.days,
    required this.avgScore,
    required this.avgCalories,
    required this.successCount,
  });

  final List<WeeklyDayStats> days;
  final double avgScore;
  final double avgCalories;
  final int successCount;
}
