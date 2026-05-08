import 'package:hive/hive.dart';

part 'body_weight_local_model.g.dart';

@HiveType(typeId: 3)
class BodyWeightLocalModel {
  const BodyWeightLocalModel({
    required this.id,
    required this.userId,
    required this.weightKg,
    required this.bmi,
    required this.recordedAt,
    this.note,
  });

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String userId;
  @HiveField(2)
  final double weightKg;
  @HiveField(3)
  final double bmi;
  @HiveField(4)
  final DateTime recordedAt;
  @HiveField(5)
  final String? note;
}
