part of 'search_product_bloc.dart';

@freezed
class SearchProductState with _$SearchProductState {
  const SearchProductState._();
  const factory SearchProductState({
    required List<Product> products,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
    required bool canLoadMore,
    required int pageNumber,
    required String searchText,
  }) = _SearchProductState;

  factory SearchProductState.initial() => SearchProductState(
        apiFailureOrSuccessOption: none(),
        isFetching: false,
        canLoadMore: false,
        products: <Product>[],
        pageNumber: 0,
        searchText: '',
      );

  bool get isProductListEmpty => products.isEmpty;
}
