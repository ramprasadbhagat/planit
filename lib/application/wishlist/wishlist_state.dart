part of 'wishlist_bloc.dart';

@freezed
class WishlistState with _$WishlistState {
  const WishlistState._();
  const factory WishlistState({
    required List<Wishlist> wishlist,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
    required bool isFetching,
    required List<WishlistProduct> selectedItemList,
  }) = _WishlistState;

  factory WishlistState.initial() => WishlistState(
        wishlist: [],
        selectedItemList: [],
        apiFailureOrSuccessOption: none(),
        isFetching: false,
      );

  bool get isWishlistEmpty => wishlist.isEmpty;

  bool get isAllSelected {
    return getAllWishList.length == selectedItemList.length;
  }

  int get totalSelectedItemPrice => selectedItemList.fold(
        0,
        (previousValue, element) => previousValue + element.startingPrice,
      );

  List<WishlistProduct> get getAllWishList {
    final list = <WishlistProduct>[];
    for (final e in wishlist) {
      list.addAll(e.product);
    }
    final getAllWishListSet = list.toSet();
    return getAllWishListSet.toList();
  }
}
