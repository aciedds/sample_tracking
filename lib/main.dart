import 'package:daily_reboot_tracker/core/di/providers.dart';
import 'package:daily_reboot_tracker/features/auth/presentation/login/view/login_view.dart';
import 'package:daily_reboot_tracker/features/auth/presentation/register/view/register_view.dart';
import 'package:daily_reboot_tracker/features/user/data/di/user_providers.dart';
import 'package:daily_reboot_tracker/features/user/data/models/local/user/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:daily_reboot_tracker/features/app/presentation/app_flow_controller.dart';
import 'package:daily_reboot_tracker/features/home/presentation/post_login_shell_screen.dart';
import 'package:daily_reboot_tracker/features/onboarding/presentation/fitness_goal_setup_screen.dart';
import 'package:daily_reboot_tracker/features/onboarding/presentation/onboarding_screen.dart';
import 'package:daily_reboot_tracker/features/onboarding/presentation/physical_profile_setup_screen.dart';
import 'package:daily_reboot_tracker/features/onboarding/presentation/post_login_setup_screen.dart';
import 'package:daily_reboot_tracker/features/user/data/models/local/user_profile/user_profile_entity.dart';
import 'package:daily_reboot_tracker/features/splash/presentation/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  if (!Hive.isAdapterRegistered(1)) {
    Hive.registerAdapter(UserEntityAdapter());
  }
  if (!Hive.isAdapterRegistered(2)) {
    Hive.registerAdapter(UserProfileEntityAdapter());
  }

  final userBox = await Hive.openBox<UserEntity>('users');
  final userProfileBox = await Hive.openBox<UserProfileEntity>('user_profiles');

  runApp(
    ProviderScope(
      overrides: [
        userBoxProvider.overrideWithValue(userBox),
        userProfileBoxProvider.overrideWithValue(userProfileBox),
        dioBaseUrlProvider.overrideWithValue('http://localhost'),
      ],
      child: const DailyRebootApp(),
    ),
  );
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
              ref.read(appStageProvider.notifier).state = AppStage.login,
        ),
        AppStage.login => LoginView(
          onAuthenticated: () => ref.read(appStageProvider.notifier).state =
              AppStage.physicalProfileSetup,
          onGoToRegister: () =>
              ref.read(appStageProvider.notifier).state = AppStage.register,
        ),
        AppStage.register => RegisterView(
          onRegistered: () => ref.read(appStageProvider.notifier).state =
              AppStage.physicalProfileSetup,
          onGoToLogin: () =>
              ref.read(appStageProvider.notifier).state = AppStage.login,
        ),
        AppStage.physicalProfileSetup => PhysicalProfileSetupScreen(
          onContinue: () => ref.read(appStageProvider.notifier).state =
              AppStage.fitnessGoalSetup,
        ),
        AppStage.fitnessGoalSetup => FitnessGoalSetupScreen(
          onBack: () => ref.read(appStageProvider.notifier).state =
              AppStage.physicalProfileSetup,
          onContinue: () => ref.read(appStageProvider.notifier).state =
              AppStage.postLoginSetup,
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
