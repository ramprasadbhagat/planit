import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/blog/enitities/blog.dart';
import 'package:planit/domain/blog/enitities/blogs_filter_tag.dart';
import 'package:planit/domain/blog/repository/i_blog_repository.dart';
import 'package:planit/domain/core/error/api_failures.dart';

part 'blog_event.dart';
part 'blog_state.dart';
part 'blog_bloc.freezed.dart';

class BlogBloc extends Bloc<BlogEvent, BlogState> {
  final IBlogRepository repository;
  BlogBloc(this.repository) : super(BlogState.initial()) {
    on<BlogEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(BlogEvent event, Emitter<BlogState> emit) async {
    await event.map(
      fetchBlogs: (_) async {
        emit(
          state.copyWith(
            isFetching: true,
            blogs: <Blog>[],
          ),
        );
        final failureOrSuccessOption = await repository.fetchBlogs(
          pageNumber: 1,
        );
        failureOrSuccessOption.fold(
          (l) {
            emit(
              state.copyWith(
                isFetching: false,
                apiFailureOrSuccessOption: optionOf(failureOrSuccessOption),
              ),
            );
          },
          (r) {
            emit(
              state.copyWith(
                isFetching: false,
                blogs: r.blogs,
                pageNumber: 2,
                hasMore: r.blogs.length < r.totalCount,
              ),
            );
          },
        );
      },
      loadMoreBlogs: (_) async {
        if (state.isFetching || !state.hasMore) return;

        emit(
          state.copyWith(
            isFetching: true,
          ),
        );
        final failureOrSuccessOption = await repository.fetchBlogs(
          pageNumber: state.pageNumber,
        );
        failureOrSuccessOption.fold(
          (l) {
            emit(
              state.copyWith(
                isFetching: false,
                apiFailureOrSuccessOption: optionOf(failureOrSuccessOption),
              ),
            );
          },
          (r) {
            final totalBlogs = [...state.blogs, ...r.blogs];

            emit(
              state.copyWith(
                isFetching: false,
                blogs: totalBlogs,
                pageNumber: state.pageNumber + 1,
                hasMore: totalBlogs.length < r.totalCount,
              ),
            );
          },
        );
      },
      tagCheckboxChange: (value) {
        if (state.tempFilterList.contains(value.title)) {
          emit(
            state.copyWith(
              tempFilterList: state.tempFilterList
                  .where((element) => element != value.title)
                  .toList(),
            ),
          );
        } else {
          emit(
            state.copyWith(
              tempFilterList: [
                ...state.tempFilterList,
                value.title,
              ],
            ),
          );
        }
      },
      clearAllFilterClicked: (value) {
        emit(
          state.copyWith(
            tempFilterList: <String>[],
          ),
        );
      },
      fetchFilterList: (_) async {
        emit(
          state.copyWith(
            isFetching: true,
          ),
        );
        final failureOrSuccessOption = await repository.fetchFilterList();
        failureOrSuccessOption.fold(
          (l) {
            emit(
              state.copyWith(
                isFetching: false,
                apiFailureOrSuccessOption: optionOf(failureOrSuccessOption),
              ),
            );
          },
          (filterList) {
            emit(
              state.copyWith(
                isFetching: false,
                filterList: filterList,
              ),
            );
          },
        );
      },
      updateFilter: (e) async {
        emit(
          state.copyWith(
            isFetching: true,
          ),
        );
        final failureOrSuccessOption = await repository.updateFilterBlog(
          updateFilterList: state.tempFilterList,
        );
        failureOrSuccessOption.fold(
          (l) {
            emit(
              state.copyWith(
                isFetching: false,
                apiFailureOrSuccessOption: optionOf(failureOrSuccessOption),
              ),
            );
          },
          (r) {
            emit(
              state.copyWith(
                isFetching: false,
                blogs: r.blogs,
              ),
            );
          },
        );
      },
    );
  }
}
