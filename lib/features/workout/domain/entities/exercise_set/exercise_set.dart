import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_set.freezed.dart';

@freezed
class ExerciseSet with _$ExerciseSet {
  const factory ExerciseSet({
    required String id,
    required String exerciseId,
    required String exerciseName,
    required int setNumber,
    required int targetReps,
    int? completedReps,
    double? weightKg,
    int? durationSeconds,
    @Default(false) bool isCompleted,
    @Default(false) bool isSkipped,
  }) = _ExerciseSet;
}
