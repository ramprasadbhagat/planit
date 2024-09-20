import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/inventory/entities/inventory.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/domain/product/value/value_objects.dart';

part 'highlight.freezed.dart';

@freezed
class Highlight with _$Highlight {
  const Highlight._();
  const factory Highlight({
    required String id,
    required String productName,
    required String productDescription,
    required String productDiscount,
    required String sku,
    required String skuPrice,
    required String skuPacksize,
    required String skuContent,
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
    required int productMRP,
    required String productReview,
    required double productRating,
    required String attributeItemProductId,
    required List<String> productImages,
    required StringValue attributeItemId,
    required bool backOrder,
    required List<Inventory> inventoryList,
  }) = _Highlight;

  String get discountValue {
    if (productDiscount.isNotEmpty) {
      if (productDiscount.contains('%')) {
        return productDiscount.split('%').first.trim();
      } else {
        return productDiscount;
      }
    } else if (discount.isNotEmpty) {
      if (discount.contains('%')) {
        return discount.split('%').first.trim();
      } else {
        return discount;
      }
    }
    return '0';
  }

  factory Highlight.empty() => Highlight(
        id: '',
        productName: '',
        productDescription: '',
        productMRP: 0,
        productRating: 0,
        productReview: '',
        sku: '',
        skuPrice: '',
        skuPacksize: '',
        skuContent: '',
        startingPrice: 0,
        attributeItemProductId: '',
        ingredientsList: [],
        nutritionalInformation: '',
        isDeleted: false,
        isActive: false,
        isHighlighted: false,
        isQuickPick: false,
        discount: '',
        attributeName: '',
        productDiscount: '',
        attributeItem: '',
        productImages: <String>[],
        attributeItemId: StringValue(''),
        backOrder: false,
        inventoryList: <Inventory>[],
      );

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
