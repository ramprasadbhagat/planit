import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/order/entities/order_item.dart';
import 'package:planit/domain/product/entities/product_image.dart';
import 'package:planit/domain/product/value/value_objects.dart';
part 'order_item_dto.freezed.dart';
part 'order_item_dto.g.dart';

@freezed
class OrderItemDto with _$OrderItemDto {
  const OrderItemDto._();
  const factory OrderItemDto({
    @JsonKey(name: '_id', defaultValue: '') required String id,
    @JsonKey(name: 'orderId', defaultValue: '') required String orderId,
    @JsonKey(name: 'productId', defaultValue: '') required String productId,
    @JsonKey(name: 'attributeItemId', defaultValue: '')
    required String attributeItemId,
    @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
    required int quantity,
    @JsonKey(name: 'unitPrice', defaultValue: 0, readValue: intReadValue)
    required int unitPrice,
    @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
    required int subTotal,
    @JsonKey(name: 'product', defaultValue: {}, readValue: productReadValue)
    required Map<String, dynamic> product,
    @JsonKey(
      name: 'productImage',
      defaultValue: [],
      readValue: productImageUrlFromMap,
    )
    required List<String> productImage,
    @JsonKey(
      defaultValue: 0,
      readValue: intReadValue,
    )
    required int reorderQuantity,
  }) = _OrderItemDto;

  factory OrderItemDto.fromJson(Map<String, dynamic> json) =>
      _$OrderItemDtoFromJson(json);

  OrderItem get toDomain => OrderItem(
        id: StringValue(id),
        orderId: StringValue(orderId),
        productId: ProductId(productId),
        quantity: IntegerValue(quantity),
        unitPrice: IntegerValue(unitPrice),
        subTotal: IntegerValue(subTotal),
        product: OrderItemProductDto.fromJson(product).toDomain,
        productImage: productImage
            .map((e) => ProductImage(image: StringValue(e)))
            .toList(),
        attributeItemId: StringValue(attributeItemId),
        reOrderQuantity: IntegerValue(reorderQuantity),
      );
}

dynamic productReadValue(Map json, String key) {
  if (json[key]['items'] is Map) {
    return json[key]['items'];
  }
}

int intReadValue(Map json, String key) {
  if (json[key] is int) return json[key];
  if (json[key] is double) return (json[key] as double).toInt();
  if (json[key] is String) return int.tryParse(json[key]) ?? 0;
  return 0;
}

List<String> productImageUrlFromMap(Map json, String key) {
  return (json[key] as List).map<String>((e) => e['image']).toList();
}

@freezed
class OrderItemProductDto with _$OrderItemProductDto {
  const OrderItemProductDto._();

  const factory OrderItemProductDto({
    @JsonKey(name: '_id', defaultValue: '') required String id,
    @JsonKey(name: 'productName', defaultValue: '') required String productName,
    @JsonKey(name: 'productDescription', defaultValue: '')
    required String productDescription,
    @JsonKey(name: 'expiryDate', defaultValue: '') required String expiryDate,
    @JsonKey(name: 'productMRP', defaultValue: 0, readValue: intReadValue)
    required int productMRP,
    @JsonKey(name: 'productDiscount', defaultValue: 0, readValue: intReadValue)
    required int productDiscount,
    @JsonKey(name: 'productDiscountDate', defaultValue: '')
    required String productDiscountDate,
    @JsonKey(name: 'sku', defaultValue: '') required String sku,
    @JsonKey(name: 'productRating', defaultValue: 1, readValue: ratingReadValue)
    required double productRating,
    @JsonKey(name: 'price', defaultValue: '0') required String price,
  }) = _OrderItemProductDto;

  factory OrderItemProductDto.fromJson(Map<String, dynamic> json) =>
      _$OrderItemProductDtoFromJson(json);

  OrderItemProduct get toDomain => OrderItemProduct(
        id: StringValue(id),
        productName: StringValue(productName),
        productDescription: StringValue(productDescription),
        expiryDate: DateTime.tryParse(expiryDate) ?? DateTime.now(),
        productMRP: IntegerValue(productMRP),
        productDiscount: IntegerValue(productDiscount),
        productDiscountDate:
            DateTime.tryParse(productDiscountDate) ?? DateTime.now(),
        sku: StringValue(sku),
        rating: productRating,
        price: IntegerValue.fromString(price),
      );
}

double ratingReadValue(Map json, String key) {
  if (json[key] is int) return (json[key] as int).toDouble();
  if (json[key] is String) return double.tryParse(json[key]) ?? 1;
  if (json[key] is double) return json[key];
  return 1;
}
