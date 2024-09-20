import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/cart/entities/cart_product_local.dart';
import 'package:planit/domain/inventory/entities/inventory.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/product/value/value_objects.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  Product._();
  factory Product({
    required ProductId productId,
    required String name,
    required List<String> productImages,
    required IntegerValue skuPrice,
    required int startingPrice,
    required String attributeItem,
    required String attributeItemProductId,
    required StringValue attributeItemId,
    required StringValue productDescription,
    required bool backOrder,
    required double productRating,
    required Inventory inventory,
  }) = _Product;

  String get getPriceValue {
    if (inventory.finalPrice > 0) {
      return inventory.finalPrice.toString();
    } else if (startingPrice > 0) {
      return startingPrice.toString();
    } else {
      return skuPrice.getValue().toString();
    }
  }

  CartProductLocal getCartProductLocal({int quantity = 1}) {
    return CartProductLocal(
      productId: productId.getValue(),
      name: name,
      productImages: productImages,
      skuPrice: double.tryParse(skuPrice.toString()) ?? 0,
      startingPrice: startingPrice,
      attributeItem: attributeItem,
      attributeItemProductId: attributeItemProductId,
      price: getPriceValue,
      quantity: quantity,
      attributeItemId: attributeItemId.getValue(),
      backOrder: backOrder,
      inventory: inventory,
    );
  }

  factory Product.empty() => Product(
        productId: ProductId(''),
        name: '',
        productImages: <String>[],
        skuPrice: IntegerValue(0),
        startingPrice: 0,
        attributeItem: '',
        attributeItemProductId: '',
        productDescription: StringValue(''),
        attributeItemId: StringValue(''),
        backOrder: false,
        productRating: 0,
        inventory: Inventory.empty(),
      );

  bool get isOOS {
    final hasStock = inventory.quantity > 0;
    final isBackOrderable = inventory.quantity == 0 && backOrder;

    return !(hasStock || isBackOrderable);
  }
}
