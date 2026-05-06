import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/di/providers.dart';
import 'features/tracker/presentation/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  final box = await Hive.openBox<Map<String, dynamic>>('trackerBox');

  runApp(
    ProviderScope(
      overrides: [trackerBoxProvider.overrideWithValue(box)],
      child: const DailyRebootApp(),
    ),
  );
}

class DailyRebootApp extends StatelessWidget {
  const DailyRebootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daily Reboot Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
