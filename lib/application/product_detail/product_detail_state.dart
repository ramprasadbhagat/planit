part of 'product_detail_bloc.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  const factory ProductDetailState({
    required Product product,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
  }) = _ProductDetailState;

  factory ProductDetailState.initial() => ProductDetailState(
        product: Product.empty(),
        apiFailureOrSuccessOption: none(),
        isFetching: true,
      );
}
