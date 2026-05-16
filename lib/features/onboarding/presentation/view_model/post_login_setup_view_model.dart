import 'package:hooks_riverpod/hooks_riverpod.dart';

class PostLoginSetupUiState {
  const PostLoginSetupUiState({this.pageIndex = 0});

  final int pageIndex;

  PostLoginSetupUiState copyWith({int? pageIndex}) {
    return PostLoginSetupUiState(pageIndex: pageIndex ?? this.pageIndex);
  }
}

class PostLoginSetupViewModel extends StateNotifier<PostLoginSetupUiState> {
  PostLoginSetupViewModel() : super(const PostLoginSetupUiState());

  void setPage(int index) => state = state.copyWith(pageIndex: index);

  bool get isLastPage => state.pageIndex == 1;
  bool get isFirstPage => state.pageIndex == 0;
}

final postLoginSetupViewModelProvider =
    StateNotifierProvider<PostLoginSetupViewModel, PostLoginSetupUiState>(
      (ref) => PostLoginSetupViewModel(),
    );
