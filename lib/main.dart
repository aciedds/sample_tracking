import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:daily_reboot_tracker/features/app/presentation/app_flow_controller.dart';
import 'package:daily_reboot_tracker/features/auth/presentation/auth_screen.dart';
import 'package:daily_reboot_tracker/features/home/presentation/post_login_shell_screen.dart';
import 'package:daily_reboot_tracker/features/onboarding/presentation/onboarding_screen.dart';
import 'package:daily_reboot_tracker/features/onboarding/presentation/post_login_setup_screen.dart';
import 'package:daily_reboot_tracker/features/splash/presentation/splash_screen.dart';

void main() {
  runApp(const ProviderScope(child: DailyRebootApp()));
}

class DailyRebootApp extends HookConsumerWidget {
  const DailyRebootApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stage = ref.watch(appStageProvider);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Daily Reboot Tracker',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
      home: switch (stage) {
        AppStage.splash => SplashScreen(
          onContinue: () =>
              ref.read(appStageProvider.notifier).state = AppStage.onboarding,
        ),
        AppStage.onboarding => OnboardingScreen(
          onFinish: () =>
              ref.read(appStageProvider.notifier).state = AppStage.auth,
        ),
        AppStage.auth => AuthScreen(
          onLogin: () =>
              ref.read(appStageProvider.notifier).state = AppStage.postLoginSetup,
        ),
        AppStage.postLoginSetup => PostLoginSetupScreen(
          onFinishSetup: () =>
              ref.read(appStageProvider.notifier).state = AppStage.home,
        ),
        AppStage.home => const PostLoginShellScreen(),
      },
    );
  }
}
