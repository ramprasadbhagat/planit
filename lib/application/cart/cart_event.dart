part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.initialized() = _Initialized;
  const factory CartEvent.fetch() = _Fetch;
  const factory CartEvent.addToCart({
    required Product product,
    required int quantity,
  }) = _AddToCart;
  const factory CartEvent.removeFromCart({
    required CartItem cartItem,
  }) = _RemoveFromCart;
}
