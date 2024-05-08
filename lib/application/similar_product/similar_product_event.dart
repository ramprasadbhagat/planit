part of 'similar_product_bloc.dart';

@freezed
class SimilarProductEvent with _$SimilarProductEvent {
  const factory SimilarProductEvent.initialized() = _Initialized;
  const factory SimilarProductEvent.fetch(ProductId productId) = _Fetch;
}
