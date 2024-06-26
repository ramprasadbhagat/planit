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
    required CartProduct product,
  }) = _RemoveFromCart;
  const factory CartEvent.addToCartLocal({
    required Product product,
  }) = _AddToCartLocal;
  const factory CartEvent.getCartLocal() = _GetCartLocal;
  const factory CartEvent.deletCartLocal({
    required int index,
  }) = _DeleteCartLocal;
  const factory CartEvent.clearAllCartLocal() = _ClearAllCartLocal;
  const factory CartEvent.sendLocalServerCart() = _SendLocalServerCart;
}
