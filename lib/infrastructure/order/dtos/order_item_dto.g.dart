// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderItemDtoImpl _$$OrderItemDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemDtoImpl(
      id: json['_id'] as String? ?? '',
      orderId: json['orderId'] as String? ?? '',
      productId: json['productId'] as String? ?? '',
      attributeItemId: json['attributeItemId'] as String? ?? '',
      quantity: (intReadValue(json, 'quantity') as num?)?.toInt() ?? 0,
      unitPrice: (intReadValue(json, 'unitPrice') as num?)?.toInt() ?? 0,
      subTotal: (intReadValue(json, 'subTotal') as num?)?.toInt() ?? 0,
      product: productReadValue(json, 'product') as Map<String, dynamic>? ?? {},
      productImage:
          (productImageUrlFromMap(json, 'productImage') as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              [],
      reorderQuantity:
          (intReadValue(json, 'reorderQuantity') as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$OrderItemDtoImplToJson(_$OrderItemDtoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'orderId': instance.orderId,
      'productId': instance.productId,
      'attributeItemId': instance.attributeItemId,
      'quantity': instance.quantity,
      'unitPrice': instance.unitPrice,
      'subTotal': instance.subTotal,
      'product': instance.product,
      'productImage': instance.productImage,
      'reorderQuantity': instance.reorderQuantity,
    };

_$OrderItemProductDtoImpl _$$OrderItemProductDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderItemProductDtoImpl(
      id: json['_id'] as String? ?? '',
      productName: json['productName'] as String? ?? '',
      productDescription: json['productDescription'] as String? ?? '',
      expiryDate: json['expiryDate'] as String? ?? '',
      productMRP: (intReadValue(json, 'productMRP') as num?)?.toInt() ?? 0,
      productDiscount:
          (intReadValue(json, 'productDiscount') as num?)?.toInt() ?? 0,
      productDiscountDate: json['productDiscountDate'] as String? ?? '',
      sku: json['sku'] as String? ?? '',
      productRating:
          (ratingReadValue(json, 'productRating') as num?)?.toDouble() ?? 1,
      price: json['price'] as String? ?? '0',
    );

Map<String, dynamic> _$$OrderItemProductDtoImplToJson(
        _$OrderItemProductDtoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'productName': instance.productName,
      'productDescription': instance.productDescription,
      'expiryDate': instance.expiryDate,
      'productMRP': instance.productMRP,
      'productDiscount': instance.productDiscount,
      'productDiscountDate': instance.productDiscountDate,
      'sku': instance.sku,
      'productRating': instance.productRating,
      'price': instance.price,
    };
