import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeFeatureItem {
  const HomeFeatureItem(this.title, this.icon);

  final String title;
  final IconData icon;
}

final homeFeaturesProvider = Provider<List<HomeFeatureItem>>(
  (ref) => const [
    HomeFeatureItem('Start Workout', Icons.play_circle_outline),
    HomeFeatureItem('Progress', Icons.show_chart),
    HomeFeatureItem('History', Icons.history),
    HomeFeatureItem('Schedule', Icons.calendar_month),
  ],
);
