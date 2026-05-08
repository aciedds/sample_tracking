import 'package:hive/hive.dart';

import '../../../../domain/entities/session_record/session_record.dart';

part 'session_record_local_model.g.dart';

@HiveType(typeId: 2)
class SessionRecordLocalModel {
  const SessionRecordLocalModel({
    required this.id,
    required this.userId,
    required this.dayLabel,
    required this.date,
    required this.durationSeconds,
    required this.completedSets,
    required this.totalSets,
    required this.estimatedCalories,
    required this.performanceScore,
  });

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String userId;
  @HiveField(2)
  final String dayLabel;
  @HiveField(3)
  final DateTime date;
  @HiveField(4)
  final int durationSeconds;
  @HiveField(5)
  final int completedSets;
  @HiveField(6)
  final int totalSets;
  @HiveField(7)
  final double estimatedCalories;
  @HiveField(8)
  final double performanceScore;

  SessionRecord toEntity() => SessionRecord(
        id: id,
        userId: userId,
        dayLabel: dayLabel,
        date: date,
        durationSeconds: durationSeconds,
        completedSets: completedSets,
        totalSets: totalSets,
        estimatedCalories: estimatedCalories,
        performanceScore: performanceScore,
      );

  factory SessionRecordLocalModel.fromEntity(SessionRecord entity) =>
      SessionRecordLocalModel(
        id: entity.id,
        userId: entity.userId,
        dayLabel: entity.dayLabel,
        date: entity.date,
        durationSeconds: entity.durationSeconds,
        completedSets: entity.completedSets,
        totalSets: entity.totalSets,
        estimatedCalories: entity.estimatedCalories,
        performanceScore: entity.performanceScore,
      );
}
