// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDtoImpl _$$OrderDtoImplFromJson(Map<String, dynamic> json) =>
    _$OrderDtoImpl(
      id: json['_id'] as String? ?? '',
      invoiceId: json['invoiceId'] as String? ?? '',
      couponId: json['couponId'] as String? ?? '',
      userId: json['userId'] as String? ?? '',
      deliveryAddressId: json['deliveryAddressId'] as String? ?? '',
      paymentStatus: json['paymentStatus'] as String? ?? '',
      orderStatus: json['orderStatus'] as String? ?? '',
      totalPrice: (intReadValue(json, 'totalPrice') as num?)?.toInt() ?? 0,
      subTotal: (intReadValue(json, 'subTotal') as num?)?.toInt() ?? 0,
      deliveryCharge:
          (intReadValue(json, 'deliveryCharge') as num?)?.toInt() ?? 0,
      totalDiscount:
          (intReadValue(json, 'totalDiscount') as num?)?.toInt() ?? 0,
      orderDate: json['orderDate'] as String? ?? '',
      deliveryDate: json['deliveryDate'] as String? ?? '',
      deliveryTime: json['deliveryTime'] as String? ?? '',
      isCouponApplied: json['isCouponApplied'] as bool? ?? false,
      deliveryAddress: (json['deliveryAddress'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          [],
      orderItem: (json['orderItem'] as List<dynamic>?)
              ?.map((e) => e as Map<String, dynamic>)
              .toList() ??
          [],
    );

Map<String, dynamic> _$$OrderDtoImplToJson(_$OrderDtoImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'invoiceId': instance.invoiceId,
      'couponId': instance.couponId,
      'userId': instance.userId,
      'deliveryAddressId': instance.deliveryAddressId,
      'paymentStatus': instance.paymentStatus,
      'orderStatus': instance.orderStatus,
      'totalPrice': instance.totalPrice,
      'subTotal': instance.subTotal,
      'deliveryCharge': instance.deliveryCharge,
      'totalDiscount': instance.totalDiscount,
      'orderDate': instance.orderDate,
      'deliveryDate': instance.deliveryDate,
      'deliveryTime': instance.deliveryTime,
      'isCouponApplied': instance.isCouponApplied,
      'deliveryAddress': instance.deliveryAddress,
      'orderItem': instance.orderItem,
    };
