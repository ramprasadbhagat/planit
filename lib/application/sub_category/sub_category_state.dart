part of 'sub_category_bloc.dart';

@freezed
class SubCategoryState with _$SubCategoryState {
  const SubCategoryState._();
  const factory SubCategoryState({
    required List<SubCategory> shopByCategoryList,
    required List<SubCategory> shopByOcassionList,
    required SubCategory selectedSubCategory,
    required List<Product> products,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
    required bool canLoadMore,
  }) = _SubCategoryState;

  factory SubCategoryState.initial() => SubCategoryState(
        selectedSubCategory: SubCategory.empty(),
        apiFailureOrSuccessOption: none(),
        isFetching: false,
        canLoadMore: false,
        products: <Product>[],
        shopByCategoryList: [],
        shopByOcassionList: [],
      );
}
