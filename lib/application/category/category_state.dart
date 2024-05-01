part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const CategoryState._();

  const factory CategoryState({
    required Category selectedCategory,
    required List<Category> categories,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
  }) = _CustomerCodeState;

  factory CategoryState.initial() => CategoryState(
        selectedCategory: Category.empty(),
        categories: <Category>[],
        apiFailureOrSuccessOption: none(),
        isFetching: true,
      );

  List<Category> get validCategories => categories
      .where(
        (e) => e.isValid,
      )
      .toList();
}
