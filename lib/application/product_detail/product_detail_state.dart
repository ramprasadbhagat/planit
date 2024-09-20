part of 'product_detail_bloc.dart';

@freezed
class ProductDetailState with _$ProductDetailState {
  const ProductDetailState._();
  const factory ProductDetailState({
    required ProductDetail product,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
    required Inventory selectedInventory,
  }) = _ProductDetailState;

  factory ProductDetailState.initial() => ProductDetailState(
        product: ProductDetail.empty(),
        apiFailureOrSuccessOption: none(),
        isFetching: true,
        selectedInventory: Inventory.empty(),
      );

  bool get isOOS {
    final hasStock = selectedInventory.quantity > 0;
    final isBackOrderable =
        selectedInventory.quantity == 0 && product.backOrder;

    return !(hasStock || isBackOrderable);
  }

  String get stockInfo => isOOS
      ? SvgImage.outOfStock
      : product.backOrder
          ? SvgImage.backOrder
          : '';
}
