part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const CategoryState._();

  const factory CategoryState({
    required Category selectedCategory,
    required List<Category> categories,
    required List<Category> occasionCategory,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
    required bool isOcassionSelected,
  }) = _CustomerCodeState;

  factory CategoryState.initial() => CategoryState(
        selectedCategory: Category.empty(),
        categories: <Category>[],
        occasionCategory: <Category>[],
        apiFailureOrSuccessOption: none(),
        isOcassionSelected: false,
        isFetching: false,
      );

  List<Category> get validCategories => isOcassionSelected
      ? occasionCategory
          .where(
            (e) => e.isValid,
          )
          .toList()
      : categories
          .where(
            (e) => e.isValid,
          )
          .toList();
}
