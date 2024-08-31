part of 'blog_search_bloc.dart';

@freezed
class BlogSearchState with _$BlogSearchState {
  const factory BlogSearchState({
    required String searchText,
    required List<Blog> blogs,
    required bool isLoading,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required int currentPage,
    required int totalItemCount,
  }) = _BlogSearchState;

  factory BlogSearchState.initial() => const BlogSearchState(
        searchText: '',
        blogs: [],
        isLoading: false,
        apiFailureOrSuccessOption: None(),
        currentPage: 1,
        totalItemCount: 0,
      );
}
