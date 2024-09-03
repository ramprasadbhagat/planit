import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/blog/enitities/blog.dart';
import 'package:planit/domain/blog/repository/i_blog_repository.dart';
import 'package:planit/domain/core/error/api_failures.dart';

part 'blog_search_event.dart';
part 'blog_search_state.dart';
part 'blog_search_bloc.freezed.dart';

class BlogSearchBloc extends Bloc<BlogSearchEvent, BlogSearchState> {
  final IBlogRepository _repository;
  BlogSearchBloc(this._repository) : super(BlogSearchState.initial()) {
    on<BlogSearchEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    BlogSearchEvent event,
    Emitter<BlogSearchState> emit,
  ) async {
    await event.map(
      searchStringChange: (value) async {
        if (value.text == state.searchText) {
          return;
        }
        if (value.text.isEmpty) {
          emit(BlogSearchState.initial());
          return;
        }
        add(_Search(value.text));
      },
      search: (value) async {
        emit(
          state.copyWith(
            isLoading: true,
            searchText: value.text,
            currentPage: 1,
            totalItemCount: 0,
          ),
        );
        final failureOrSuccess = await _repository.fetchBlogs(
          search: value.text,
        );

        failureOrSuccess.fold(
          (l) {
            emit(
              state.copyWith(
                isLoading: false,
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
              ),
            );
          },
          (r) {
            emit(
              state.copyWith(
                isLoading: false,
                blogs: r.blogs,
                totalItemCount: r.totalCount,
              ),
            );
          },
        );
      },
      reset: (_Reset value) {
        emit(
          BlogSearchState.initial(),
        );
      },
      fetchMore: (_FetchMore value) async {
        if (!state.isLoading && state.totalItemCount > state.blogs.length) {
          emit(
            state.copyWith(
              isLoading: true,
            ),
          );
          final failureOrSuccess = await _repository.fetchBlogs(
            pageNumber: state.currentPage + 1,
            search: state.searchText,
          );

          failureOrSuccess.fold((l) {
            emit(
              state.copyWith(
                apiFailureOrSuccessOption: optionOf(failureOrSuccess),
                isLoading: false,
              ),
            );
          }, (r) {
            emit(
              state.copyWith(
                isLoading: false,
                blogs: [...state.blogs, ...r.blogs],
                currentPage: state.currentPage + 1,
              ),
            );
          });
        }
      },
    );
  }
}
