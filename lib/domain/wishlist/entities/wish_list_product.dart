import 'package:freezed_annotation/freezed_annotation.dart';

part 'wish_list_product.freezed.dart';

@freezed
class WishlistProduct with _$WishlistProduct {
  const WishlistProduct._();
  factory WishlistProduct({
    required String id,
    required String categoryId,
    required String attributeItemProductID,
    required String subcategoryId,
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
    required bool isDeleted,
    required bool isActive,
    required int startingPrice,
  }) = _WishlistProduct;

  factory WishlistProduct.empty() => WishlistProduct(
        id: '',
        categoryId: '',
        subcategoryId: '',
        attributeItemProductID: '',
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
      );
}
