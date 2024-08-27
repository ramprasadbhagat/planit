import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/blog/enitities/blog.dart';
import 'package:planit/domain/blog/enitities/blog_comments.dart';
import 'package:planit/domain/blog/repository/i_blog_repository.dart';
import 'package:planit/domain/core/error/api_failures.dart';

part 'blog_details_event.dart';
part 'blog_details_state.dart';
part 'blog_details_bloc.freezed.dart';

class BlogDetailsBloc extends Bloc<BlogDetailsEvent, BlogDetailsState> {
  final IBlogRepository blogRepository;
  BlogDetailsBloc(this.blogRepository) : super(BlogDetailsState.initial()) {
    on<BlogDetailsEvent>(_onEvent);
  }
  FutureOr<void> _onEvent(
    BlogDetailsEvent event,
    Emitter<BlogDetailsState> emit,
  ) async {
    await event.map(
      fetch: (value) async {
        if (value.isUnAuthenticated) {
          emit(state.copyWith(blog: value.blog));
          return;
        }
        emit(
          state.copyWith(
            isFetching: true,
          ),
        );

        final failureOrSuccess =
            await blogRepository.fetchBlogDetails(value.blog.id.getValue());

        failureOrSuccess.fold(
          (l) {
            emit(
              state.copyWith(
                isFetching: false,
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
          (r) {
            emit(
              state.copyWith(
                isFetching: false,
                blog: r,
              ),
            );
          },
        );
      },
      fetchComments: (_FetchComments value) async {
        emit(
          state.copyWith(
            isFetchingComments: true,
          ),
        );
        final failureOrSuccess =
            await blogRepository.fetchComments(value.blogId);

        failureOrSuccess.fold((l) {
          emit(
            state.copyWith(
              isFetchingComments: false,
              apiFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          );
        }, (r) {
          emit(
            state.copyWith(
              isFetchingComments: false,
              blogComments: r,
            ),
          );
        });
      },
      onCommentInputChange: (_OnCommentInputChange value) {
        emit(
          state.copyWith(
            commentMessage: value.value,
          ),
        );
      },
      addCommentClicked: (_AddCommentClicked value) async {
        emit(
          state.copyWith(
            isSubmitingComment: true,
          ),
        );

        final failureOrSuccess = await blogRepository.addComment(
          blogId: value.blogId,
          comment: state.commentMessage,
        );

        failureOrSuccess.fold(
          (l) {
            emit(
              state.copyWith(
                isSubmitingComment: false,
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
          (r) {
            emit(
              state.copyWith(
                isSubmitingComment: false,
                commentMessage: '',
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
        );
        add(BlogDetailsEvent.fetchComments(value.blogId));
      },
      viewAllCommentClicked: (_ViewAllCommentClicked value) {
        emit(
          state.copyWith(viewAllComments: !state.viewAllComments),
        );
      },
      likeClicked: (_LikeClicked value) async {
        emit(
          state.copyWith(
            isFetching: true,
          ),
        );

        final failureOrSuccess =
            await blogRepository.likeBlog(blogId: value.blogId);

        failureOrSuccess.fold(
          (l) {
            emit(
              state.copyWith(
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
                isFetching: false,
              ),
            );
          },
          (r) {
            add(_Fetch(state.blog, false));
          },
        );
      },
      dislikeClicked: (_DislikeClicked value) async {
        emit(
          state.copyWith(
            isFetching: true,
          ),
        );

        final failureOrSuccess =
            await blogRepository.dislikeBlog(blogId: value.blogId);

        failureOrSuccess.fold(
          (l) {
            emit(
              state.copyWith(
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
                isFetching: false,
              ),
            );
          },
          (r) {
            add(_Fetch(state.blog, false));
          },
        );
      },
    );
  }
}
