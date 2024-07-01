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
    required TResult Function(CartItem cartItem, AddressBook addressBook,
            String date, Coupon coupon)
        submitOrder,
    required TResult Function() fetchOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon)?
        submitOrder,
    TResult? Function()? fetchOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon)?
        submitOrder,
    TResult Function()? fetchOrders,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SubmitOrder value) submitOrder,
    required TResult Function(_FetchOrders value) fetchOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SubmitOrder value)? submitOrder,
    TResult? Function(_FetchOrders value)? fetchOrders,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SubmitOrder value)? submitOrder,
    TResult Function(_FetchOrders value)? fetchOrders,
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
    required TResult Function(CartItem cartItem, AddressBook addressBook,
            String date, Coupon coupon)
        submitOrder,
    required TResult Function() fetchOrders,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon)?
        submitOrder,
    TResult? Function()? fetchOrders,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon)?
        submitOrder,
    TResult Function()? fetchOrders,
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
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SubmitOrder value)? submitOrder,
    TResult? Function(_FetchOrders value)? fetchOrders,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SubmitOrder value)? submitOrder,
    TResult Function(_FetchOrders value)? fetchOrders,
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
      {CartItem cartItem, AddressBook addressBook, String date, Coupon coupon});

  $CartItemCopyWith<$Res> get cartItem;
  $AddressBookCopyWith<$Res> get addressBook;
  $CouponCopyWith<$Res> get coupon;
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
}

/// @nodoc

class _$SubmitOrderImpl implements _SubmitOrder {
  const _$SubmitOrderImpl(
      {required this.cartItem,
      required this.addressBook,
      required this.date,
      required this.coupon});

  @override
  final CartItem cartItem;
  @override
  final AddressBook addressBook;
  @override
  final String date;
  @override
  final Coupon coupon;

  @override
  String toString() {
    return 'OrderEvent.submitOrder(cartItem: $cartItem, addressBook: $addressBook, date: $date, coupon: $coupon)';
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
            (identical(other.coupon, coupon) || other.coupon == coupon));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, cartItem, addressBook, date, coupon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitOrderImplCopyWith<_$SubmitOrderImpl> get copyWith =>
      __$$SubmitOrderImplCopyWithImpl<_$SubmitOrderImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(CartItem cartItem, AddressBook addressBook,
            String date, Coupon coupon)
        submitOrder,
    required TResult Function() fetchOrders,
  }) {
    return submitOrder(cartItem, addressBook, date, coupon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon)?
        submitOrder,
    TResult? Function()? fetchOrders,
  }) {
    return submitOrder?.call(cartItem, addressBook, date, coupon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon)?
        submitOrder,
    TResult Function()? fetchOrders,
    required TResult orElse(),
  }) {
    if (submitOrder != null) {
      return submitOrder(cartItem, addressBook, date, coupon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_SubmitOrder value) submitOrder,
    required TResult Function(_FetchOrders value) fetchOrders,
  }) {
    return submitOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SubmitOrder value)? submitOrder,
    TResult? Function(_FetchOrders value)? fetchOrders,
  }) {
    return submitOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SubmitOrder value)? submitOrder,
    TResult Function(_FetchOrders value)? fetchOrders,
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
      required final Coupon coupon}) = _$SubmitOrderImpl;

  CartItem get cartItem;
  AddressBook get addressBook;
  String get date;
  Coupon get coupon;
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
    required TResult Function(CartItem cartItem, AddressBook addressBook,
            String date, Coupon coupon)
        submitOrder,
    required TResult Function() fetchOrders,
  }) {
    return fetchOrders();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon)?
        submitOrder,
    TResult? Function()? fetchOrders,
  }) {
    return fetchOrders?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(CartItem cartItem, AddressBook addressBook, String date,
            Coupon coupon)?
        submitOrder,
    TResult Function()? fetchOrders,
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
  }) {
    return fetchOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_SubmitOrder value)? submitOrder,
    TResult? Function(_FetchOrders value)? fetchOrders,
  }) {
    return fetchOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_SubmitOrder value)? submitOrder,
    TResult Function(_FetchOrders value)? fetchOrders,
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
mixin _$OrderState {
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get isFetchingOrders => throw _privateConstructorUsedError;
  List<Order> get orders => throw _privateConstructorUsedError;

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
      List<Order> orders});
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
    Object? orders = null,
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
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ) as $Val);
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
      List<Order> orders});
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
    Object? orders = null,
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
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Order>,
    ));
  }
}

/// @nodoc

class _$OrderStateImpl extends _OrderState {
  const _$OrderStateImpl(
      {required this.apiFailureOrSuccessOption,
      required this.isFetching,
      required this.isFetchingOrders,
      required final List<Order> orders})
      : _orders = orders,
        super._();

  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;
  @override
  final bool isFetching;
  @override
  final bool isFetchingOrders;
  final List<Order> _orders;
  @override
  List<Order> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'OrderState(apiFailureOrSuccessOption: $apiFailureOrSuccessOption, isFetching: $isFetching, isFetchingOrders: $isFetchingOrders, orders: $orders)';
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
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      apiFailureOrSuccessOption,
      isFetching,
      isFetchingOrders,
      const DeepCollectionEquality().hash(_orders));

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
      required final List<Order> orders}) = _$OrderStateImpl;
  const _OrderState._() : super._();

  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  bool get isFetching;
  @override
  bool get isFetchingOrders;
  @override
  List<Order> get orders;
  @override
  @JsonKey(ignore: true)
  _$$OrderStateImplCopyWith<_$OrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
