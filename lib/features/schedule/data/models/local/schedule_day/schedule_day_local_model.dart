import 'package:hive/hive.dart';

part 'schedule_day_local_model.g.dart';

@HiveType(typeId: 4)
class ScheduleDayLocalModel {
  const ScheduleDayLocalModel({
    required this.id,
    required this.userId,
    required this.date,
    required this.dayOfWeek,
    required this.status,
    this.workoutPlanDayLabel,
    this.sessionId,
  });

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String userId;
  @HiveField(2)
  final DateTime date;
  @HiveField(3)
  final int dayOfWeek;
  @HiveField(4)
  final String status;
  @HiveField(5)
  final String? workoutPlanDayLabel;
  @HiveField(6)
  final String? sessionId;
}
