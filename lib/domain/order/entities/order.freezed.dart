// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Order {
  StringValue get id => throw _privateConstructorUsedError;
  StringValue get invoiceId => throw _privateConstructorUsedError;
  StringValue get couponId => throw _privateConstructorUsedError;
  StringValue get userId => throw _privateConstructorUsedError;
  StringValue get deliveryAddressId => throw _privateConstructorUsedError;
  PaymentStatus get paymentStatus => throw _privateConstructorUsedError;
  OrderStatus get orderStatus => throw _privateConstructorUsedError;
  StringValue get paymentType => throw _privateConstructorUsedError;
  IntegerValue get packingCharges => throw _privateConstructorUsedError;
  IntegerValue get totalPrice => throw _privateConstructorUsedError;
  IntegerValue get subTotal => throw _privateConstructorUsedError;
  IntegerValue get deliveryCharge => throw _privateConstructorUsedError;
  IntegerValue get totalDiscount => throw _privateConstructorUsedError;
  DateTime get orderDate => throw _privateConstructorUsedError;
  DeliveryDate get deliveryDate => throw _privateConstructorUsedError;
  StringValue get deliveryTime => throw _privateConstructorUsedError;
  bool get isCouponApplied => throw _privateConstructorUsedError;
  List<AddressBook> get deliveryAddress => throw _privateConstructorUsedError;
  List<OrderItem> get orderItem => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderCopyWith<Order> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderCopyWith<$Res> {
  factory $OrderCopyWith(Order value, $Res Function(Order) then) =
      _$OrderCopyWithImpl<$Res, Order>;
  @useResult
  $Res call(
      {StringValue id,
      StringValue invoiceId,
      StringValue couponId,
      StringValue userId,
      StringValue deliveryAddressId,
      PaymentStatus paymentStatus,
      OrderStatus orderStatus,
      StringValue paymentType,
      IntegerValue packingCharges,
      IntegerValue totalPrice,
      IntegerValue subTotal,
      IntegerValue deliveryCharge,
      IntegerValue totalDiscount,
      DateTime orderDate,
      DeliveryDate deliveryDate,
      StringValue deliveryTime,
      bool isCouponApplied,
      List<AddressBook> deliveryAddress,
      List<OrderItem> orderItem});
}

/// @nodoc
class _$OrderCopyWithImpl<$Res, $Val extends Order>
    implements $OrderCopyWith<$Res> {
  _$OrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? invoiceId = null,
    Object? couponId = null,
    Object? userId = null,
    Object? deliveryAddressId = null,
    Object? paymentStatus = null,
    Object? orderStatus = null,
    Object? paymentType = null,
    Object? packingCharges = null,
    Object? totalPrice = null,
    Object? subTotal = null,
    Object? deliveryCharge = null,
    Object? totalDiscount = null,
    Object? orderDate = null,
    Object? deliveryDate = null,
    Object? deliveryTime = null,
    Object? isCouponApplied = null,
    Object? deliveryAddress = null,
    Object? orderItem = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringValue,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      couponId: null == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      deliveryAddressId: null == deliveryAddressId
          ? _value.deliveryAddressId
          : deliveryAddressId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as StringValue,
      packingCharges: null == packingCharges
          ? _value.packingCharges
          : packingCharges // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      totalDiscount: null == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DeliveryDate,
      deliveryTime: null == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as StringValue,
      isCouponApplied: null == isCouponApplied
          ? _value.isCouponApplied
          : isCouponApplied // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryAddress: null == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as List<AddressBook>,
      orderItem: null == orderItem
          ? _value.orderItem
          : orderItem // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderImplCopyWith<$Res> implements $OrderCopyWith<$Res> {
  factory _$$OrderImplCopyWith(
          _$OrderImpl value, $Res Function(_$OrderImpl) then) =
      __$$OrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringValue id,
      StringValue invoiceId,
      StringValue couponId,
      StringValue userId,
      StringValue deliveryAddressId,
      PaymentStatus paymentStatus,
      OrderStatus orderStatus,
      StringValue paymentType,
      IntegerValue packingCharges,
      IntegerValue totalPrice,
      IntegerValue subTotal,
      IntegerValue deliveryCharge,
      IntegerValue totalDiscount,
      DateTime orderDate,
      DeliveryDate deliveryDate,
      StringValue deliveryTime,
      bool isCouponApplied,
      List<AddressBook> deliveryAddress,
      List<OrderItem> orderItem});
}

/// @nodoc
class __$$OrderImplCopyWithImpl<$Res>
    extends _$OrderCopyWithImpl<$Res, _$OrderImpl>
    implements _$$OrderImplCopyWith<$Res> {
  __$$OrderImplCopyWithImpl(
      _$OrderImpl _value, $Res Function(_$OrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? invoiceId = null,
    Object? couponId = null,
    Object? userId = null,
    Object? deliveryAddressId = null,
    Object? paymentStatus = null,
    Object? orderStatus = null,
    Object? paymentType = null,
    Object? packingCharges = null,
    Object? totalPrice = null,
    Object? subTotal = null,
    Object? deliveryCharge = null,
    Object? totalDiscount = null,
    Object? orderDate = null,
    Object? deliveryDate = null,
    Object? deliveryTime = null,
    Object? isCouponApplied = null,
    Object? deliveryAddress = null,
    Object? orderItem = null,
  }) {
    return _then(_$OrderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringValue,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      couponId: null == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      deliveryAddressId: null == deliveryAddressId
          ? _value.deliveryAddressId
          : deliveryAddressId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as PaymentStatus,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as OrderStatus,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as StringValue,
      packingCharges: null == packingCharges
          ? _value.packingCharges
          : packingCharges // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      totalDiscount: null == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DeliveryDate,
      deliveryTime: null == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as StringValue,
      isCouponApplied: null == isCouponApplied
          ? _value.isCouponApplied
          : isCouponApplied // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryAddress: null == deliveryAddress
          ? _value._deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as List<AddressBook>,
      orderItem: null == orderItem
          ? _value._orderItem
          : orderItem // ignore: cast_nullable_to_non_nullable
              as List<OrderItem>,
    ));
  }
}

/// @nodoc

class _$OrderImpl implements _Order {
  const _$OrderImpl(
      {required this.id,
      required this.invoiceId,
      required this.couponId,
      required this.userId,
      required this.deliveryAddressId,
      required this.paymentStatus,
      required this.orderStatus,
      required this.paymentType,
      required this.packingCharges,
      required this.totalPrice,
      required this.subTotal,
      required this.deliveryCharge,
      required this.totalDiscount,
      required this.orderDate,
      required this.deliveryDate,
      required this.deliveryTime,
      required this.isCouponApplied,
      required final List<AddressBook> deliveryAddress,
      required final List<OrderItem> orderItem})
      : _deliveryAddress = deliveryAddress,
        _orderItem = orderItem;

  @override
  final StringValue id;
  @override
  final StringValue invoiceId;
  @override
  final StringValue couponId;
  @override
  final StringValue userId;
  @override
  final StringValue deliveryAddressId;
  @override
  final PaymentStatus paymentStatus;
  @override
  final OrderStatus orderStatus;
  @override
  final StringValue paymentType;
  @override
  final IntegerValue packingCharges;
  @override
  final IntegerValue totalPrice;
  @override
  final IntegerValue subTotal;
  @override
  final IntegerValue deliveryCharge;
  @override
  final IntegerValue totalDiscount;
  @override
  final DateTime orderDate;
  @override
  final DeliveryDate deliveryDate;
  @override
  final StringValue deliveryTime;
  @override
  final bool isCouponApplied;
  final List<AddressBook> _deliveryAddress;
  @override
  List<AddressBook> get deliveryAddress {
    if (_deliveryAddress is EqualUnmodifiableListView) return _deliveryAddress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveryAddress);
  }

  final List<OrderItem> _orderItem;
  @override
  List<OrderItem> get orderItem {
    if (_orderItem is EqualUnmodifiableListView) return _orderItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderItem);
  }

  @override
  String toString() {
    return 'Order(id: $id, invoiceId: $invoiceId, couponId: $couponId, userId: $userId, deliveryAddressId: $deliveryAddressId, paymentStatus: $paymentStatus, orderStatus: $orderStatus, paymentType: $paymentType, packingCharges: $packingCharges, totalPrice: $totalPrice, subTotal: $subTotal, deliveryCharge: $deliveryCharge, totalDiscount: $totalDiscount, orderDate: $orderDate, deliveryDate: $deliveryDate, deliveryTime: $deliveryTime, isCouponApplied: $isCouponApplied, deliveryAddress: $deliveryAddress, orderItem: $orderItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.invoiceId, invoiceId) ||
                other.invoiceId == invoiceId) &&
            (identical(other.couponId, couponId) ||
                other.couponId == couponId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.deliveryAddressId, deliveryAddressId) ||
                other.deliveryAddressId == deliveryAddressId) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.packingCharges, packingCharges) ||
                other.packingCharges == packingCharges) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge) &&
            (identical(other.totalDiscount, totalDiscount) ||
                other.totalDiscount == totalDiscount) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate) &&
            (identical(other.deliveryTime, deliveryTime) ||
                other.deliveryTime == deliveryTime) &&
            (identical(other.isCouponApplied, isCouponApplied) ||
                other.isCouponApplied == isCouponApplied) &&
            const DeepCollectionEquality()
                .equals(other._deliveryAddress, _deliveryAddress) &&
            const DeepCollectionEquality()
                .equals(other._orderItem, _orderItem));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        invoiceId,
        couponId,
        userId,
        deliveryAddressId,
        paymentStatus,
        orderStatus,
        paymentType,
        packingCharges,
        totalPrice,
        subTotal,
        deliveryCharge,
        totalDiscount,
        orderDate,
        deliveryDate,
        deliveryTime,
        isCouponApplied,
        const DeepCollectionEquality().hash(_deliveryAddress),
        const DeepCollectionEquality().hash(_orderItem)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      __$$OrderImplCopyWithImpl<_$OrderImpl>(this, _$identity);
}

abstract class _Order implements Order {
  const factory _Order(
      {required final StringValue id,
      required final StringValue invoiceId,
      required final StringValue couponId,
      required final StringValue userId,
      required final StringValue deliveryAddressId,
      required final PaymentStatus paymentStatus,
      required final OrderStatus orderStatus,
      required final StringValue paymentType,
      required final IntegerValue packingCharges,
      required final IntegerValue totalPrice,
      required final IntegerValue subTotal,
      required final IntegerValue deliveryCharge,
      required final IntegerValue totalDiscount,
      required final DateTime orderDate,
      required final DeliveryDate deliveryDate,
      required final StringValue deliveryTime,
      required final bool isCouponApplied,
      required final List<AddressBook> deliveryAddress,
      required final List<OrderItem> orderItem}) = _$OrderImpl;

  @override
  StringValue get id;
  @override
  StringValue get invoiceId;
  @override
  StringValue get couponId;
  @override
  StringValue get userId;
  @override
  StringValue get deliveryAddressId;
  @override
  PaymentStatus get paymentStatus;
  @override
  OrderStatus get orderStatus;
  @override
  StringValue get paymentType;
  @override
  IntegerValue get packingCharges;
  @override
  IntegerValue get totalPrice;
  @override
  IntegerValue get subTotal;
  @override
  IntegerValue get deliveryCharge;
  @override
  IntegerValue get totalDiscount;
  @override
  DateTime get orderDate;
  @override
  DeliveryDate get deliveryDate;
  @override
  StringValue get deliveryTime;
  @override
  bool get isCouponApplied;
  @override
  List<AddressBook> get deliveryAddress;
  @override
  List<OrderItem> get orderItem;
  @override
  @JsonKey(ignore: true)
  _$$OrderImplCopyWith<_$OrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
