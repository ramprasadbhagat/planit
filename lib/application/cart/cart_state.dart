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
}
