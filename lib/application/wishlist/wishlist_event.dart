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
  const factory WishlistEvent.selectItem({
    required WishlistProduct selectedItem,
    required List<WishlistProduct> allItem,
  }) = _SelectItem;
  const factory WishlistEvent.selectAll() = _SelectAll;
  const factory WishlistEvent.disselectAll() = _DisselectAll;
  const factory WishlistEvent.disselectItem({
    required WishlistProduct disselectedItem,
  }) = _DisselectedItem;
  const factory WishlistEvent.addToCart({
    required String productId,
    required String quantity,
    required String price,
    required String attributeItemProductID,
  }) = _AddToCart;
}
