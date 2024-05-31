part of 'wishlist_bloc.dart';

@freezed
class WishlistEvent with _$WishlistEvent {
  const factory WishlistEvent.initialized() = _Initialized;
  const factory WishlistEvent.fetch() = _Fetch;
  const factory WishlistEvent.addToWishlist({
    required String productId,
  }) = _AddToWishlist;
  const factory WishlistEvent.removeFromWishlist({
    required String productId,
  }) = _RemoveFromWishlist;
  const factory WishlistEvent.addToCart({
    required String productId,
    required String quantity,
    required String price,
  }) = _AddToCart;
}
