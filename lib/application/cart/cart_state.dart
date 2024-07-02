part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const CartState._();
  const factory CartState({
    required CartItem cartItem,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
    required List<CartProductLocal> cartData,
  }) = _CartState;

  factory CartState.initial() => CartState(
        cartItem: CartItem.empty(),
        apiFailureOrSuccessOption: none(),
        isFetching: true,
        cartData: [],
      );

  bool get isCartEmpty => cartItem.products.isEmpty && cartData.isEmpty;

  int get totalCartProductsPrice => cartItem.products.fold(
        0,
        (previousValue, element) => previousValue + element.totalPrice,
      );

  int get totalCartProductsCount => cartItem.products.fold(
        0,
        (previousValue, element) => previousValue + element.quantity,
      );
  int get totalLocalCartProductsPrice => cartData.fold(
        0,
        (previousValue, element) =>
            previousValue + (double.tryParse(element.price) ?? 0.0).toInt(),
      );

  int getProductQuantity(Product product) {
    return (cartItem.products.firstWhereOrNull(
          (element) {
            return element.productId == product.productId;
          },
        )?.quantity) ??
        0;
  }

  int getProductQuantityLocal(Product product) {
    return (cartData.firstWhereOrNull(
          (element) {
            return (element.productId == product.productId.getValue()) &&
                element.attributeItemProductId ==
                    product.attributeItemProductId;
          },
        )?.quantity) ??
        0;
  }
}
