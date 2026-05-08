import 'package:hive/hive.dart';

import '../set_log/set_log_local_model.dart';

part 'session_local_model.g.dart';

@HiveType(typeId: 9)
class SessionLocalModel {
  const SessionLocalModel({
    required this.id,
    required this.userId,
    required this.workoutPlanId,
    required this.dayLabel,
    required this.startedAt,
    this.finishedAt,
    required this.sets,
    this.status = 'idle',
  });

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String userId;
  @HiveField(2)
  final String workoutPlanId;
  @HiveField(3)
  final String dayLabel;
  @HiveField(4)
  final DateTime startedAt;
  @HiveField(5)
  final DateTime? finishedAt;
  @HiveField(6)
  final List<SetLogLocalModel> sets;
  @HiveField(7)
  final String status;
}
