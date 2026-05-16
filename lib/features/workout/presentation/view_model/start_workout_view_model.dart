import 'package:hooks_riverpod/hooks_riverpod.dart';

class StartWorkoutUiState {
  const StartWorkoutUiState({this.sets = 0, this.elapsed = 0});

  final int sets;
  final int elapsed;

  StartWorkoutUiState copyWith({int? sets, int? elapsed}) {
    return StartWorkoutUiState(
      sets: sets ?? this.sets,
      elapsed: elapsed ?? this.elapsed,
    );
  }
}

class StartWorkoutViewModel extends StateNotifier<StartWorkoutUiState> {
  StartWorkoutViewModel() : super(const StartWorkoutUiState());

  void addSet() => state = state.copyWith(sets: state.sets + 1);
  void addMinutes(int value) => state = state.copyWith(elapsed: state.elapsed + value);
}

final startWorkoutViewModelProvider =
    StateNotifierProvider<StartWorkoutViewModel, StartWorkoutUiState>(
      (ref) => StartWorkoutViewModel(),
    );
