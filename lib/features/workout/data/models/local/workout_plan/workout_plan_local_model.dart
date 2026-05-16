import 'package:hive/hive.dart';

part 'workout_plan_local_model.g.dart';

@HiveType(typeId: 6)
class WorkoutDayLocalModel {
  const WorkoutDayLocalModel({
    required this.dayOfWeek,
    required this.label,
    required this.exerciseIds,
  });

  @HiveField(0)
  final int dayOfWeek;
  @HiveField(1)
  final String label;
  @HiveField(2)
  final List<String> exerciseIds;
}

@HiveType(typeId: 7)
class WorkoutPlanLocalModel {
  const WorkoutPlanLocalModel({
    required this.id,
    required this.userId,
    required this.name,
    required this.days,
    required this.createdAt,
  });

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String userId;
  @HiveField(2)
  final String name;
  @HiveField(3)
  final List<WorkoutDayLocalModel> days;
  @HiveField(4)
  final DateTime createdAt;
}
