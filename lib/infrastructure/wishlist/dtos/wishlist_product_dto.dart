import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/wishlist/entities/wish_list_product.dart';

part 'wishlist_product_dto.freezed.dart';
part 'wishlist_product_dto.g.dart';

@freezed
class WishlistProductDto with _$WishlistProductDto {
  const WishlistProductDto._();
  factory WishlistProductDto({
    @JsonKey(name: '_id', defaultValue: '') required String id,
    @JsonKey(name: 'categoryId', defaultValue: '') required String categoryId,
    @JsonKey(name: 'subcategoryId', defaultValue: '')
    required String subcategoryId,
    @JsonKey(name: 'productName', defaultValue: '') required String productName,
    @JsonKey(name: 'productDescription', defaultValue: '')
    required String productDescription,
    @JsonKey(name: 'productMRP', defaultValue: '') required String productMRP,
    @JsonKey(name: 'productReview', defaultValue: '')
    required String productReview,
    @JsonKey(name: 'productRating', defaultValue: '')
    required String productRating,
    @JsonKey(name: 'productDiscount', defaultValue: '')
    required String productDiscount,
    @JsonKey(name: 'sku', defaultValue: '') required String sku,
    @JsonKey(name: 'sku_price', defaultValue: '') required String skuPrice,
    @JsonKey(name: 'sku_packsize', defaultValue: '')
    required String skuPacksize,
    @JsonKey(name: 'sku_content', defaultValue: '') required String skuContent,
    @JsonKey(name: 'sku_inventory', defaultValue: '')
    required String skuInventory,
    @JsonKey(name: 'sku_vendorId', defaultValue: '')
    required String skuVendorId,
    @JsonKey(name: 'sku_vendorInfo', defaultValue: '')
    required String skuVendorInfo,
    @JsonKey(name: 'ingredientsList', defaultValue: [])
    required List<String> ingredientsList,
    @JsonKey(name: 'nutritionalInformation', defaultValue: '')
    required String nutritionalInformation,
    @JsonKey(name: 'isHighlighted', defaultValue: false)
    required bool isHighlighted,
    @JsonKey(name: 'isQuickPick', defaultValue: false)
    required bool isQuickPick,
    @JsonKey(name: 'isDeleted', defaultValue: false) required bool isDeleted,
    @JsonKey(name: 'isActive', defaultValue: false) required bool isActive,
  }) = _WishlistProductDto;

  factory WishlistProductDto.fromJson(Map<String, dynamic> json) =>
      _$WishlistProductDtoFromJson(json);
  WishlistProduct get toDomain => WishlistProduct(
        id: id,
        categoryId: categoryId,
        subcategoryId: subcategoryId,
        productName: productName,
        productDescription: productDescription,
        productMRP: productMRP,
        productReview: productReview,
        productRating: productRating,
        productDiscount: productDiscount,
        sku: sku,
        skuPrice: skuPrice,
        skuPacksize: skuPacksize,
        skuContent: skuContent,
        skuInventory: skuInventory,
        skuVendorId: skuVendorId,
        skuVendorInfo: skuVendorInfo,
        ingredientsList: ingredientsList,
        nutritionalInformation: nutritionalInformation,
        isHighlighted: isHighlighted,
        isQuickPick: isQuickPick,
        isDeleted: isDeleted,
        isActive: isActive,
      );
}
