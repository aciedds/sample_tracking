import 'package:hive/hive.dart';

import '../domain/tracker_models.dart';

class TrackerRepository {
  const TrackerRepository(this._box);

  final Box<Map<String, dynamic>> _box;

  Future<DailyTrackerRecord> loadDay(String dateKey) async {
    final raw = _box.get(dateKey);
    if (raw == null) return DailyTrackerRecord.empty(dateKey);
    return DailyTrackerRecord.fromMap(dateKey, raw);
  }

  Future<void> saveDay(DailyTrackerRecord record) async {
    await _box.put(record.dateKey, record.toMap());
  }

  Map<String, DailyTrackerRecord> readAll() {
    final map = <String, DailyTrackerRecord>{};
    for (final key in _box.keys) {
      final dateKey = key.toString();
      final raw = _box.get(dateKey);
      if (raw == null) continue;
      map[dateKey] = DailyTrackerRecord.fromMap(dateKey, raw);
    }
    return map;
  }
}
