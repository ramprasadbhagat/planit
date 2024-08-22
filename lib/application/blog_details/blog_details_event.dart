part of 'blog_details_bloc.dart';

@freezed
class BlogDetailsEvent with _$BlogDetailsEvent {
  const factory BlogDetailsEvent.fetch(Blog blog, bool isUnAuthenticated) =
      _Fetch;
  const factory BlogDetailsEvent.fetchComments(String blogId) = _FetchComments;
  const factory BlogDetailsEvent.onCommentInputChange(String value) =
      _OnCommentInputChange;
  const factory BlogDetailsEvent.addCommentClicked(String blogId) =
      _AddCommentClicked;
  const factory BlogDetailsEvent.viewAllCommentClicked() =
      _ViewAllCommentClicked;
  const factory BlogDetailsEvent.likeClicked(String blogId) = _LikeClicked;
  const factory BlogDetailsEvent.dislikeClicked(String blogId) =
      _DislikeClicked;
}
