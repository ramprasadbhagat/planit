import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/category/entities/category.dart';
import 'package:planit/domain/category/repository/i_categories_repository.dart';

part 'category_event.dart';
part 'category_state.dart';
part 'category_bloc.freezed.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final ICategoriesRepository repository;
  CategoryBloc({
    required this.repository,
  }) : super(CategoryState.initial()) {
    on<CategoryEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(
    CategoryEvent event,
    Emitter<CategoryState> emit,
  ) async {
    await event.map(
      initialized: (_) async => emit(CategoryState.initial()),
      fetch: (e) async {
        emit(state.copyWith(isFetching: true));
        final failureOrSuccess = await repository.getCategories();
        failureOrSuccess.fold(
            (failure) => emit(
                  state.copyWith(
                    isFetching: false,
                    apiFailureOrSuccessOption: optionOf(failureOrSuccess),
                  ),
                ), (categoriesList) =>
          emit(
            state.copyWith(
              isFetching: false,
              selectedCategory: categoriesList.firstOrNull ?? Category.empty(),
              categories: categoriesList
                  .where((element) => element.type == 'shopByCategory')
                  .toList(),
              occasionCategory: categoriesList
                  .where((element) => element.type == 'shopByOccasion')
                  .toList(),
            ),
          ),
        );
      },
      select: (_Select e) async => emit(
        state.copyWith(
          selectedCategory: e.category,
        ),
      ),
      selectOccasion: (e) {
        emit(
          state.copyWith(isOcassionSelected: e.isSelected),
        );
      },
    );
  }
}
