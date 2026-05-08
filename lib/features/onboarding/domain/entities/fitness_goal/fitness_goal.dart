import 'package:freezed_annotation/freezed_annotation.dart';

part 'fitness_goal.freezed.dart';

enum FitnessGoalType { loseWeight, gainMuscle, maintain }

@freezed
class FitnessGoal with _$FitnessGoal {
  const factory FitnessGoal({
    required FitnessGoalType type,
    double? targetWeightKg,
  }) = _FitnessGoal;
}
