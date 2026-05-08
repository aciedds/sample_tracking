import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({super.key, required this.onContinue});

  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.fitness_center, size: 64),
              const SizedBox(height: 16),
              const Text(
                'Daily Reboot Tracker',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text('Simple workout tracking app'),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: onContinue,
                child: const Text('Mulai'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
