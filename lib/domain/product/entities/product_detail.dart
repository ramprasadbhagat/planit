import 'package:freezed_annotation/freezed_annotation.dart';
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
    required List<ProductAttribute> attribute,
    required bool backOrder,
  }) = _ProductDetail;

  factory ProductDetail.empty() => ProductDetail(
        productDescription: StringValue(''),
        productImages: <String>[],
        name: '',
        price: Price.empty(),
        productId: ProductId(''),
        startingPrice: 0,
        attribute: [],
        backOrder: false,
      );

  Product toProduct(ProductAttribute selectAttribute) => Product(
        productId: productId,
        name: name,
        productImages: productImages,
        skuPrice: IntegerValue(int.tryParse(price.price) ?? 0),
        startingPrice: startingPrice,
        attributeItem: selectAttribute.attributeItemValue.getValue(),
        attributeItemProductId:
            selectAttribute.attributeItemProductId.getValue(),
        attributeItemId: selectAttribute.attributeItemId,
        price: Price(
          price: selectAttribute.price,
          quantity: selectAttribute.quantity,
        ),
        productDescription: productDescription,
        backOrder: backOrder,
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
    required int quantity,
  }) = _ProductAttribute;

  factory ProductAttribute.empty() => ProductAttribute(
        attributeItemId: StringValue(''),
        attributeItemProductId: StringValue(''),
        attributeItemValue: StringValue(''),
        attributeItemName: StringValue(''),
        price: '0',
        quantity: 0,
      );
}
