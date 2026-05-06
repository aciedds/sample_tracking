import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod/riverpod.dart';

import '../../../core/di/providers.dart';
import '../../food/domain/food_item.dart';
import '../data/tracker_repository.dart';
import '../domain/tracker_models.dart';
import '../domain/tracker_state.dart';
import '../domain/tracker_stats.dart';

part 'tracker_controller.g.dart';

@riverpod
TrackerRepository trackerRepository(Ref ref) {
  final box = ref.watch(trackerBoxProvider);
  return TrackerRepository(box);
}

@riverpod
class TrackerController extends _$TrackerController {
  String get _todayKey => toDateKey(DateTime.now());

  @override
  Future<TrackerState> build() async {
    final repo = ref.watch(trackerRepositoryProvider);
    final today = await repo.loadDay(_todayKey);
    return _buildState(today);
  }

  Future<void> updateChecklist(String key, bool value) async {
    final current = await future;
    final updatedChecklist = {...current.today.checklist, key: value};
    await _saveToday(current.today.copyWith(checklist: updatedChecklist));
  }

  Future<void> updateMode(TrackerMode mode) async {
    final current = await future;
    await _saveToday(current.today.copyWith(mode: mode));
  }

  Future<void> addFood(FoodItem food) async {
    final current = await future;
    final foods = [...current.today.foods, food];
    await _saveToday(current.today.copyWith(foods: foods));
  }

  Future<void> _saveToday(DailyTrackerRecord record) async {
    state = const AsyncValue.loading();
    final repo = ref.read(trackerRepositoryProvider);
    await repo.saveDay(record);
    state = AsyncValue.data(_buildState(record));
  }

  TrackerState _buildState(DailyTrackerRecord todayRecord) {
    final repo = ref.read(trackerRepositoryProvider);
    final all = repo.readAll();
    all[todayRecord.dateKey] = todayRecord;

    return TrackerState(
      today: todayRecord,
      streak: computeStreak(all),
      weeklySummary: computeWeeklySummary(all),
    );
  }
}
