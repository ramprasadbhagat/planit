import 'package:freezed_annotation/freezed_annotation.dart';

part 'wish_list_product.freezed.dart';

@freezed
class WishlistProduct with _$WishlistProduct {
  const WishlistProduct._();
  factory WishlistProduct({
    required String id,
    required String attributeItemId,
    required int price,
    required String productName,
    required String productDescription,
    required String productMRP,
    required String productReview,
    required String productRating,
    required String productDiscount,
    required String sku,
    required String skuPrice,
    required String skuPacksize,
    required String skuContent,
    required String skuInventory,
    required String skuVendorId,
    required String skuVendorInfo,
    required List<String> ingredientsList,
    required String nutritionalInformation,
    required bool isHighlighted,
    required bool isQuickPick,
    required int quantity,
    required String uid,
    required bool isDeleted,
    required bool isActive,
    required int startingPrice,
  }) = _WishlistProduct;

  factory WishlistProduct.empty() => WishlistProduct(
        id: '',
        price: 0,
        attributeItemId: '',
        uid: '',
        productName: '',
        productDescription: '',
        productMRP: '',
        productReview: '',
        productRating: '',
        productDiscount: '',
        sku: '',
        skuPrice: '',
        skuPacksize: '',
        skuContent: '',
        startingPrice: 0,
        skuInventory: '',
        skuVendorId: '',
        skuVendorInfo: '',
        ingredientsList: [],
        nutritionalInformation: '',
        isHighlighted: false,
        isQuickPick: false,
        isDeleted: false,
        isActive: false,
        quantity: 0,
      );
}
