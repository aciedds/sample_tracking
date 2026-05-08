import 'package:hooks_riverpod/hooks_riverpod.dart';

class OnboardingUiState {
  const OnboardingUiState({this.pageIndex = 0});

  final int pageIndex;

  OnboardingUiState copyWith({int? pageIndex}) {
    return OnboardingUiState(pageIndex: pageIndex ?? this.pageIndex);
  }
}

class OnboardingViewModel extends StateNotifier<OnboardingUiState> {
  OnboardingViewModel() : super(const OnboardingUiState());

  void setPage(int index) => state = state.copyWith(pageIndex: index);
}

final onboardingViewModelProvider =
    StateNotifierProvider<OnboardingViewModel, OnboardingUiState>(
      (ref) => OnboardingViewModel(),
    );
