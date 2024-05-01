part of 'product_image_bloc.dart';

@freezed
class ProductImageEvent with _$ProductImageEvent {
  const factory ProductImageEvent.initialized() = _Initialized;
  const factory ProductImageEvent.fetch(ProductId productIds) = _Fetch;
}
