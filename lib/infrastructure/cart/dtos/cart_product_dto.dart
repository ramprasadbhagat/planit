import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/cart/entities/cart_product.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/inventory/entities/inventory.dart';
import 'package:planit/domain/product/value/value_objects.dart';
import 'package:planit/infrastructure/core/common/json_read_value_helper.dart';

part 'cart_product_dto.freezed.dart';
part 'cart_product_dto.g.dart';

@freezed
class CartProductDto with _$CartProductDto {
  const CartProductDto._();
  const factory CartProductDto({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'product_id', defaultValue: '') required String productId,
    @JsonKey(name: 'image', defaultValue: '') required String image,
    @JsonKey(name: 'productName', defaultValue: '') required String productName,
    @JsonKey(name: 'productDescription', defaultValue: '')
    required String productDescription,
    @JsonKey(name: 'attributeItemId', defaultValue: '')
    required String attributeItemId,
    @JsonKey(
      name: 'itemPrice',
      defaultValue: '0.00',
      readValue: stringReadValue,
    )
    required String itemPrice,
    @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
    required int quantity,
    @JsonKey(name: 'total_price', defaultValue: 0, readValue: intReadValue)
    required int totalPrice,
    @JsonKey(name: 'attributeItemName', defaultValue: '')
    required String attributeItemName,
    @JsonKey(name: 'attributeName', defaultValue: '')
    required String attributeName,
    @JsonKey(
      defaultValue: 0.0,
      readValue: JsonReadValueHelper.roundToTwoDecimalPlaces,
    )
    required double finalPrice,
    @JsonKey(
      defaultValue: 0.0,
      readValue: JsonReadValueHelper.roundToTwoDecimalPlaces,
    )
    required double listPrice,
    @JsonKey(defaultValue: 0.0) required double discountPercentage,
  }) = _CartProductDto;

  CartProduct get toDomain => CartProduct(
        id: id,
        productId: ProductId(productId),
        image: image,
        productName: productName,
        productDescription: productDescription,
        attributeitem: attributeItemName,
        itemPrice: itemPrice,
        quantity: quantity,
        totalPrice: totalPrice,
        discount: discountPercentage.toInt(),
        attributeitemId: StringValue(attributeItemId),
        inventory: Inventory.empty().copyWith(
          itemWeight: '$attributeItemName$attributeName',
          attributeItemId: attributeItemId,
          listPrice: listPrice,
          finalPrice: finalPrice,
          discountPercentage: discountPercentage,
          quantity: quantity,
        ),
      );

  factory CartProductDto.fromJson(Map<String, dynamic> json) =>
      _$CartProductDtoFromJson(json);
}

String stringReadValue(Map json, String key) {
  if (json[key] is int) return json[key].toString();
  if (json[key] is String) return json[key];
  return '';
}

int intReadValue(Map json, String key) {
  if (json[key] is int) return json[key];
  if (json[key] is String) return int.tryParse(json[key]) ?? 0;
  return 0;
}
