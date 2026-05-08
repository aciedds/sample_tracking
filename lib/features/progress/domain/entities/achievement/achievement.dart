import 'package:freezed_annotation/freezed_annotation.dart';

part 'achievement.freezed.dart';

enum AchievementType {
  firstWorkout,
  streak3,
  streak7,
  streak30,
  weightLost5kg,
  workouts10,
  workouts50,
}

@freezed
class Achievement with _$Achievement {
  const Achievement._();

  const factory Achievement({
    required AchievementType type,
    required String title,
    required String description,
    required String iconAsset,
    DateTime? unlockedAt,
  }) = _Achievement;

  bool get isUnlocked => unlockedAt != null;
}
