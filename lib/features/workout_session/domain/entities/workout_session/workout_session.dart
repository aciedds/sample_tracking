import '../exercise_set/exercise_set.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_session.freezed.dart';

enum SessionStatus { idle, active, paused, completed, cancelled }

@freezed
class WorkoutSession with _$WorkoutSession {
  const WorkoutSession._();

  const factory WorkoutSession({
    required String id,
    required String userId,
    required String workoutPlanId,
    required String dayLabel,
    required DateTime startedAt,
    DateTime? finishedAt,
    required List<ExerciseSet> sets,
    @Default(SessionStatus.idle) SessionStatus status,
  }) = _WorkoutSession;

  int get totalDurationSeconds =>
      finishedAt?.difference(startedAt).inSeconds ?? 0;

  int get completedSets => sets.where((s) => s.isCompleted).length;
  int get totalSets => sets.length;
}
