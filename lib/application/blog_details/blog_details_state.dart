part of 'blog_details_bloc.dart';

@freezed
class BlogDetailsState with _$BlogDetailsState {
  const factory BlogDetailsState({
    required Blog blog,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
    required bool isFetchingComments,
    required bool isSubmitingComment,
    required List<BlogComments> blogComments,
    required String commentMessage,
    required bool viewAllComments,
  }) = _BlogDetailsState;

  factory BlogDetailsState.initial() => BlogDetailsState(
        apiFailureOrSuccessOption: const None(),
        blog: Blog.empty(),
        isFetching: false,
        isFetchingComments: false,
        blogComments: [],
        commentMessage: '',
        isSubmitingComment: false,
        viewAllComments: false,
      );
}
