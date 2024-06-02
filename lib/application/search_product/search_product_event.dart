part of 'search_product_bloc.dart';

@freezed
class SearchProductEvent with _$SearchProductEvent {
  const factory SearchProductEvent.initialized() = _Initialized;
  const factory SearchProductEvent.fetchProduct({
    required String searchKey,
    required bool isScrolling,
  }) = _FetchProduct;
}
