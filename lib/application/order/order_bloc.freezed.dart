// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(
            CartItem cartItem,
            AddressBook addressBook,
            String date,
            Coupon coupon,
            double deliveryCharge,
            CurrentUser currentUser)
        submitOrder,
    required TResult Function() fetchOrders,
    required TResult Function(double totalAmount, String phone, String orderId)
        processPayment,
    required TResult Function(
            String orderId, String? paymentId, String paymentType)
        paymentSuccess,
    required TResult Function(String orderId, String paymentType) paymentFailed,
    required TResult Function() handleExternalApp,
    required TResult Function(PaymentMethod paymentMethod) changePaymentMethod,
    required TResult Function(
            bool isDeliveryDateSelectedByUser, String selectedDate)
        checkDeliveryDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon, double deliveryCharge, CurrentUser currentUser)?
        submitOrder,
    TResult? Function()? fetchOrders,
    TResult? Function(double totalAmount, String phone, String orderId)?
        processPayment,
    TResult? Function(String orderId, String? paymentId, String paymentType)?
        paymentSuccess,
    TResult? Function(String orderId, String paymentType)? paymentFailed,
    TResult? Function()? handleExternalApp,
    TResult? Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult? Function(bool isDeliveryDateSelectedByUser, String selectedDate)?
        checkDeliveryDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon, double deliveryCharge, CurrentUser currentUser)?
        submitOrder,
    TResult Function()? fetchOrders,
    TResult Function(double totalAmount, String phone, String orderId)?
        processPayment,
    TResult Function(String orderId, String? paymentId, String paymentType)?
        paymentSuccess,
    TResult Function(String orderId, String paymentType)? paymentFailed,
    TResult Function()? handleExternalApp,
    TResult Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult Function(bool isDeliveryDateSelectedByUser, String selectedDate)?
        checkDeliveryDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SubmitOrder value) submitOrder,
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_ProcessPayment value) processPayment,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailed value) paymentFailed,
    required TResult Function(_HandleExternalApp value) handleExternalApp,
    required TResult Function(_ChangePaymentMethod value) changePaymentMethod,
    required TResult Function(_CheckDeliveryDate value) checkDeliveryDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SubmitOrder value)? submitOrder,
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_ProcessPayment value)? processPayment,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentFailed value)? paymentFailed,
    TResult? Function(_HandleExternalApp value)? handleExternalApp,
    TResult? Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult? Function(_CheckDeliveryDate value)? checkDeliveryDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SubmitOrder value)? submitOrder,
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_ProcessPayment value)? processPayment,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailed value)? paymentFailed,
    TResult Function(_HandleExternalApp value)? handleExternalApp,
    TResult Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult Function(_CheckDeliveryDate value)? checkDeliveryDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl();

  @override
  String toString() {
    return 'OrderEvent.initialized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(
            CartItem cartItem,
            AddressBook addressBook,
            String date,
            Coupon coupon,
            double deliveryCharge,
            CurrentUser currentUser)
        submitOrder,
    required TResult Function() fetchOrders,
    required TResult Function(double totalAmount, String phone, String orderId)
        processPayment,
    required TResult Function(
            String orderId, String? paymentId, String paymentType)
        paymentSuccess,
    required TResult Function(String orderId, String paymentType) paymentFailed,
    required TResult Function() handleExternalApp,
    required TResult Function(PaymentMethod paymentMethod) changePaymentMethod,
    required TResult Function(
            bool isDeliveryDateSelectedByUser, String selectedDate)
        checkDeliveryDate,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon, double deliveryCharge, CurrentUser currentUser)?
        submitOrder,
    TResult? Function()? fetchOrders,
    TResult? Function(double totalAmount, String phone, String orderId)?
        processPayment,
    TResult? Function(String orderId, String? paymentId, String paymentType)?
        paymentSuccess,
    TResult? Function(String orderId, String paymentType)? paymentFailed,
    TResult? Function()? handleExternalApp,
    TResult? Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult? Function(bool isDeliveryDateSelectedByUser, String selectedDate)?
        checkDeliveryDate,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon, double deliveryCharge, CurrentUser currentUser)?
        submitOrder,
    TResult Function()? fetchOrders,
    TResult Function(double totalAmount, String phone, String orderId)?
        processPayment,
    TResult Function(String orderId, String? paymentId, String paymentType)?
        paymentSuccess,
    TResult Function(String orderId, String paymentType)? paymentFailed,
    TResult Function()? handleExternalApp,
    TResult Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult Function(bool isDeliveryDateSelectedByUser, String selectedDate)?
        checkDeliveryDate,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SubmitOrder value) submitOrder,
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_ProcessPayment value) processPayment,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailed value) paymentFailed,
    required TResult Function(_HandleExternalApp value) handleExternalApp,
    required TResult Function(_ChangePaymentMethod value) changePaymentMethod,
    required TResult Function(_CheckDeliveryDate value) checkDeliveryDate,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SubmitOrder value)? submitOrder,
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_ProcessPayment value)? processPayment,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentFailed value)? paymentFailed,
    TResult? Function(_HandleExternalApp value)? handleExternalApp,
    TResult? Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult? Function(_CheckDeliveryDate value)? checkDeliveryDate,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SubmitOrder value)? submitOrder,
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_ProcessPayment value)? processPayment,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailed value)? paymentFailed,
    TResult Function(_HandleExternalApp value)? handleExternalApp,
    TResult Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult Function(_CheckDeliveryDate value)? checkDeliveryDate,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements OrderEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$SubmitOrderImplCopyWith<$Res> {
  factory _$$SubmitOrderImplCopyWith(
          _$SubmitOrderImpl value, $Res Function(_$SubmitOrderImpl) then) =
      __$$SubmitOrderImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {CartItem cartItem,
      AddressBook addressBook,
      String date,
      Coupon coupon,
      double deliveryCharge,
      CurrentUser currentUser});

  $CartItemCopyWith<$Res> get cartItem;
  $AddressBookCopyWith<$Res> get addressBook;
  $CouponCopyWith<$Res> get coupon;
  $CurrentUserCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$$SubmitOrderImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$SubmitOrderImpl>
    implements _$$SubmitOrderImplCopyWith<$Res> {
  __$$SubmitOrderImplCopyWithImpl(
      _$SubmitOrderImpl _value, $Res Function(_$SubmitOrderImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItem = null,
    Object? addressBook = null,
    Object? date = null,
    Object? coupon = null,
    Object? deliveryCharge = null,
    Object? currentUser = null,
  }) {
    return _then(_$SubmitOrderImpl(
      cartItem: null == cartItem
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as CartItem,
      addressBook: null == addressBook
          ? _value.addressBook
          : addressBook // ignore: cast_nullable_to_non_nullable
              as AddressBook,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      coupon: null == coupon
          ? _value.coupon
          : coupon // ignore: cast_nullable_to_non_nullable
              as Coupon,
      deliveryCharge: null == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double,
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as CurrentUser,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartItemCopyWith<$Res> get cartItem {
    return $CartItemCopyWith<$Res>(_value.cartItem, (value) {
      return _then(_value.copyWith(cartItem: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressBookCopyWith<$Res> get addressBook {
    return $AddressBookCopyWith<$Res>(_value.addressBook, (value) {
      return _then(_value.copyWith(addressBook: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CouponCopyWith<$Res> get coupon {
    return $CouponCopyWith<$Res>(_value.coupon, (value) {
      return _then(_value.copyWith(coupon: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CurrentUserCopyWith<$Res> get currentUser {
    return $CurrentUserCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value));
    });
  }
}

/// @nodoc

class _$SubmitOrderImpl implements _SubmitOrder {
  const _$SubmitOrderImpl(
      {required this.cartItem,
      required this.addressBook,
      required this.date,
      required this.coupon,
      required this.deliveryCharge,
      required this.currentUser});

  @override
  final CartItem cartItem;
  @override
  final AddressBook addressBook;
  @override
  final String date;
  @override
  final Coupon coupon;
  @override
  final double deliveryCharge;
  @override
  final CurrentUser currentUser;

  @override
  String toString() {
    return 'OrderEvent.submitOrder(cartItem: $cartItem, addressBook: $addressBook, date: $date, coupon: $coupon, deliveryCharge: $deliveryCharge, currentUser: $currentUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitOrderImpl &&
            (identical(other.cartItem, cartItem) ||
                other.cartItem == cartItem) &&
            (identical(other.addressBook, addressBook) ||
                other.addressBook == addressBook) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.coupon, coupon) || other.coupon == coupon) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cartItem, addressBook, date,
      coupon, deliveryCharge, currentUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitOrderImplCopyWith<_$SubmitOrderImpl> get copyWith =>
      __$$SubmitOrderImplCopyWithImpl<_$SubmitOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(
            CartItem cartItem,
            AddressBook addressBook,
            String date,
            Coupon coupon,
            double deliveryCharge,
            CurrentUser currentUser)
        submitOrder,
    required TResult Function() fetchOrders,
    required TResult Function(double totalAmount, String phone, String orderId)
        processPayment,
    required TResult Function(
            String orderId, String? paymentId, String paymentType)
        paymentSuccess,
    required TResult Function(String orderId, String paymentType) paymentFailed,
    required TResult Function() handleExternalApp,
    required TResult Function(PaymentMethod paymentMethod) changePaymentMethod,
    required TResult Function(
            bool isDeliveryDateSelectedByUser, String selectedDate)
        checkDeliveryDate,
  }) {
    return submitOrder(
        cartItem, addressBook, date, coupon, deliveryCharge, currentUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon, double deliveryCharge, CurrentUser currentUser)?
        submitOrder,
    TResult? Function()? fetchOrders,
    TResult? Function(double totalAmount, String phone, String orderId)?
        processPayment,
    TResult? Function(String orderId, String? paymentId, String paymentType)?
        paymentSuccess,
    TResult? Function(String orderId, String paymentType)? paymentFailed,
    TResult? Function()? handleExternalApp,
    TResult? Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult? Function(bool isDeliveryDateSelectedByUser, String selectedDate)?
        checkDeliveryDate,
  }) {
    return submitOrder?.call(
        cartItem, addressBook, date, coupon, deliveryCharge, currentUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon, double deliveryCharge, CurrentUser currentUser)?
        submitOrder,
    TResult Function()? fetchOrders,
    TResult Function(double totalAmount, String phone, String orderId)?
        processPayment,
    TResult Function(String orderId, String? paymentId, String paymentType)?
        paymentSuccess,
    TResult Function(String orderId, String paymentType)? paymentFailed,
    TResult Function()? handleExternalApp,
    TResult Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult Function(bool isDeliveryDateSelectedByUser, String selectedDate)?
        checkDeliveryDate,
    required TResult orElse(),
  }) {
    if (submitOrder != null) {
      return submitOrder(
          cartItem, addressBook, date, coupon, deliveryCharge, currentUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SubmitOrder value) submitOrder,
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_ProcessPayment value) processPayment,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailed value) paymentFailed,
    required TResult Function(_HandleExternalApp value) handleExternalApp,
    required TResult Function(_ChangePaymentMethod value) changePaymentMethod,
    required TResult Function(_CheckDeliveryDate value) checkDeliveryDate,
  }) {
    return submitOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SubmitOrder value)? submitOrder,
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_ProcessPayment value)? processPayment,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentFailed value)? paymentFailed,
    TResult? Function(_HandleExternalApp value)? handleExternalApp,
    TResult? Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult? Function(_CheckDeliveryDate value)? checkDeliveryDate,
  }) {
    return submitOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SubmitOrder value)? submitOrder,
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_ProcessPayment value)? processPayment,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailed value)? paymentFailed,
    TResult Function(_HandleExternalApp value)? handleExternalApp,
    TResult Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult Function(_CheckDeliveryDate value)? checkDeliveryDate,
    required TResult orElse(),
  }) {
    if (submitOrder != null) {
      return submitOrder(this);
    }
    return orElse();
  }
}

abstract class _SubmitOrder implements OrderEvent {
  const factory _SubmitOrder(
      {required final CartItem cartItem,
      required final AddressBook addressBook,
      required final String date,
      required final Coupon coupon,
      required final double deliveryCharge,
      required final CurrentUser currentUser}) = _$SubmitOrderImpl;

  CartItem get cartItem;
  AddressBook get addressBook;
  String get date;
  Coupon get coupon;
  double get deliveryCharge;
  CurrentUser get currentUser;
  @JsonKey(ignore: true)
  _$$SubmitOrderImplCopyWith<_$SubmitOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchOrdersImplCopyWith<$Res> {
  factory _$$FetchOrdersImplCopyWith(
          _$FetchOrdersImpl value, $Res Function(_$FetchOrdersImpl) then) =
      __$$FetchOrdersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchOrdersImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$FetchOrdersImpl>
    implements _$$FetchOrdersImplCopyWith<$Res> {
  __$$FetchOrdersImplCopyWithImpl(
      _$FetchOrdersImpl _value, $Res Function(_$FetchOrdersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchOrdersImpl implements _FetchOrders {
  const _$FetchOrdersImpl();

  @override
  String toString() {
    return 'OrderEvent.fetchOrders()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchOrdersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(
            CartItem cartItem,
            AddressBook addressBook,
            String date,
            Coupon coupon,
            double deliveryCharge,
            CurrentUser currentUser)
        submitOrder,
    required TResult Function() fetchOrders,
    required TResult Function(double totalAmount, String phone, String orderId)
        processPayment,
    required TResult Function(
            String orderId, String? paymentId, String paymentType)
        paymentSuccess,
    required TResult Function(String orderId, String paymentType) paymentFailed,
    required TResult Function() handleExternalApp,
    required TResult Function(PaymentMethod paymentMethod) changePaymentMethod,
    required TResult Function(
            bool isDeliveryDateSelectedByUser, String selectedDate)
        checkDeliveryDate,
  }) {
    return fetchOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon, double deliveryCharge, CurrentUser currentUser)?
        submitOrder,
    TResult? Function()? fetchOrders,
    TResult? Function(double totalAmount, String phone, String orderId)?
        processPayment,
    TResult? Function(String orderId, String? paymentId, String paymentType)?
        paymentSuccess,
    TResult? Function(String orderId, String paymentType)? paymentFailed,
    TResult? Function()? handleExternalApp,
    TResult? Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult? Function(bool isDeliveryDateSelectedByUser, String selectedDate)?
        checkDeliveryDate,
  }) {
    return fetchOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon, double deliveryCharge, CurrentUser currentUser)?
        submitOrder,
    TResult Function()? fetchOrders,
    TResult Function(double totalAmount, String phone, String orderId)?
        processPayment,
    TResult Function(String orderId, String? paymentId, String paymentType)?
        paymentSuccess,
    TResult Function(String orderId, String paymentType)? paymentFailed,
    TResult Function()? handleExternalApp,
    TResult Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult Function(bool isDeliveryDateSelectedByUser, String selectedDate)?
        checkDeliveryDate,
    required TResult orElse(),
  }) {
    if (fetchOrders != null) {
      return fetchOrders();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SubmitOrder value) submitOrder,
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_ProcessPayment value) processPayment,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailed value) paymentFailed,
    required TResult Function(_HandleExternalApp value) handleExternalApp,
    required TResult Function(_ChangePaymentMethod value) changePaymentMethod,
    required TResult Function(_CheckDeliveryDate value) checkDeliveryDate,
  }) {
    return fetchOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SubmitOrder value)? submitOrder,
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_ProcessPayment value)? processPayment,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentFailed value)? paymentFailed,
    TResult? Function(_HandleExternalApp value)? handleExternalApp,
    TResult? Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult? Function(_CheckDeliveryDate value)? checkDeliveryDate,
  }) {
    return fetchOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SubmitOrder value)? submitOrder,
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_ProcessPayment value)? processPayment,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailed value)? paymentFailed,
    TResult Function(_HandleExternalApp value)? handleExternalApp,
    TResult Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult Function(_CheckDeliveryDate value)? checkDeliveryDate,
    required TResult orElse(),
  }) {
    if (fetchOrders != null) {
      return fetchOrders(this);
    }
    return orElse();
  }
}

abstract class _FetchOrders implements OrderEvent {
  const factory _FetchOrders() = _$FetchOrdersImpl;
}

/// @nodoc
abstract class _$$ProcessPaymentImplCopyWith<$Res> {
  factory _$$ProcessPaymentImplCopyWith(_$ProcessPaymentImpl value,
          $Res Function(_$ProcessPaymentImpl) then) =
      __$$ProcessPaymentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double totalAmount, String phone, String orderId});
}

/// @nodoc
class __$$ProcessPaymentImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$ProcessPaymentImpl>
    implements _$$ProcessPaymentImplCopyWith<$Res> {
  __$$ProcessPaymentImplCopyWithImpl(
      _$ProcessPaymentImpl _value, $Res Function(_$ProcessPaymentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalAmount = null,
    Object? phone = null,
    Object? orderId = null,
  }) {
    return _then(_$ProcessPaymentImpl(
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProcessPaymentImpl implements _ProcessPayment {
  const _$ProcessPaymentImpl(
      {required this.totalAmount, required this.phone, required this.orderId});

  @override
  final double totalAmount;
  @override
  final String phone;
  @override
  final String orderId;

  @override
  String toString() {
    return 'OrderEvent.processPayment(totalAmount: $totalAmount, phone: $phone, orderId: $orderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProcessPaymentImpl &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, totalAmount, phone, orderId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProcessPaymentImplCopyWith<_$ProcessPaymentImpl> get copyWith =>
      __$$ProcessPaymentImplCopyWithImpl<_$ProcessPaymentImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(
            CartItem cartItem,
            AddressBook addressBook,
            String date,
            Coupon coupon,
            double deliveryCharge,
            CurrentUser currentUser)
        submitOrder,
    required TResult Function() fetchOrders,
    required TResult Function(double totalAmount, String phone, String orderId)
        processPayment,
    required TResult Function(
            String orderId, String? paymentId, String paymentType)
        paymentSuccess,
    required TResult Function(String orderId, String paymentType) paymentFailed,
    required TResult Function() handleExternalApp,
    required TResult Function(PaymentMethod paymentMethod) changePaymentMethod,
    required TResult Function(
            bool isDeliveryDateSelectedByUser, String selectedDate)
        checkDeliveryDate,
  }) {
    return processPayment(totalAmount, phone, orderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon, double deliveryCharge, CurrentUser currentUser)?
        submitOrder,
    TResult? Function()? fetchOrders,
    TResult? Function(double totalAmount, String phone, String orderId)?
        processPayment,
    TResult? Function(String orderId, String? paymentId, String paymentType)?
        paymentSuccess,
    TResult? Function(String orderId, String paymentType)? paymentFailed,
    TResult? Function()? handleExternalApp,
    TResult? Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult? Function(bool isDeliveryDateSelectedByUser, String selectedDate)?
        checkDeliveryDate,
  }) {
    return processPayment?.call(totalAmount, phone, orderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon, double deliveryCharge, CurrentUser currentUser)?
        submitOrder,
    TResult Function()? fetchOrders,
    TResult Function(double totalAmount, String phone, String orderId)?
        processPayment,
    TResult Function(String orderId, String? paymentId, String paymentType)?
        paymentSuccess,
    TResult Function(String orderId, String paymentType)? paymentFailed,
    TResult Function()? handleExternalApp,
    TResult Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult Function(bool isDeliveryDateSelectedByUser, String selectedDate)?
        checkDeliveryDate,
    required TResult orElse(),
  }) {
    if (processPayment != null) {
      return processPayment(totalAmount, phone, orderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SubmitOrder value) submitOrder,
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_ProcessPayment value) processPayment,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailed value) paymentFailed,
    required TResult Function(_HandleExternalApp value) handleExternalApp,
    required TResult Function(_ChangePaymentMethod value) changePaymentMethod,
    required TResult Function(_CheckDeliveryDate value) checkDeliveryDate,
  }) {
    return processPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SubmitOrder value)? submitOrder,
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_ProcessPayment value)? processPayment,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentFailed value)? paymentFailed,
    TResult? Function(_HandleExternalApp value)? handleExternalApp,
    TResult? Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult? Function(_CheckDeliveryDate value)? checkDeliveryDate,
  }) {
    return processPayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SubmitOrder value)? submitOrder,
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_ProcessPayment value)? processPayment,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailed value)? paymentFailed,
    TResult Function(_HandleExternalApp value)? handleExternalApp,
    TResult Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult Function(_CheckDeliveryDate value)? checkDeliveryDate,
    required TResult orElse(),
  }) {
    if (processPayment != null) {
      return processPayment(this);
    }
    return orElse();
  }
}

abstract class _ProcessPayment implements OrderEvent {
  const factory _ProcessPayment(
      {required final double totalAmount,
      required final String phone,
      required final String orderId}) = _$ProcessPaymentImpl;

  double get totalAmount;
  String get phone;
  String get orderId;
  @JsonKey(ignore: true)
  _$$ProcessPaymentImplCopyWith<_$ProcessPaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentSuccessImplCopyWith<$Res> {
  factory _$$PaymentSuccessImplCopyWith(_$PaymentSuccessImpl value,
          $Res Function(_$PaymentSuccessImpl) then) =
      __$$PaymentSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId, String? paymentId, String paymentType});
}

/// @nodoc
class __$$PaymentSuccessImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$PaymentSuccessImpl>
    implements _$$PaymentSuccessImplCopyWith<$Res> {
  __$$PaymentSuccessImplCopyWithImpl(
      _$PaymentSuccessImpl _value, $Res Function(_$PaymentSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? paymentId = freezed,
    Object? paymentType = null,
  }) {
    return _then(_$PaymentSuccessImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentId: freezed == paymentId
          ? _value.paymentId
          : paymentId // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentSuccessImpl implements _PaymentSuccess {
  const _$PaymentSuccessImpl(
      {required this.orderId,
      required this.paymentId,
      required this.paymentType});

  @override
  final String orderId;
  @override
  final String? paymentId;
  @override
  final String paymentType;

  @override
  String toString() {
    return 'OrderEvent.paymentSuccess(orderId: $orderId, paymentId: $paymentId, paymentType: $paymentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentSuccessImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.paymentId, paymentId) ||
                other.paymentId == paymentId) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, paymentId, paymentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentSuccessImplCopyWith<_$PaymentSuccessImpl> get copyWith =>
      __$$PaymentSuccessImplCopyWithImpl<_$PaymentSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(
            CartItem cartItem,
            AddressBook addressBook,
            String date,
            Coupon coupon,
            double deliveryCharge,
            CurrentUser currentUser)
        submitOrder,
    required TResult Function() fetchOrders,
    required TResult Function(double totalAmount, String phone, String orderId)
        processPayment,
    required TResult Function(
            String orderId, String? paymentId, String paymentType)
        paymentSuccess,
    required TResult Function(String orderId, String paymentType) paymentFailed,
    required TResult Function() handleExternalApp,
    required TResult Function(PaymentMethod paymentMethod) changePaymentMethod,
    required TResult Function(
            bool isDeliveryDateSelectedByUser, String selectedDate)
        checkDeliveryDate,
  }) {
    return paymentSuccess(orderId, paymentId, paymentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon, double deliveryCharge, CurrentUser currentUser)?
        submitOrder,
    TResult? Function()? fetchOrders,
    TResult? Function(double totalAmount, String phone, String orderId)?
        processPayment,
    TResult? Function(String orderId, String? paymentId, String paymentType)?
        paymentSuccess,
    TResult? Function(String orderId, String paymentType)? paymentFailed,
    TResult? Function()? handleExternalApp,
    TResult? Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult? Function(bool isDeliveryDateSelectedByUser, String selectedDate)?
        checkDeliveryDate,
  }) {
    return paymentSuccess?.call(orderId, paymentId, paymentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon, double deliveryCharge, CurrentUser currentUser)?
        submitOrder,
    TResult Function()? fetchOrders,
    TResult Function(double totalAmount, String phone, String orderId)?
        processPayment,
    TResult Function(String orderId, String? paymentId, String paymentType)?
        paymentSuccess,
    TResult Function(String orderId, String paymentType)? paymentFailed,
    TResult Function()? handleExternalApp,
    TResult Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult Function(bool isDeliveryDateSelectedByUser, String selectedDate)?
        checkDeliveryDate,
    required TResult orElse(),
  }) {
    if (paymentSuccess != null) {
      return paymentSuccess(orderId, paymentId, paymentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SubmitOrder value) submitOrder,
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_ProcessPayment value) processPayment,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailed value) paymentFailed,
    required TResult Function(_HandleExternalApp value) handleExternalApp,
    required TResult Function(_ChangePaymentMethod value) changePaymentMethod,
    required TResult Function(_CheckDeliveryDate value) checkDeliveryDate,
  }) {
    return paymentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SubmitOrder value)? submitOrder,
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_ProcessPayment value)? processPayment,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentFailed value)? paymentFailed,
    TResult? Function(_HandleExternalApp value)? handleExternalApp,
    TResult? Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult? Function(_CheckDeliveryDate value)? checkDeliveryDate,
  }) {
    return paymentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SubmitOrder value)? submitOrder,
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_ProcessPayment value)? processPayment,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailed value)? paymentFailed,
    TResult Function(_HandleExternalApp value)? handleExternalApp,
    TResult Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult Function(_CheckDeliveryDate value)? checkDeliveryDate,
    required TResult orElse(),
  }) {
    if (paymentSuccess != null) {
      return paymentSuccess(this);
    }
    return orElse();
  }
}

abstract class _PaymentSuccess implements OrderEvent {
  const factory _PaymentSuccess(
      {required final String orderId,
      required final String? paymentId,
      required final String paymentType}) = _$PaymentSuccessImpl;

  String get orderId;
  String? get paymentId;
  String get paymentType;
  @JsonKey(ignore: true)
  _$$PaymentSuccessImplCopyWith<_$PaymentSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PaymentFailedImplCopyWith<$Res> {
  factory _$$PaymentFailedImplCopyWith(
          _$PaymentFailedImpl value, $Res Function(_$PaymentFailedImpl) then) =
      __$$PaymentFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String orderId, String paymentType});
}

/// @nodoc
class __$$PaymentFailedImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$PaymentFailedImpl>
    implements _$$PaymentFailedImplCopyWith<$Res> {
  __$$PaymentFailedImplCopyWithImpl(
      _$PaymentFailedImpl _value, $Res Function(_$PaymentFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? paymentType = null,
  }) {
    return _then(_$PaymentFailedImpl(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      paymentType: null == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PaymentFailedImpl implements _PaymentFailed {
  const _$PaymentFailedImpl({required this.orderId, required this.paymentType});

  @override
  final String orderId;
  @override
  final String paymentType;

  @override
  String toString() {
    return 'OrderEvent.paymentFailed(orderId: $orderId, paymentType: $paymentType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentFailedImpl &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, paymentType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentFailedImplCopyWith<_$PaymentFailedImpl> get copyWith =>
      __$$PaymentFailedImplCopyWithImpl<_$PaymentFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(
            CartItem cartItem,
            AddressBook addressBook,
            String date,
            Coupon coupon,
            double deliveryCharge,
            CurrentUser currentUser)
        submitOrder,
    required TResult Function() fetchOrders,
    required TResult Function(double totalAmount, String phone, String orderId)
        processPayment,
    required TResult Function(
            String orderId, String? paymentId, String paymentType)
        paymentSuccess,
    required TResult Function(String orderId, String paymentType) paymentFailed,
    required TResult Function() handleExternalApp,
    required TResult Function(PaymentMethod paymentMethod) changePaymentMethod,
    required TResult Function(
            bool isDeliveryDateSelectedByUser, String selectedDate)
        checkDeliveryDate,
  }) {
    return paymentFailed(orderId, paymentType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon, double deliveryCharge, CurrentUser currentUser)?
        submitOrder,
    TResult? Function()? fetchOrders,
    TResult? Function(double totalAmount, String phone, String orderId)?
        processPayment,
    TResult? Function(String orderId, String? paymentId, String paymentType)?
        paymentSuccess,
    TResult? Function(String orderId, String paymentType)? paymentFailed,
    TResult? Function()? handleExternalApp,
    TResult? Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult? Function(bool isDeliveryDateSelectedByUser, String selectedDate)?
        checkDeliveryDate,
  }) {
    return paymentFailed?.call(orderId, paymentType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon, double deliveryCharge, CurrentUser currentUser)?
        submitOrder,
    TResult Function()? fetchOrders,
    TResult Function(double totalAmount, String phone, String orderId)?
        processPayment,
    TResult Function(String orderId, String? paymentId, String paymentType)?
        paymentSuccess,
    TResult Function(String orderId, String paymentType)? paymentFailed,
    TResult Function()? handleExternalApp,
    TResult Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult Function(bool isDeliveryDateSelectedByUser, String selectedDate)?
        checkDeliveryDate,
    required TResult orElse(),
  }) {
    if (paymentFailed != null) {
      return paymentFailed(orderId, paymentType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SubmitOrder value) submitOrder,
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_ProcessPayment value) processPayment,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailed value) paymentFailed,
    required TResult Function(_HandleExternalApp value) handleExternalApp,
    required TResult Function(_ChangePaymentMethod value) changePaymentMethod,
    required TResult Function(_CheckDeliveryDate value) checkDeliveryDate,
  }) {
    return paymentFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SubmitOrder value)? submitOrder,
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_ProcessPayment value)? processPayment,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentFailed value)? paymentFailed,
    TResult? Function(_HandleExternalApp value)? handleExternalApp,
    TResult? Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult? Function(_CheckDeliveryDate value)? checkDeliveryDate,
  }) {
    return paymentFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SubmitOrder value)? submitOrder,
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_ProcessPayment value)? processPayment,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailed value)? paymentFailed,
    TResult Function(_HandleExternalApp value)? handleExternalApp,
    TResult Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult Function(_CheckDeliveryDate value)? checkDeliveryDate,
    required TResult orElse(),
  }) {
    if (paymentFailed != null) {
      return paymentFailed(this);
    }
    return orElse();
  }
}

abstract class _PaymentFailed implements OrderEvent {
  const factory _PaymentFailed(
      {required final String orderId,
      required final String paymentType}) = _$PaymentFailedImpl;

  String get orderId;
  String get paymentType;
  @JsonKey(ignore: true)
  _$$PaymentFailedImplCopyWith<_$PaymentFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HandleExternalAppImplCopyWith<$Res> {
  factory _$$HandleExternalAppImplCopyWith(_$HandleExternalAppImpl value,
          $Res Function(_$HandleExternalAppImpl) then) =
      __$$HandleExternalAppImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HandleExternalAppImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$HandleExternalAppImpl>
    implements _$$HandleExternalAppImplCopyWith<$Res> {
  __$$HandleExternalAppImplCopyWithImpl(_$HandleExternalAppImpl _value,
      $Res Function(_$HandleExternalAppImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HandleExternalAppImpl implements _HandleExternalApp {
  const _$HandleExternalAppImpl();

  @override
  String toString() {
    return 'OrderEvent.handleExternalApp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HandleExternalAppImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(
            CartItem cartItem,
            AddressBook addressBook,
            String date,
            Coupon coupon,
            double deliveryCharge,
            CurrentUser currentUser)
        submitOrder,
    required TResult Function() fetchOrders,
    required TResult Function(double totalAmount, String phone, String orderId)
        processPayment,
    required TResult Function(
            String orderId, String? paymentId, String paymentType)
        paymentSuccess,
    required TResult Function(String orderId, String paymentType) paymentFailed,
    required TResult Function() handleExternalApp,
    required TResult Function(PaymentMethod paymentMethod) changePaymentMethod,
    required TResult Function(
            bool isDeliveryDateSelectedByUser, String selectedDate)
        checkDeliveryDate,
  }) {
    return handleExternalApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon, double deliveryCharge, CurrentUser currentUser)?
        submitOrder,
    TResult? Function()? fetchOrders,
    TResult? Function(double totalAmount, String phone, String orderId)?
        processPayment,
    TResult? Function(String orderId, String? paymentId, String paymentType)?
        paymentSuccess,
    TResult? Function(String orderId, String paymentType)? paymentFailed,
    TResult? Function()? handleExternalApp,
    TResult? Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult? Function(bool isDeliveryDateSelectedByUser, String selectedDate)?
        checkDeliveryDate,
  }) {
    return handleExternalApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon, double deliveryCharge, CurrentUser currentUser)?
        submitOrder,
    TResult Function()? fetchOrders,
    TResult Function(double totalAmount, String phone, String orderId)?
        processPayment,
    TResult Function(String orderId, String? paymentId, String paymentType)?
        paymentSuccess,
    TResult Function(String orderId, String paymentType)? paymentFailed,
    TResult Function()? handleExternalApp,
    TResult Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult Function(bool isDeliveryDateSelectedByUser, String selectedDate)?
        checkDeliveryDate,
    required TResult orElse(),
  }) {
    if (handleExternalApp != null) {
      return handleExternalApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SubmitOrder value) submitOrder,
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_ProcessPayment value) processPayment,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailed value) paymentFailed,
    required TResult Function(_HandleExternalApp value) handleExternalApp,
    required TResult Function(_ChangePaymentMethod value) changePaymentMethod,
    required TResult Function(_CheckDeliveryDate value) checkDeliveryDate,
  }) {
    return handleExternalApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SubmitOrder value)? submitOrder,
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_ProcessPayment value)? processPayment,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentFailed value)? paymentFailed,
    TResult? Function(_HandleExternalApp value)? handleExternalApp,
    TResult? Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult? Function(_CheckDeliveryDate value)? checkDeliveryDate,
  }) {
    return handleExternalApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SubmitOrder value)? submitOrder,
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_ProcessPayment value)? processPayment,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailed value)? paymentFailed,
    TResult Function(_HandleExternalApp value)? handleExternalApp,
    TResult Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult Function(_CheckDeliveryDate value)? checkDeliveryDate,
    required TResult orElse(),
  }) {
    if (handleExternalApp != null) {
      return handleExternalApp(this);
    }
    return orElse();
  }
}

abstract class _HandleExternalApp implements OrderEvent {
  const factory _HandleExternalApp() = _$HandleExternalAppImpl;
}

/// @nodoc
abstract class _$$ChangePaymentMethodImplCopyWith<$Res> {
  factory _$$ChangePaymentMethodImplCopyWith(_$ChangePaymentMethodImpl value,
          $Res Function(_$ChangePaymentMethodImpl) then) =
      __$$ChangePaymentMethodImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PaymentMethod paymentMethod});

  $PaymentMethodCopyWith<$Res> get paymentMethod;
}

/// @nodoc
class __$$ChangePaymentMethodImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$ChangePaymentMethodImpl>
    implements _$$ChangePaymentMethodImplCopyWith<$Res> {
  __$$ChangePaymentMethodImplCopyWithImpl(_$ChangePaymentMethodImpl _value,
      $Res Function(_$ChangePaymentMethodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentMethod = null,
  }) {
    return _then(_$ChangePaymentMethodImpl(
      null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodCopyWith<$Res> get paymentMethod {
    return $PaymentMethodCopyWith<$Res>(_value.paymentMethod, (value) {
      return _then(_value.copyWith(paymentMethod: value));
    });
  }
}

/// @nodoc

class _$ChangePaymentMethodImpl implements _ChangePaymentMethod {
  const _$ChangePaymentMethodImpl(this.paymentMethod);

  @override
  final PaymentMethod paymentMethod;

  @override
  String toString() {
    return 'OrderEvent.changePaymentMethod(paymentMethod: $paymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePaymentMethodImpl &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePaymentMethodImplCopyWith<_$ChangePaymentMethodImpl> get copyWith =>
      __$$ChangePaymentMethodImplCopyWithImpl<_$ChangePaymentMethodImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(
            CartItem cartItem,
            AddressBook addressBook,
            String date,
            Coupon coupon,
            double deliveryCharge,
            CurrentUser currentUser)
        submitOrder,
    required TResult Function() fetchOrders,
    required TResult Function(double totalAmount, String phone, String orderId)
        processPayment,
    required TResult Function(
            String orderId, String? paymentId, String paymentType)
        paymentSuccess,
    required TResult Function(String orderId, String paymentType) paymentFailed,
    required TResult Function() handleExternalApp,
    required TResult Function(PaymentMethod paymentMethod) changePaymentMethod,
    required TResult Function(
            bool isDeliveryDateSelectedByUser, String selectedDate)
        checkDeliveryDate,
  }) {
    return changePaymentMethod(paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon, double deliveryCharge, CurrentUser currentUser)?
        submitOrder,
    TResult? Function()? fetchOrders,
    TResult? Function(double totalAmount, String phone, String orderId)?
        processPayment,
    TResult? Function(String orderId, String? paymentId, String paymentType)?
        paymentSuccess,
    TResult? Function(String orderId, String paymentType)? paymentFailed,
    TResult? Function()? handleExternalApp,
    TResult? Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult? Function(bool isDeliveryDateSelectedByUser, String selectedDate)?
        checkDeliveryDate,
  }) {
    return changePaymentMethod?.call(paymentMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon, double deliveryCharge, CurrentUser currentUser)?
        submitOrder,
    TResult Function()? fetchOrders,
    TResult Function(double totalAmount, String phone, String orderId)?
        processPayment,
    TResult Function(String orderId, String? paymentId, String paymentType)?
        paymentSuccess,
    TResult Function(String orderId, String paymentType)? paymentFailed,
    TResult Function()? handleExternalApp,
    TResult Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult Function(bool isDeliveryDateSelectedByUser, String selectedDate)?
        checkDeliveryDate,
    required TResult orElse(),
  }) {
    if (changePaymentMethod != null) {
      return changePaymentMethod(paymentMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SubmitOrder value) submitOrder,
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_ProcessPayment value) processPayment,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailed value) paymentFailed,
    required TResult Function(_HandleExternalApp value) handleExternalApp,
    required TResult Function(_ChangePaymentMethod value) changePaymentMethod,
    required TResult Function(_CheckDeliveryDate value) checkDeliveryDate,
  }) {
    return changePaymentMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SubmitOrder value)? submitOrder,
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_ProcessPayment value)? processPayment,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentFailed value)? paymentFailed,
    TResult? Function(_HandleExternalApp value)? handleExternalApp,
    TResult? Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult? Function(_CheckDeliveryDate value)? checkDeliveryDate,
  }) {
    return changePaymentMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SubmitOrder value)? submitOrder,
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_ProcessPayment value)? processPayment,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailed value)? paymentFailed,
    TResult Function(_HandleExternalApp value)? handleExternalApp,
    TResult Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult Function(_CheckDeliveryDate value)? checkDeliveryDate,
    required TResult orElse(),
  }) {
    if (changePaymentMethod != null) {
      return changePaymentMethod(this);
    }
    return orElse();
  }
}

abstract class _ChangePaymentMethod implements OrderEvent {
  const factory _ChangePaymentMethod(final PaymentMethod paymentMethod) =
      _$ChangePaymentMethodImpl;

  PaymentMethod get paymentMethod;
  @JsonKey(ignore: true)
  _$$ChangePaymentMethodImplCopyWith<_$ChangePaymentMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckDeliveryDateImplCopyWith<$Res> {
  factory _$$CheckDeliveryDateImplCopyWith(_$CheckDeliveryDateImpl value,
          $Res Function(_$CheckDeliveryDateImpl) then) =
      __$$CheckDeliveryDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isDeliveryDateSelectedByUser, String selectedDate});
}

/// @nodoc
class __$$CheckDeliveryDateImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$CheckDeliveryDateImpl>
    implements _$$CheckDeliveryDateImplCopyWith<$Res> {
  __$$CheckDeliveryDateImplCopyWithImpl(_$CheckDeliveryDateImpl _value,
      $Res Function(_$CheckDeliveryDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDeliveryDateSelectedByUser = null,
    Object? selectedDate = null,
  }) {
    return _then(_$CheckDeliveryDateImpl(
      isDeliveryDateSelectedByUser: null == isDeliveryDateSelectedByUser
          ? _value.isDeliveryDateSelectedByUser
          : isDeliveryDateSelectedByUser // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedDate: null == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckDeliveryDateImpl implements _CheckDeliveryDate {
  const _$CheckDeliveryDateImpl(
      {this.isDeliveryDateSelectedByUser = false, this.selectedDate = ''});

  @override
  @JsonKey()
  final bool isDeliveryDateSelectedByUser;
  @override
  @JsonKey()
  final String selectedDate;

  @override
  String toString() {
    return 'OrderEvent.checkDeliveryDate(isDeliveryDateSelectedByUser: $isDeliveryDateSelectedByUser, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckDeliveryDateImpl &&
            (identical(other.isDeliveryDateSelectedByUser,
                    isDeliveryDateSelectedByUser) ||
                other.isDeliveryDateSelectedByUser ==
                    isDeliveryDateSelectedByUser) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isDeliveryDateSelectedByUser, selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckDeliveryDateImplCopyWith<_$CheckDeliveryDateImpl> get copyWith =>
      __$$CheckDeliveryDateImplCopyWithImpl<_$CheckDeliveryDateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(
            CartItem cartItem,
            AddressBook addressBook,
            String date,
            Coupon coupon,
            double deliveryCharge,
            CurrentUser currentUser)
        submitOrder,
    required TResult Function() fetchOrders,
    required TResult Function(double totalAmount, String phone, String orderId)
        processPayment,
    required TResult Function(
            String orderId, String? paymentId, String paymentType)
        paymentSuccess,
    required TResult Function(String orderId, String paymentType) paymentFailed,
    required TResult Function() handleExternalApp,
    required TResult Function(PaymentMethod paymentMethod) changePaymentMethod,
    required TResult Function(
            bool isDeliveryDateSelectedByUser, String selectedDate)
        checkDeliveryDate,
  }) {
    return checkDeliveryDate(isDeliveryDateSelectedByUser, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon, double deliveryCharge, CurrentUser currentUser)?
        submitOrder,
    TResult? Function()? fetchOrders,
    TResult? Function(double totalAmount, String phone, String orderId)?
        processPayment,
    TResult? Function(String orderId, String? paymentId, String paymentType)?
        paymentSuccess,
    TResult? Function(String orderId, String paymentType)? paymentFailed,
    TResult? Function()? handleExternalApp,
    TResult? Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult? Function(bool isDeliveryDateSelectedByUser, String selectedDate)?
        checkDeliveryDate,
  }) {
    return checkDeliveryDate?.call(isDeliveryDateSelectedByUser, selectedDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon, double deliveryCharge, CurrentUser currentUser)?
        submitOrder,
    TResult Function()? fetchOrders,
    TResult Function(double totalAmount, String phone, String orderId)?
        processPayment,
    TResult Function(String orderId, String? paymentId, String paymentType)?
        paymentSuccess,
    TResult Function(String orderId, String paymentType)? paymentFailed,
    TResult Function()? handleExternalApp,
    TResult Function(PaymentMethod paymentMethod)? changePaymentMethod,
    TResult Function(bool isDeliveryDateSelectedByUser, String selectedDate)?
        checkDeliveryDate,
    required TResult orElse(),
  }) {
    if (checkDeliveryDate != null) {
      return checkDeliveryDate(isDeliveryDateSelectedByUser, selectedDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SubmitOrder value) submitOrder,
    required TResult Function(_FetchOrders value) fetchOrders,
    required TResult Function(_ProcessPayment value) processPayment,
    required TResult Function(_PaymentSuccess value) paymentSuccess,
    required TResult Function(_PaymentFailed value) paymentFailed,
    required TResult Function(_HandleExternalApp value) handleExternalApp,
    required TResult Function(_ChangePaymentMethod value) changePaymentMethod,
    required TResult Function(_CheckDeliveryDate value) checkDeliveryDate,
  }) {
    return checkDeliveryDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SubmitOrder value)? submitOrder,
    TResult? Function(_FetchOrders value)? fetchOrders,
    TResult? Function(_ProcessPayment value)? processPayment,
    TResult? Function(_PaymentSuccess value)? paymentSuccess,
    TResult? Function(_PaymentFailed value)? paymentFailed,
    TResult? Function(_HandleExternalApp value)? handleExternalApp,
    TResult? Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult? Function(_CheckDeliveryDate value)? checkDeliveryDate,
  }) {
    return checkDeliveryDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SubmitOrder value)? submitOrder,
    TResult Function(_FetchOrders value)? fetchOrders,
    TResult Function(_ProcessPayment value)? processPayment,
    TResult Function(_PaymentSuccess value)? paymentSuccess,
    TResult Function(_PaymentFailed value)? paymentFailed,
    TResult Function(_HandleExternalApp value)? handleExternalApp,
    TResult Function(_ChangePaymentMethod value)? changePaymentMethod,
    TResult Function(_CheckDeliveryDate value)? checkDeliveryDate,
    required TResult orElse(),
  }) {
    if (checkDeliveryDate != null) {
      return checkDeliveryDate(this);
    }
    return orElse();
  }
}

abstract class _CheckDeliveryDate implements OrderEvent {
  const factory _CheckDeliveryDate(
      {final bool isDeliveryDateSelectedByUser,
      final String selectedDate}) = _$CheckDeliveryDateImpl;

  bool get isDeliveryDateSelectedByUser;
  String get selectedDate;
  @JsonKey(ignore: true)
  _$$CheckDeliveryDateImplCopyWith<_$CheckDeliveryDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderState {
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get isFetchingOrders => throw _privateConstructorUsedError;
  bool get isFetchingDeliveryDate => throw _privateConstructorUsedError;
  List<Order> get orders => throw _privateConstructorUsedError;
  PaymentMethod get selectedPaymentMethod => throw _privateConstructorUsedError;
  DeliveryTime get deliveryTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
  @useResult
  $Res call(
      {Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching,
      bool isFetchingOrders,
      bool isFetchingDeliveryDate,
      List<Order> orders,
      PaymentMethod selectedPaymentMethod,
      DeliveryTime deliveryTime});

  $PaymentMethodCopyWith<$Res> get selectedPaymentMethod;
  $DeliveryTimeCopyWith<$Res> get deliveryTime;
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
    Object? isFetchingOrders = null,
    Object? isFetchingDeliveryDate = null,
    Object? orders = null,
    Object? selectedPaymentMethod = null,
    Object? deliveryTime = null,
  }) {
    return _then(_value.copyWith(
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingOrders: null == isFetchingOrders
          ? _value.isFetchingOrders
          : isFetchingOrders // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingDeliveryDate: null == isFetchingDeliveryDate
          ? _value.isFetchingDeliveryDate
          : isFetchingDeliveryDate // ignore: cast_nullable_to_non_nullable
              as bool,
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      selectedPaymentMethod: null == selectedPaymentMethod
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      deliveryTime: null == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as DeliveryTime,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodCopyWith<$Res> get selectedPaymentMethod {
    return $PaymentMethodCopyWith<$Res>(_value.selectedPaymentMethod, (value) {
      return _then(_value.copyWith(selectedPaymentMethod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DeliveryTimeCopyWith<$Res> get deliveryTime {
    return $DeliveryTimeCopyWith<$Res>(_value.deliveryTime, (value) {
      return _then(_value.copyWith(deliveryTime: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderStateImplCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$OrderStateImplCopyWith(
          _$OrderStateImpl value, $Res Function(_$OrderStateImpl) then) =
      __$$OrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching,
      bool isFetchingOrders,
      bool isFetchingDeliveryDate,
      List<Order> orders,
      PaymentMethod selectedPaymentMethod,
      DeliveryTime deliveryTime});

  @override
  $PaymentMethodCopyWith<$Res> get selectedPaymentMethod;
  @override
  $DeliveryTimeCopyWith<$Res> get deliveryTime;
}

/// @nodoc
class __$$OrderStateImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderStateImpl>
    implements _$$OrderStateImplCopyWith<$Res> {
  __$$OrderStateImplCopyWithImpl(
      _$OrderStateImpl _value, $Res Function(_$OrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
    Object? isFetchingOrders = null,
    Object? isFetchingDeliveryDate = null,
    Object? orders = null,
    Object? selectedPaymentMethod = null,
    Object? deliveryTime = null,
  }) {
    return _then(_$OrderStateImpl(
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingOrders: null == isFetchingOrders
          ? _value.isFetchingOrders
          : isFetchingOrders // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingDeliveryDate: null == isFetchingDeliveryDate
          ? _value.isFetchingDeliveryDate
          : isFetchingDeliveryDate // ignore: cast_nullable_to_non_nullable
              as bool,
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
      selectedPaymentMethod: null == selectedPaymentMethod
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      deliveryTime: null == deliveryTime
          ? _value.deliveryTime
          : deliveryTime // ignore: cast_nullable_to_non_nullable
              as DeliveryTime,
    ));
  }
}

/// @nodoc

class _$OrderStateImpl extends _OrderState {
  const _$OrderStateImpl(
      {required this.apiFailureOrSuccessOption,
      required this.isFetching,
      required this.isFetchingOrders,
      required this.isFetchingDeliveryDate,
      required final List<Order> orders,
      required this.selectedPaymentMethod,
      required this.deliveryTime})
      : _orders = orders,
        super._();

  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;
  @override
  final bool isFetching;
  @override
  final bool isFetchingOrders;
  @override
  final bool isFetchingDeliveryDate;
  final List<Order> _orders;
  @override
  List<Order> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  final PaymentMethod selectedPaymentMethod;
  @override
  final DeliveryTime deliveryTime;

  @override
  String toString() {
    return 'OrderState(apiFailureOrSuccessOption: $apiFailureOrSuccessOption, isFetching: $isFetching, isFetchingOrders: $isFetchingOrders, isFetchingDeliveryDate: $isFetchingDeliveryDate, orders: $orders, selectedPaymentMethod: $selectedPaymentMethod, deliveryTime: $deliveryTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStateImpl &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.isFetchingOrders, isFetchingOrders) ||
                other.isFetchingOrders == isFetchingOrders) &&
            (identical(other.isFetchingDeliveryDate, isFetchingDeliveryDate) ||
                other.isFetchingDeliveryDate == isFetchingDeliveryDate) &&
            const DeepCollectionEquality().equals(other._orders, _orders) &&
            (identical(other.selectedPaymentMethod, selectedPaymentMethod) ||
                other.selectedPaymentMethod == selectedPaymentMethod) &&
            (identical(other.deliveryTime, deliveryTime) ||
                other.deliveryTime == deliveryTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      apiFailureOrSuccessOption,
      isFetching,
      isFetchingOrders,
      isFetchingDeliveryDate,
      const DeepCollectionEquality().hash(_orders),
      selectedPaymentMethod,
      deliveryTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStateImplCopyWith<_$OrderStateImpl> get copyWith =>
      __$$OrderStateImplCopyWithImpl<_$OrderStateImpl>(this, _$identity);
}

abstract class _OrderState extends OrderState {
  const factory _OrderState(
      {required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption,
      required final bool isFetching,
      required final bool isFetchingOrders,
      required final bool isFetchingDeliveryDate,
      required final List<Order> orders,
      required final PaymentMethod selectedPaymentMethod,
      required final DeliveryTime deliveryTime}) = _$OrderStateImpl;
  const _OrderState._() : super._();

  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  bool get isFetching;
  @override
  bool get isFetchingOrders;
  @override
  bool get isFetchingDeliveryDate;
  @override
  List<Order> get orders;
  @override
  PaymentMethod get selectedPaymentMethod;
  @override
  DeliveryTime get deliveryTime;
  @override
  @JsonKey(ignore: true)
  _$$OrderStateImplCopyWith<_$OrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
