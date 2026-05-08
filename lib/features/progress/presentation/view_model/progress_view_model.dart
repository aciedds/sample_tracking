import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProgressUiState {
  const ProgressUiState({this.currentWeight = 72.5, this.targetWeight = 68.0});

  final double currentWeight;
  final double targetWeight;

  ProgressUiState copyWith({double? currentWeight, double? targetWeight}) {
    return ProgressUiState(
      currentWeight: currentWeight ?? this.currentWeight,
      targetWeight: targetWeight ?? this.targetWeight,
    );
  }
}

class ProgressViewModel extends StateNotifier<ProgressUiState> {
  ProgressViewModel() : super(const ProgressUiState());

  void increaseCurrentWeight() => state = state.copyWith(currentWeight: state.currentWeight + 0.5);
  void decreaseCurrentWeight() => state = state.copyWith(currentWeight: state.currentWeight - 0.5);
}

final progressViewModelProvider =
    StateNotifierProvider<ProgressViewModel, ProgressUiState>(
      (ref) => ProgressViewModel(),
    );
