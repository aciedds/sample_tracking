import 'package:hive/hive.dart';

part 'set_log_local_model.g.dart';

@HiveType(typeId: 8)
class SetLogLocalModel {
  const SetLogLocalModel({
    required this.id,
    required this.exerciseId,
    required this.exerciseName,
    required this.setNumber,
    required this.targetReps,
    this.completedReps,
    this.weightKg,
    this.durationSeconds,
    this.isCompleted = false,
    this.isSkipped = false,
  });

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String exerciseId;
  @HiveField(2)
  final String exerciseName;
  @HiveField(3)
  final int setNumber;
  @HiveField(4)
  final int targetReps;
  @HiveField(5)
  final int? completedReps;
  @HiveField(6)
  final double? weightKg;
  @HiveField(7)
  final int? durationSeconds;
  @HiveField(8)
  final bool isCompleted;
  @HiveField(9)
  final bool isSkipped;
}
