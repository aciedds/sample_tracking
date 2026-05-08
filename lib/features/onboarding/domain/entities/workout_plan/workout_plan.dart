import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_plan.freezed.dart';

@freezed
class WorkoutDay with _$WorkoutDay {
  const factory WorkoutDay({
    required int dayOfWeek,
    required String label,
    required List<String> exerciseIds,
  }) = _WorkoutDay;
}

@freezed
class WorkoutPlan with _$WorkoutPlan {
  const factory WorkoutPlan({
    required String id,
    required String userId,
    required String name,
    required List<WorkoutDay> days,
    required DateTime createdAt,
  }) = _WorkoutPlan;
}
