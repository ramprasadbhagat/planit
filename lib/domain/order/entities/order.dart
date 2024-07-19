import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:planit/domain/address_book/entities/address_book.dart';
import 'package:planit/domain/core/value/value_objects.dart';
import 'package:planit/domain/core/value/value_transformer.dart';
import 'package:planit/domain/order/entities/order_item.dart';
import 'package:planit/domain/order/order_status.dart';
import 'package:planit/domain/order/value/value_objects.dart';
import 'package:planit/domain/order/value/value_transformers.dart';
part 'order.freezed.dart';

@freezed
class Order with _$Order {
  const factory Order({
    required StringValue id,
    required StringValue invoiceId,
    required StringValue couponId,
    required StringValue userId,
    required StringValue deliveryAddressId,
    required StringValue paymentStatus,
    required StringValue orderStatus,
    required IntegerValue totalPrice,
    required IntegerValue subTotal,
    required IntegerValue deliveryCharge,
    required IntegerValue totalDiscount,
    required DateTime orderDate,
    required DeliveryDate deliveryDate,
    required bool isCouponApplied,
    required List<AddressBook> deliveryAddress,
    required List<OrderItem> orderItem,
  }) = _Order;

  factory Order.empty() => Order(
        id: StringValue(''),
        invoiceId: StringValue(''),
        couponId: StringValue(''),
        userId: StringValue(''),
        deliveryAddressId: StringValue(''),
        paymentStatus: StringValue(''),
        orderStatus: StringValue(''),
        totalPrice: IntegerValue(0),
        subTotal: IntegerValue(0),
        deliveryCharge: IntegerValue(0),
        totalDiscount: IntegerValue(0),
        orderDate: DateTime(2024),
        deliveryDate: DeliveryDate(''),
        isCouponApplied: false,
        deliveryAddress: [],
        orderItem: [],
      );
}

extension OrderX on Order {
  String get getOrderDate {
    return formatDisplayDate(orderDate);
  }

  String get getTotalPrice => totalPrice.getValue().toPrice();

  OrderStatus get getOrderStatus {
    if (orderStatus.getValue() == 'done') {
      return const OrderStatus.delivered();
    }

    return OrderStatus.processing(status: orderStatus.getValue());
  }

  String get getDeliveryUserName {
    if (deliveryAddress.isEmpty) return naIfEmpty('');
    return deliveryAddress.first.fullName;
  }

  String get getDeliveryPhoneNumber {
    if (deliveryAddress.isEmpty) return naIfEmpty('');
    return deliveryAddress.first.phoneNumber;
  }

  String get getDeliveryAddress {
    if (deliveryAddress.isEmpty) return naIfEmpty('');
    return deliveryAddress.first.address;
  }
}

extension IntX on int {
  String toPrice({bool showFreeIfZero = false}) {
    if (showFreeIfZero && this == 0) {
      return 'Free';
    }

    return NumberFormat.simpleCurrency(locale: 'en_IN', decimalDigits: 2)
        .format(this);
  }
}
