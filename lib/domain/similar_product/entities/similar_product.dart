import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/inventory/entities/inventory.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/product/entities/price.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/domain/product/value/value_objects.dart';

part 'similar_product.freezed.dart';

@freezed
class SimilarProduct with _$SimilarProduct {
  const SimilarProduct._();
  const factory SimilarProduct({
    required String id,
    required String productName,
    required String productDescription,
    required String sku,
    required String skuPrice,
    required int startingPrice,
    required List<String> ingredientsList,
    required String nutritionalInformation,
    required bool isDeleted,
    required bool isActive,
    required bool isHighlighted,
    required bool isQuickPick,
    required String discount,
    required String attributeName,
    required String attributeItem,
    required String attributeItemProductId,
    required int productMRP,
    required String productReview,
    required double productRating,
    required Price price,
    required List<String> productImages,
    required StringValue attributeItemId,
    required bool backOrder,
    required List<Inventory> inventoryList,
  }) = _SimilarProduct;

  factory SimilarProduct.empty() => SimilarProduct(
        id: '',
        productName: '',
        attributeItemProductId: '',
        productDescription: '',
        productMRP: 0,
        productRating: 0,
        productReview: '',
        sku: '',
        skuPrice: '',
        startingPrice: 0,
        ingredientsList: [],
        nutritionalInformation: '',
        isDeleted: false,
        isActive: false,
        isHighlighted: false,
        isQuickPick: false,
        discount: '',
        attributeName: '',
        attributeItem: '',
        price: Price.empty(),
        productImages: <String>[],
        attributeItemId: StringValue(''),
        backOrder: false,
        inventoryList: <Inventory>[],
      );

  String get getPriceValue {
    if ((double.tryParse(price.price) ?? 0) > 0) {
      return price.price;
    } else if (startingPrice > 0) {
      return startingPrice.toString();
    } else if (productMRP > 0) {
      return productMRP.toString();
    } else {
      return skuPrice;
    }
  }

  Product get toProduct {
    final inventory =
        inventoryList.isNotEmpty ? inventoryList.first : Inventory.empty();
    return Product(
      productId: ProductId(id),
      name: productName,
      productImages: productImages,
      skuPrice: IntegerValue(int.tryParse(skuPrice) ?? 0),
      startingPrice: startingPrice,
      attributeItem: attributeItem,
      attributeItemProductId: inventory.attributeItemId,
      productDescription: StringValue(productDescription),
      attributeItemId: StringValue(inventory.attributeItemId),
      backOrder: backOrder,
      productRating: productRating,
      inventory: inventory,
    );
  }
}
