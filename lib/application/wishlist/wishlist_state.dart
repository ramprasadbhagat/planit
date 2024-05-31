part of 'wishlist_bloc.dart';

@freezed
class WishlistState with _$WishlistState {
  const WishlistState._();
  const factory WishlistState({
    required List<Wishlist> wishlist,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
  }) = _WishlistState;

  factory WishlistState.initial() => WishlistState(
        wishlist: [],
        apiFailureOrSuccessOption: none(),
        isFetching: true,
      );

  bool get isWishlistEmpty => wishlist.isEmpty;
  List<WishlistProduct> get getAllWishList {
    final list = <WishlistProduct>[];
    for (final e in wishlist) {
      list.addAll(e.product);
    }
    return list;
  }
}
