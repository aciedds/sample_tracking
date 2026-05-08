import 'package:hooks_riverpod/hooks_riverpod.dart';

final historyItemsProvider = StateProvider<List<String>>(
  (ref) => <String>[
    'Mon - Full Body (32 min)',
    'Wed - Upper Body (28 min)',
    'Fri - Cardio + Core (24 min)',
  ],
);
