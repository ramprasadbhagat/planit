import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/inventory/entities/inventory.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/domain/product/value/value_objects.dart';

part 'quick_picks.freezed.dart';

@freezed
class QuickPicks with _$QuickPicks {
  const QuickPicks._();
  const factory QuickPicks({
    required String id,
    required String productName,
    required String productDescription,
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
    required String attributeItemProductId,
    required int productMRP,
    required String productReview,
    required double productRating,
    required List<Inventory> inventoryList,
    required List<String> productImages,
    required StringValue attributeItemId,
    required bool backOrder,
  }) = _QuickPicks;

  factory QuickPicks.empty() => QuickPicks(
        id: '',
        productName: '',
        productDescription: '',
        attributeItemProductId: '',
        productMRP: 0,
        productRating: 0,
        productReview: '',
        sku: '',
        skuPrice: '',
        skuPacksize: '',
        skuContent: '',
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
        inventoryList: <Inventory>[],
        productImages: <String>[],
        attributeItemId: StringValue(''),
        backOrder: false,
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
      attributeItem: inventory.itemWeight,
      attributeItemProductId: inventory.attributeItemId,
      productDescription: StringValue(productDescription),
      attributeItemId: StringValue(inventory.attributeItemId),
      backOrder: backOrder,
      productRating: productRating,
      inventory: inventory,
    );
  }
}
