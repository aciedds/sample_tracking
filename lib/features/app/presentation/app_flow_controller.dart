import 'package:hooks_riverpod/hooks_riverpod.dart';

enum AppStage { splash, onboarding, auth, postLoginSetup, home }

final appStageProvider = StateProvider<AppStage>((ref) => AppStage.splash);
