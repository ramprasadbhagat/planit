part of 'search_product_bloc.dart';

@freezed
class SearchProductEvent with _$SearchProductEvent {
  const factory SearchProductEvent.initialized() = _Initialized;
  const factory SearchProductEvent.fetchProduct({
    required String searchKey,
  }) = _FetchProduct;
  const factory SearchProductEvent.onLoadMore() = _OnLoadMore;
}
