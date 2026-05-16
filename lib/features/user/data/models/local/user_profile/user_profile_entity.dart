import 'package:hive/hive.dart';

part 'user_profile_entity.g.dart';

@HiveType(typeId: 2)
class UserProfileEntity {
  const UserProfileEntity({
    required this.userId,
    required this.weightKg,
    required this.heightCm,
    required this.ageYears,
    required this.gender,
    required this.goalType,
    this.targetWeightKg,
    required this.level,
    required this.workoutDaysPerWeek,
    required this.bmi,
    required this.bmr,
  });

  @HiveField(0)
  final String userId;
  @HiveField(1)
  final double weightKg;
  @HiveField(2)
  final double heightCm;
  @HiveField(3)
  final int ageYears;
  @HiveField(4)
  final String gender;
  @HiveField(5)
  final String goalType;
  @HiveField(6)
  final double? targetWeightKg;
  @HiveField(7)
  final String level;
  @HiveField(8)
  final int workoutDaysPerWeek;
  @HiveField(9)
  final double bmi;
  @HiveField(10)
  final double bmr;
}
