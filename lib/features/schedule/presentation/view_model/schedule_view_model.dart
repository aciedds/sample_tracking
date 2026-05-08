import 'package:hooks_riverpod/hooks_riverpod.dart';

final weeklyScheduleProvider = StateProvider<List<String>>(
  (ref) => <String>[
    'Mon - Workout',
    'Tue - Rest',
    'Wed - Workout',
    'Thu - Rest',
    'Fri - Workout',
    'Sat - Light Cardio',
    'Sun - Rest',
  ],
);
