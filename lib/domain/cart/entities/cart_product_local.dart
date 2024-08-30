import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/product/entities/price.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/domain/product/value/value_objects.dart';
import 'package:planit/utils/hive_constants.dart';

part 'cart_product_local.freezed.dart';
part 'cart_product_local.g.dart';

@freezed
class CartProductLocal with _$CartProductLocal {
  const CartProductLocal._();
  @HiveType(
    typeId: HiveConstants.cartTypeId,
    adapterName: HiveConstants.cartAdapter,
  )
  factory CartProductLocal({
    @HiveField(0) required String productId,
    @HiveField(1) required String name,
    @HiveField(2) required List<String> productImages,
    @HiveField(3) required double skuPrice,
    @HiveField(4) required int startingPrice,
    @HiveField(5) required String attributeItem,
    @HiveField(6) required String attributeItemProductId,
    @HiveField(7) required String price,
    @HiveField(8) required int quantity,
    @HiveField(9) required String attributeItemId,
    @HiveField(10, defaultValue: false) required bool backOrder,
  }) = _CartProductLocal;
  factory CartProductLocal.empty() => CartProductLocal(
        name: '',
        productId: '',
        productImages: <String>[],
        skuPrice: 0,
        startingPrice: 0,
        attributeItem: '',
        attributeItemProductId: '',
        price: '',
        quantity: 0,
        attributeItemId: '',
        backOrder: false,
      );
  Product get toProduct => Product(
        productId: ProductId(productId),
        name: name,
        productImages: productImages,
        skuPrice: IntegerValue(skuPrice.toInt()),
        startingPrice: startingPrice,
        attributeItem: attributeItem,
        attributeItemProductId: attributeItemProductId,
        price: Price.empty().copyWith(price: price, quantity: 1),
        productDescription: StringValue(''),
        attributeItemId: StringValue(attributeItemId),
        backOrder: backOrder,
        productRating: 0,
      );
}
