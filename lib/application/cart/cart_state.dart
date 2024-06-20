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
        cartData:  [],
      );

  bool get isCartEmpty => cartItem.products.isEmpty;

  int get totalCartProductsPrice => cartItem.products.fold(
        0,
        (previousValue, element) => previousValue + element.totalPrice,
      );

  int get totalCartProductsCount => cartItem.products.fold(
        0,
        (previousValue, element) => previousValue + element.quantity,
      );
}
