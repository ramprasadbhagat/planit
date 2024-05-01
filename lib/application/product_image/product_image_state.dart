part of 'product_image_bloc.dart';

@freezed
class ProductImageState with _$ProductImageState {
  const factory ProductImageState({
    required Map<ProductId, List<ProductImage>> productImages,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
  }) = _ProductImageState;

  factory ProductImageState.initial() => ProductImageState(
        productImages: <ProductId, List<ProductImage>>{},
        apiFailureOrSuccessOption: none(),
        isFetching: true,
      );
}
