import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/inventory/entities/inventory.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/product/entities/price.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/domain/product/value/value_objects.dart';

part 'product_detail.freezed.dart';

@freezed
class ProductDetail with _$ProductDetail {
  const ProductDetail._();
  factory ProductDetail({
    required ProductId productId,
    required String name,
    required List<String> productImages,
    required int startingPrice,
    required Price price,
    required StringValue productDescription,
    required bool backOrder,
    required List<Inventory> inventoryList,
  }) = _ProductDetail;

  factory ProductDetail.empty() => ProductDetail(
        productDescription: StringValue(''),
        productImages: <String>[],
        name: '',
        price: Price.empty(),
        productId: ProductId(''),
        startingPrice: 0,
        backOrder: false,
        inventoryList: <Inventory>[],
      );

  Product toProduct(Inventory inventory) => Product(
        productId: productId,
        name: name,
        productImages: productImages,
        skuPrice: IntegerValue(int.tryParse(price.price) ?? 0),
        startingPrice: startingPrice,
        attributeItem: inventory.itemWeight,
        attributeItemProductId: inventory.attributeItemId,
        attributeItemId: StringValue(inventory.attributeItemId),
        productDescription: productDescription,
        backOrder: backOrder,
        productRating: 0,
        inventory: inventory,
      );
}

@freezed
class ProductAttribute with _$ProductAttribute {
  const factory ProductAttribute({
    required StringValue attributeItemId,
    required StringValue attributeItemProductId,
    required StringValue attributeItemValue,
    required StringValue attributeItemName,
    required String price,
    required AttributeQuantity quantity,
  }) = _ProductAttribute;

  factory ProductAttribute.empty() => ProductAttribute(
        attributeItemId: StringValue(''),
        attributeItemProductId: StringValue(''),
        attributeItemValue: StringValue(''),
        attributeItemName: StringValue(''),
        price: '0',
        quantity: AttributeQuantity(0),
      );
}
