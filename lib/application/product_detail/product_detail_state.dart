part of 'product_detail_bloc.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  const ProductDetailState._();
  const factory ProductDetailState({
    required ProductDetail product,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
    required ProductAttribute selectedProductAttribute,
  }) = _ProductDetailState;

  factory ProductDetailState.initial() => ProductDetailState(
        product: ProductDetail.empty(),
        apiFailureOrSuccessOption: none(),
        isFetching: true,
        selectedProductAttribute: ProductAttribute.empty(),
      );

  bool get isOOS => selectedProductAttribute.quantity <= 0;
}
