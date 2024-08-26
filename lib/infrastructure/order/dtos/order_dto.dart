import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/order/entities/order.dart';
import 'package:planit/domain/order/value/value_objects.dart';
import 'package:planit/infrastructure/address_book/dtos/address_book_dto.dart';
import 'package:planit/infrastructure/order/dtos/order_item_dto.dart';
part 'order_dto.freezed.dart';
part 'order_dto.g.dart';

@freezed
class OrderDto with _$OrderDto {
  const OrderDto._();

  const factory OrderDto({
    @JsonKey(name: '_id', defaultValue: '') required String id,
    @JsonKey(name: 'invoiceId', defaultValue: '') required String invoiceId,
    @JsonKey(name: 'couponId', defaultValue: '') required String couponId,
    @JsonKey(name: 'userId', defaultValue: '') required String userId,
    @JsonKey(name: 'deliveryAddressId', defaultValue: '')
    required String deliveryAddressId,
    @JsonKey(name: 'paymentStatus', defaultValue: '')
    required String paymentStatus,
    @JsonKey(name: 'paymentType', defaultValue: '') required String paymentType,
    @JsonKey(name: 'orderStatus', defaultValue: '') required String orderStatus,
    @JsonKey(name: 'totalPrice', defaultValue: 0, readValue: intReadValue)
    required int totalPrice,
    @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
    required int subTotal,
    @JsonKey(name: 'packingCharges', defaultValue: 0, readValue: intReadValue)
    required int packingCharges,
    @JsonKey(name: 'deliveryCharge', defaultValue: 0, readValue: intReadValue)
    required int deliveryCharge,
    @JsonKey(name: 'totalDiscount', defaultValue: 0, readValue: intReadValue)
    required int totalDiscount,
    @JsonKey(name: 'orderDate', defaultValue: '') required String orderDate,
    @JsonKey(name: 'deliveryDate', defaultValue: '')
    required String deliveryDate,
    @JsonKey(name: 'deliveryTime', defaultValue: '')
    required String deliveryTime,
    @JsonKey(name: 'isCouponApplied', defaultValue: false)
    required bool isCouponApplied,
    @JsonKey(name: 'deliveryAddress', defaultValue: [])
    required List<Map<String, dynamic>> deliveryAddress,
    @JsonKey(name: 'orderItem', defaultValue: [])
    required List<Map<String, dynamic>> orderItem,
  }) = _OrderDto;

  factory OrderDto.fromJson(Map<String, dynamic> json) =>
      _$OrderDtoFromJson(json);

  Order get toDomain => Order(
        id: StringValue(id),
        invoiceId: StringValue(invoiceId),
        couponId: StringValue(couponId),
        userId: StringValue(userId),
        deliveryAddressId: StringValue(deliveryAddressId),
        paymentStatus: StringValue(paymentStatus),
        orderStatus: StringValue(orderStatus),
        totalPrice: IntegerValue(totalPrice),
        subTotal: IntegerValue(subTotal),
        deliveryCharge: IntegerValue(deliveryCharge),
        totalDiscount: IntegerValue(totalDiscount),
        orderDate: DateTime.tryParse(orderDate) ?? DateTime.now(),
        isCouponApplied: isCouponApplied,
        deliveryAddress: deliveryAddress
            .map((e) => AddressBookDto.fromJson(e).toDomain)
            .toList(),
        deliveryDate: DeliveryDate(deliveryDate),
        deliveryTime: StringValue(deliveryTime),
        orderItem:
            orderItem.map((e) => OrderItemDto.fromJson(e).toDomain).toList(),
        packingCharges: IntegerValue(packingCharges),
        paymentType: StringValue(paymentType),
      );
}

int intReadValue(Map json, String key) {
  if (json[key] is int) return json[key];
  if (json[key] is double) return (json[key] as double).toInt();
  if (json[key] is String) {
    return int.tryParse(json[key]) ?? double.tryParse(json[key])?.toInt() ?? 0;
  }
  return 0;
}
