import 'package:flutter/material.dart';

import '../../tracker/domain/tracker_models.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key, required this.summary});

  final WeeklySummary summary;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Weekly Summary',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 8),
                Text('Avg score: ${summary.avgScore.toStringAsFixed(2)}'),
                Text(
                  'Avg calories: ${summary.avgCalories.toStringAsFixed(0)} kcal',
                ),
                Text('Success days: ${summary.successCount}/7'),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        ...summary.days.map(
          (day) => Card(
            child: ListTile(
              title: Text(
                '${day.date.year}-${day.date.month.toString().padLeft(2, '0')}-${day.date.day.toString().padLeft(2, '0')}',
              ),
              subtitle: Text(
                'Score: ${day.score}  |  Calories: ${day.totalCalories}',
              ),
              trailing: Icon(
                day.success ? Icons.check_circle : Icons.cancel,
                color: day.success ? Colors.green : Colors.red,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
