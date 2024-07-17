part of 'product_detail_bloc.dart';

@freezed
class ProductDetailEvent with _$ProductDetailEvent {
  const factory ProductDetailEvent.initialized() = _Initialized;
  const factory ProductDetailEvent.fetch(ProductId productId) = _Fetch;
  const factory ProductDetailEvent.changeSelectedAttribute(
    ProductAttribute productAttribute,
  ) = _ChangeSelectedAttribute;
}
