// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderDto _$OrderDtoFromJson(Map<String, dynamic> json) {
  return _OrderDto.fromJson(json);
}

/// @nodoc
mixin _$OrderDto {
  @JsonKey(name: '_id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'invoiceId', defaultValue: '')
  String get invoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'couponId', defaultValue: '')
  String get couponId => throw _privateConstructorUsedError;
  @JsonKey(name: 'userId', defaultValue: '')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'deliveryAddressId', defaultValue: '')
  String get deliveryAddressId => throw _privateConstructorUsedError;
  @JsonKey(name: 'paymentStatus', defaultValue: '')
  String get paymentStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'paymentType', defaultValue: '')
  String get paymentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'orderStatus', defaultValue: '')
  String get orderStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalPrice', defaultValue: 0, readValue: intReadValue)
  int get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
  int get subTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'packingCharges', defaultValue: 0, readValue: intReadValue)
  int get packingCharges => throw _privateConstructorUsedError;
  @JsonKey(name: 'deliveryCharge', defaultValue: 0, readValue: intReadValue)
  int get deliveryCharge => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalDiscount', defaultValue: 0, readValue: intReadValue)
  int get totalDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'orderDate', defaultValue: '')
  String get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'deliveryDate', defaultValue: '')
  String get deliveryDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'deliveryTime', defaultValue: '')
  String get deliveryTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'isCouponApplied', defaultValue: false)
  bool get isCouponApplied => throw _privateConstructorUsedError;
  @JsonKey(name: 'deliveryAddress', defaultValue: [])
  List<Map<String, dynamic>> get deliveryAddress =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'orderItem', defaultValue: [])
  List<Map<String, dynamic>> get orderItem =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDtoCopyWith<OrderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDtoCopyWith<$Res> {
  factory $OrderDtoCopyWith(OrderDto value, $Res Function(OrderDto) then) =
      _$OrderDtoCopyWithImpl<$Res, OrderDto>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id', defaultValue: '') String id,
      @JsonKey(name: 'invoiceId', defaultValue: '') String invoiceId,
      @JsonKey(name: 'couponId', defaultValue: '') String couponId,
      @JsonKey(name: 'userId', defaultValue: '') String userId,
      @JsonKey(name: 'deliveryAddressId', defaultValue: '')
      String deliveryAddressId,
      @JsonKey(name: 'paymentStatus', defaultValue: '') String paymentStatus,
      @JsonKey(name: 'paymentType', defaultValue: '') String paymentType,
      @JsonKey(name: 'orderStatus', defaultValue: '') String orderStatus,
      @JsonKey(name: 'totalPrice', defaultValue: 0, readValue: intReadValue)
      int totalPrice,
      @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
      int subTotal,
      @JsonKey(name: 'packingCharges', defaultValue: 0, readValue: intReadValue)
      int packingCharges,
      @JsonKey(name: 'deliveryCharge', defaultValue: 0, readValue: intReadValue)
      int deliveryCharge,
      @JsonKey(name: 'totalDiscount', defaultValue: 0, readValue: intReadValue)
      int totalDiscount,
      @JsonKey(name: 'orderDate', defaultValue: '') String orderDate,
      @JsonKey(name: 'deliveryDate', defaultValue: '') String deliveryDate,
      @JsonKey(name: 'deliveryTime', defaultValue: '') String deliveryTime,
      @JsonKey(name: 'isCouponApplied', defaultValue: false)
      bool isCouponApplied,
      @JsonKey(name: 'deliveryAddress', defaultValue: [])
      List<Map<String, dynamic>> deliveryAddress,
      @JsonKey(name: 'orderItem', defaultValue: [])
      List<Map<String, dynamic>> orderItem});
}

/// @nodoc
class _$OrderDtoCopyWithImpl<$Res, $Val extends OrderDto>
    implements $OrderDtoCopyWith<$Res> {
  _$OrderDtoCopyWithImpl(this._value, this._then);

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
    Object? paymentType = null,
    Object? orderStatus = null,
    Object? totalPrice = null,
    Object? subTotal = null,
    Object? packingCharges = null,
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
              as String,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      couponId: null == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddressId: null == deliveryAddressId
          ? _value.deliveryAddressId
          : deliveryAddressId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int,
      packingCharges: null == packingCharges
          ? _value.packingCharges
          : packingCharges // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as int,
      totalDiscount: null == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryTime: null == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as String,
      isCouponApplied: null == isCouponApplied
          ? _value.isCouponApplied
          : isCouponApplied // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryAddress: null == deliveryAddress
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      orderItem: null == orderItem
          ? _value.orderItem
          : orderItem // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDtoImplCopyWith<$Res>
    implements $OrderDtoCopyWith<$Res> {
  factory _$$OrderDtoImplCopyWith(
          _$OrderDtoImpl value, $Res Function(_$OrderDtoImpl) then) =
      __$$OrderDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id', defaultValue: '') String id,
      @JsonKey(name: 'invoiceId', defaultValue: '') String invoiceId,
      @JsonKey(name: 'couponId', defaultValue: '') String couponId,
      @JsonKey(name: 'userId', defaultValue: '') String userId,
      @JsonKey(name: 'deliveryAddressId', defaultValue: '')
      String deliveryAddressId,
      @JsonKey(name: 'paymentStatus', defaultValue: '') String paymentStatus,
      @JsonKey(name: 'paymentType', defaultValue: '') String paymentType,
      @JsonKey(name: 'orderStatus', defaultValue: '') String orderStatus,
      @JsonKey(name: 'totalPrice', defaultValue: 0, readValue: intReadValue)
      int totalPrice,
      @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
      int subTotal,
      @JsonKey(name: 'packingCharges', defaultValue: 0, readValue: intReadValue)
      int packingCharges,
      @JsonKey(name: 'deliveryCharge', defaultValue: 0, readValue: intReadValue)
      int deliveryCharge,
      @JsonKey(name: 'totalDiscount', defaultValue: 0, readValue: intReadValue)
      int totalDiscount,
      @JsonKey(name: 'orderDate', defaultValue: '') String orderDate,
      @JsonKey(name: 'deliveryDate', defaultValue: '') String deliveryDate,
      @JsonKey(name: 'deliveryTime', defaultValue: '') String deliveryTime,
      @JsonKey(name: 'isCouponApplied', defaultValue: false)
      bool isCouponApplied,
      @JsonKey(name: 'deliveryAddress', defaultValue: [])
      List<Map<String, dynamic>> deliveryAddress,
      @JsonKey(name: 'orderItem', defaultValue: [])
      List<Map<String, dynamic>> orderItem});
}

/// @nodoc
class __$$OrderDtoImplCopyWithImpl<$Res>
    extends _$OrderDtoCopyWithImpl<$Res, _$OrderDtoImpl>
    implements _$$OrderDtoImplCopyWith<$Res> {
  __$$OrderDtoImplCopyWithImpl(
      _$OrderDtoImpl _value, $Res Function(_$OrderDtoImpl) _then)
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
    Object? paymentType = null,
    Object? orderStatus = null,
    Object? totalPrice = null,
    Object? subTotal = null,
    Object? packingCharges = null,
    Object? deliveryCharge = null,
    Object? totalDiscount = null,
    Object? orderDate = null,
    Object? deliveryDate = null,
    Object? deliveryTime = null,
    Object? isCouponApplied = null,
    Object? deliveryAddress = null,
    Object? orderItem = null,
  }) {
    return _then(_$OrderDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceId: null == invoiceId
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String,
      couponId: null == couponId
          ? _value.couponId
          : couponId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAddressId: null == deliveryAddressId
          ? _value.deliveryAddressId
          : deliveryAddressId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentStatus: null == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
      orderStatus: null == orderStatus
          ? _value.orderStatus
          : orderStatus // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int,
      packingCharges: null == packingCharges
          ? _value.packingCharges
          : packingCharges // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as int,
      totalDiscount: null == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      orderDate: null == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDate: null == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryTime: null == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as String,
      isCouponApplied: null == isCouponApplied
          ? _value.isCouponApplied
          : isCouponApplied // ignore: cast_nullable_to_non_nullable
              as bool,
      deliveryAddress: null == deliveryAddress
          ? _value._deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      orderItem: null == orderItem
          ? _value._orderItem
          : orderItem // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDtoImpl extends _OrderDto {
  const _$OrderDtoImpl(
      {@JsonKey(name: '_id', defaultValue: '') required this.id,
      @JsonKey(name: 'invoiceId', defaultValue: '') required this.invoiceId,
      @JsonKey(name: 'couponId', defaultValue: '') required this.couponId,
      @JsonKey(name: 'userId', defaultValue: '') required this.userId,
      @JsonKey(name: 'deliveryAddressId', defaultValue: '')
      required this.deliveryAddressId,
      @JsonKey(name: 'paymentStatus', defaultValue: '')
      required this.paymentStatus,
      @JsonKey(name: 'paymentType', defaultValue: '') required this.paymentType,
      @JsonKey(name: 'orderStatus', defaultValue: '') required this.orderStatus,
      @JsonKey(name: 'totalPrice', defaultValue: 0, readValue: intReadValue)
      required this.totalPrice,
      @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
      required this.subTotal,
      @JsonKey(name: 'packingCharges', defaultValue: 0, readValue: intReadValue)
      required this.packingCharges,
      @JsonKey(name: 'deliveryCharge', defaultValue: 0, readValue: intReadValue)
      required this.deliveryCharge,
      @JsonKey(name: 'totalDiscount', defaultValue: 0, readValue: intReadValue)
      required this.totalDiscount,
      @JsonKey(name: 'orderDate', defaultValue: '') required this.orderDate,
      @JsonKey(name: 'deliveryDate', defaultValue: '')
      required this.deliveryDate,
      @JsonKey(name: 'deliveryTime', defaultValue: '')
      required this.deliveryTime,
      @JsonKey(name: 'isCouponApplied', defaultValue: false)
      required this.isCouponApplied,
      @JsonKey(name: 'deliveryAddress', defaultValue: [])
      required final List<Map<String, dynamic>> deliveryAddress,
      @JsonKey(name: 'orderItem', defaultValue: [])
      required final List<Map<String, dynamic>> orderItem})
      : _deliveryAddress = deliveryAddress,
        _orderItem = orderItem,
        super._();

  factory _$OrderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDtoImplFromJson(json);

  @override
  @JsonKey(name: '_id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'invoiceId', defaultValue: '')
  final String invoiceId;
  @override
  @JsonKey(name: 'couponId', defaultValue: '')
  final String couponId;
  @override
  @JsonKey(name: 'userId', defaultValue: '')
  final String userId;
  @override
  @JsonKey(name: 'deliveryAddressId', defaultValue: '')
  final String deliveryAddressId;
  @override
  @JsonKey(name: 'paymentStatus', defaultValue: '')
  final String paymentStatus;
  @override
  @JsonKey(name: 'paymentType', defaultValue: '')
  final String paymentType;
  @override
  @JsonKey(name: 'orderStatus', defaultValue: '')
  final String orderStatus;
  @override
  @JsonKey(name: 'totalPrice', defaultValue: 0, readValue: intReadValue)
  final int totalPrice;
  @override
  @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
  final int subTotal;
  @override
  @JsonKey(name: 'packingCharges', defaultValue: 0, readValue: intReadValue)
  final int packingCharges;
  @override
  @JsonKey(name: 'deliveryCharge', defaultValue: 0, readValue: intReadValue)
  final int deliveryCharge;
  @override
  @JsonKey(name: 'totalDiscount', defaultValue: 0, readValue: intReadValue)
  final int totalDiscount;
  @override
  @JsonKey(name: 'orderDate', defaultValue: '')
  final String orderDate;
  @override
  @JsonKey(name: 'deliveryDate', defaultValue: '')
  final String deliveryDate;
  @override
  @JsonKey(name: 'deliveryTime', defaultValue: '')
  final String deliveryTime;
  @override
  @JsonKey(name: 'isCouponApplied', defaultValue: false)
  final bool isCouponApplied;
  final List<Map<String, dynamic>> _deliveryAddress;
  @override
  @JsonKey(name: 'deliveryAddress', defaultValue: [])
  List<Map<String, dynamic>> get deliveryAddress {
    if (_deliveryAddress is EqualUnmodifiableListView) return _deliveryAddress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deliveryAddress);
  }

  final List<Map<String, dynamic>> _orderItem;
  @override
  @JsonKey(name: 'orderItem', defaultValue: [])
  List<Map<String, dynamic>> get orderItem {
    if (_orderItem is EqualUnmodifiableListView) return _orderItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderItem);
  }

  @override
  String toString() {
    return 'OrderDto(id: $id, invoiceId: $invoiceId, couponId: $couponId, userId: $userId, deliveryAddressId: $deliveryAddressId, paymentStatus: $paymentStatus, paymentType: $paymentType, orderStatus: $orderStatus, totalPrice: $totalPrice, subTotal: $subTotal, packingCharges: $packingCharges, deliveryCharge: $deliveryCharge, totalDiscount: $totalDiscount, orderDate: $orderDate, deliveryDate: $deliveryDate, deliveryTime: $deliveryTime, isCouponApplied: $isCouponApplied, deliveryAddress: $deliveryAddress, orderItem: $orderItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDtoImpl &&
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
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.orderStatus, orderStatus) ||
                other.orderStatus == orderStatus) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.packingCharges, packingCharges) ||
                other.packingCharges == packingCharges) &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        invoiceId,
        couponId,
        userId,
        deliveryAddressId,
        paymentStatus,
        paymentType,
        orderStatus,
        totalPrice,
        subTotal,
        packingCharges,
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
  _$$OrderDtoImplCopyWith<_$OrderDtoImpl> get copyWith =>
      __$$OrderDtoImplCopyWithImpl<_$OrderDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDtoImplToJson(
      this,
    );
  }
}

abstract class _OrderDto extends OrderDto {
  const factory _OrderDto(
      {@JsonKey(name: '_id', defaultValue: '') required final String id,
      @JsonKey(name: 'invoiceId', defaultValue: '')
      required final String invoiceId,
      @JsonKey(name: 'couponId', defaultValue: '')
      required final String couponId,
      @JsonKey(name: 'userId', defaultValue: '') required final String userId,
      @JsonKey(name: 'deliveryAddressId', defaultValue: '')
      required final String deliveryAddressId,
      @JsonKey(name: 'paymentStatus', defaultValue: '')
      required final String paymentStatus,
      @JsonKey(name: 'paymentType', defaultValue: '')
      required final String paymentType,
      @JsonKey(name: 'orderStatus', defaultValue: '')
      required final String orderStatus,
      @JsonKey(name: 'totalPrice', defaultValue: 0, readValue: intReadValue)
      required final int totalPrice,
      @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
      required final int subTotal,
      @JsonKey(name: 'packingCharges', defaultValue: 0, readValue: intReadValue)
      required final int packingCharges,
      @JsonKey(name: 'deliveryCharge', defaultValue: 0, readValue: intReadValue)
      required final int deliveryCharge,
      @JsonKey(name: 'totalDiscount', defaultValue: 0, readValue: intReadValue)
      required final int totalDiscount,
      @JsonKey(name: 'orderDate', defaultValue: '')
      required final String orderDate,
      @JsonKey(name: 'deliveryDate', defaultValue: '')
      required final String deliveryDate,
      @JsonKey(name: 'deliveryTime', defaultValue: '')
      required final String deliveryTime,
      @JsonKey(name: 'isCouponApplied', defaultValue: false)
      required final bool isCouponApplied,
      @JsonKey(name: 'deliveryAddress', defaultValue: [])
      required final List<Map<String, dynamic>> deliveryAddress,
      @JsonKey(name: 'orderItem', defaultValue: [])
      required final List<Map<String, dynamic>> orderItem}) = _$OrderDtoImpl;
  const _OrderDto._() : super._();

  factory _OrderDto.fromJson(Map<String, dynamic> json) =
      _$OrderDtoImpl.fromJson;

  @override
  @JsonKey(name: '_id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'invoiceId', defaultValue: '')
  String get invoiceId;
  @override
  @JsonKey(name: 'couponId', defaultValue: '')
  String get couponId;
  @override
  @JsonKey(name: 'userId', defaultValue: '')
  String get userId;
  @override
  @JsonKey(name: 'deliveryAddressId', defaultValue: '')
  String get deliveryAddressId;
  @override
  @JsonKey(name: 'paymentStatus', defaultValue: '')
  String get paymentStatus;
  @override
  @JsonKey(name: 'paymentType', defaultValue: '')
  String get paymentType;
  @override
  @JsonKey(name: 'orderStatus', defaultValue: '')
  String get orderStatus;
  @override
  @JsonKey(name: 'totalPrice', defaultValue: 0, readValue: intReadValue)
  int get totalPrice;
  @override
  @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
  int get subTotal;
  @override
  @JsonKey(name: 'packingCharges', defaultValue: 0, readValue: intReadValue)
  int get packingCharges;
  @override
  @JsonKey(name: 'deliveryCharge', defaultValue: 0, readValue: intReadValue)
  int get deliveryCharge;
  @override
  @JsonKey(name: 'totalDiscount', defaultValue: 0, readValue: intReadValue)
  int get totalDiscount;
  @override
  @JsonKey(name: 'orderDate', defaultValue: '')
  String get orderDate;
  @override
  @JsonKey(name: 'deliveryDate', defaultValue: '')
  String get deliveryDate;
  @override
  @JsonKey(name: 'deliveryTime', defaultValue: '')
  String get deliveryTime;
  @override
  @JsonKey(name: 'isCouponApplied', defaultValue: false)
  bool get isCouponApplied;
  @override
  @JsonKey(name: 'deliveryAddress', defaultValue: [])
  List<Map<String, dynamic>> get deliveryAddress;
  @override
  @JsonKey(name: 'orderItem', defaultValue: [])
  List<Map<String, dynamic>> get orderItem;
  @override
  @JsonKey(ignore: true)
  _$$OrderDtoImplCopyWith<_$OrderDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
