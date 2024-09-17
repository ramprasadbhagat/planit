part of 'blog_bloc.dart';

@freezed
class BlogState with _$BlogState {
  const BlogState._();
  const factory BlogState({
    required List<Blog> blogs,
    required List<BlogsFilterTag> filterList,
    required List<String> tempFilterList,
    required int pageNumber,
    required bool isFetching,
    required bool hasMore,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
  }) = _BlogState;

  factory BlogState.initial() => const BlogState(
        blogs: [],
        isFetching: false,
        apiFailureOrSuccessOption: None(),
        pageNumber: 1,
        hasMore: true,
        filterList: <BlogsFilterTag>[],
        tempFilterList: <String>[],
      );

  List<String> get getFilterList => filterList.map((e) => e.tagName).toList();
}
