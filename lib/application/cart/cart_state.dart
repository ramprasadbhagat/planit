part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const CartState._();
  const factory CartState({
    required List<CartItem> cartItems,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
  }) = _CartState;

  factory CartState.initial() => CartState(
        cartItems: <CartItem>[],
        apiFailureOrSuccessOption: none(),
        isFetching: true,
      );

  bool get isCartEmpty => cartItems.isEmpty;

  int get totalPrice => cartItems.fold(
        0,
        (previousValue, element) =>
            previousValue + element.totalPrice.getOrDefaultValue(0),
      );

  int get totalItem => cartItems.fold(
        0,
        (previousValue, element) =>
            previousValue + element.quantity.getOrDefaultValue(0),
      );
}
