import 'package:hooks_riverpod/hooks_riverpod.dart';

enum AppStage {
  splash,
  onboarding,
  login,
  register,
  physicalProfileSetup,
  fitnessGoalSetup,
  postLoginSetup,
  home,
}

final appStageProvider = StateProvider<AppStage>((ref) => AppStage.splash);
