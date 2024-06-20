// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(Product product, int quantity) addToCart,
    required TResult Function(CartProduct product) removeFromCart,
    required TResult Function(Product product) addToCartLocal,
    required TResult Function() getCartLocal,
    required TResult Function(int index) deletCartLocal,
    required TResult Function() clearAllCartLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product, int quantity)? addToCart,
    TResult? Function(CartProduct product)? removeFromCart,
    TResult? Function(Product product)? addToCartLocal,
    TResult? Function()? getCartLocal,
    TResult? Function(int index)? deletCartLocal,
    TResult? Function()? clearAllCartLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function(CartProduct product)? removeFromCart,
    TResult Function(Product product)? addToCartLocal,
    TResult Function()? getCartLocal,
    TResult Function(int index)? deletCartLocal,
    TResult Function()? clearAllCartLocal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_AddToCartLocal value) addToCartLocal,
    required TResult Function(_GetCartLocal value) getCartLocal,
    required TResult Function(_DeleteCartLocal value) deletCartLocal,
    required TResult Function(_ClearAllCartLocal value) clearAllCartLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_AddToCartLocal value)? addToCartLocal,
    TResult? Function(_GetCartLocal value)? getCartLocal,
    TResult? Function(_DeleteCartLocal value)? deletCartLocal,
    TResult? Function(_ClearAllCartLocal value)? clearAllCartLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_AddToCartLocal value)? addToCartLocal,
    TResult Function(_GetCartLocal value)? getCartLocal,
    TResult Function(_DeleteCartLocal value)? deletCartLocal,
    TResult Function(_ClearAllCartLocal value)? clearAllCartLocal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

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
    extends _$CartEventCopyWithImpl<$Res, _$InitializedImpl>
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
    return 'CartEvent.initialized()';
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
    required TResult Function() fetch,
    required TResult Function(Product product, int quantity) addToCart,
    required TResult Function(CartProduct product) removeFromCart,
    required TResult Function(Product product) addToCartLocal,
    required TResult Function() getCartLocal,
    required TResult Function(int index) deletCartLocal,
    required TResult Function() clearAllCartLocal,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product, int quantity)? addToCart,
    TResult? Function(CartProduct product)? removeFromCart,
    TResult? Function(Product product)? addToCartLocal,
    TResult? Function()? getCartLocal,
    TResult? Function(int index)? deletCartLocal,
    TResult? Function()? clearAllCartLocal,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function(CartProduct product)? removeFromCart,
    TResult Function(Product product)? addToCartLocal,
    TResult Function()? getCartLocal,
    TResult Function(int index)? deletCartLocal,
    TResult Function()? clearAllCartLocal,
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
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_AddToCartLocal value) addToCartLocal,
    required TResult Function(_GetCartLocal value) getCartLocal,
    required TResult Function(_DeleteCartLocal value) deletCartLocal,
    required TResult Function(_ClearAllCartLocal value) clearAllCartLocal,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_AddToCartLocal value)? addToCartLocal,
    TResult? Function(_GetCartLocal value)? getCartLocal,
    TResult? Function(_DeleteCartLocal value)? deletCartLocal,
    TResult? Function(_ClearAllCartLocal value)? clearAllCartLocal,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_AddToCartLocal value)? addToCartLocal,
    TResult Function(_GetCartLocal value)? getCartLocal,
    TResult Function(_DeleteCartLocal value)? deletCartLocal,
    TResult Function(_ClearAllCartLocal value)? clearAllCartLocal,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements CartEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl();

  @override
  String toString() {
    return 'CartEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(Product product, int quantity) addToCart,
    required TResult Function(CartProduct product) removeFromCart,
    required TResult Function(Product product) addToCartLocal,
    required TResult Function() getCartLocal,
    required TResult Function(int index) deletCartLocal,
    required TResult Function() clearAllCartLocal,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product, int quantity)? addToCart,
    TResult? Function(CartProduct product)? removeFromCart,
    TResult? Function(Product product)? addToCartLocal,
    TResult? Function()? getCartLocal,
    TResult? Function(int index)? deletCartLocal,
    TResult? Function()? clearAllCartLocal,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function(CartProduct product)? removeFromCart,
    TResult Function(Product product)? addToCartLocal,
    TResult Function()? getCartLocal,
    TResult Function(int index)? deletCartLocal,
    TResult Function()? clearAllCartLocal,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_AddToCartLocal value) addToCartLocal,
    required TResult Function(_GetCartLocal value) getCartLocal,
    required TResult Function(_DeleteCartLocal value) deletCartLocal,
    required TResult Function(_ClearAllCartLocal value) clearAllCartLocal,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_AddToCartLocal value)? addToCartLocal,
    TResult? Function(_GetCartLocal value)? getCartLocal,
    TResult? Function(_DeleteCartLocal value)? deletCartLocal,
    TResult? Function(_ClearAllCartLocal value)? clearAllCartLocal,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_AddToCartLocal value)? addToCartLocal,
    TResult Function(_GetCartLocal value)? getCartLocal,
    TResult Function(_DeleteCartLocal value)? deletCartLocal,
    TResult Function(_ClearAllCartLocal value)? clearAllCartLocal,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements CartEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$AddToCartImplCopyWith<$Res> {
  factory _$$AddToCartImplCopyWith(
          _$AddToCartImpl value, $Res Function(_$AddToCartImpl) then) =
      __$$AddToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product, int quantity});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$AddToCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddToCartImpl>
    implements _$$AddToCartImplCopyWith<$Res> {
  __$$AddToCartImplCopyWithImpl(
      _$AddToCartImpl _value, $Res Function(_$AddToCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? quantity = null,
  }) {
    return _then(_$AddToCartImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$AddToCartImpl implements _AddToCart {
  const _$AddToCartImpl({required this.product, required this.quantity});

  @override
  final Product product;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CartEvent.addToCart(product: $product, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      __$$AddToCartImplCopyWithImpl<_$AddToCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(Product product, int quantity) addToCart,
    required TResult Function(CartProduct product) removeFromCart,
    required TResult Function(Product product) addToCartLocal,
    required TResult Function() getCartLocal,
    required TResult Function(int index) deletCartLocal,
    required TResult Function() clearAllCartLocal,
  }) {
    return addToCart(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product, int quantity)? addToCart,
    TResult? Function(CartProduct product)? removeFromCart,
    TResult? Function(Product product)? addToCartLocal,
    TResult? Function()? getCartLocal,
    TResult? Function(int index)? deletCartLocal,
    TResult? Function()? clearAllCartLocal,
  }) {
    return addToCart?.call(product, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function(CartProduct product)? removeFromCart,
    TResult Function(Product product)? addToCartLocal,
    TResult Function()? getCartLocal,
    TResult Function(int index)? deletCartLocal,
    TResult Function()? clearAllCartLocal,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(product, quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_AddToCartLocal value) addToCartLocal,
    required TResult Function(_GetCartLocal value) getCartLocal,
    required TResult Function(_DeleteCartLocal value) deletCartLocal,
    required TResult Function(_ClearAllCartLocal value) clearAllCartLocal,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_AddToCartLocal value)? addToCartLocal,
    TResult? Function(_GetCartLocal value)? getCartLocal,
    TResult? Function(_DeleteCartLocal value)? deletCartLocal,
    TResult? Function(_ClearAllCartLocal value)? clearAllCartLocal,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_AddToCartLocal value)? addToCartLocal,
    TResult Function(_GetCartLocal value)? getCartLocal,
    TResult Function(_DeleteCartLocal value)? deletCartLocal,
    TResult Function(_ClearAllCartLocal value)? clearAllCartLocal,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements CartEvent {
  const factory _AddToCart(
      {required final Product product,
      required final int quantity}) = _$AddToCartImpl;

  Product get product;
  int get quantity;
  @JsonKey(ignore: true)
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromCartImplCopyWith<$Res> {
  factory _$$RemoveFromCartImplCopyWith(_$RemoveFromCartImpl value,
          $Res Function(_$RemoveFromCartImpl) then) =
      __$$RemoveFromCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CartProduct product});

  $CartProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$RemoveFromCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$RemoveFromCartImpl>
    implements _$$RemoveFromCartImplCopyWith<$Res> {
  __$$RemoveFromCartImplCopyWithImpl(
      _$RemoveFromCartImpl _value, $Res Function(_$RemoveFromCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$RemoveFromCartImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as CartProduct,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CartProductCopyWith<$Res> get product {
    return $CartProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$RemoveFromCartImpl implements _RemoveFromCart {
  const _$RemoveFromCartImpl({required this.product});

  @override
  final CartProduct product;

  @override
  String toString() {
    return 'CartEvent.removeFromCart(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromCartImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromCartImplCopyWith<_$RemoveFromCartImpl> get copyWith =>
      __$$RemoveFromCartImplCopyWithImpl<_$RemoveFromCartImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(Product product, int quantity) addToCart,
    required TResult Function(CartProduct product) removeFromCart,
    required TResult Function(Product product) addToCartLocal,
    required TResult Function() getCartLocal,
    required TResult Function(int index) deletCartLocal,
    required TResult Function() clearAllCartLocal,
  }) {
    return removeFromCart(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product, int quantity)? addToCart,
    TResult? Function(CartProduct product)? removeFromCart,
    TResult? Function(Product product)? addToCartLocal,
    TResult? Function()? getCartLocal,
    TResult? Function(int index)? deletCartLocal,
    TResult? Function()? clearAllCartLocal,
  }) {
    return removeFromCart?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function(CartProduct product)? removeFromCart,
    TResult Function(Product product)? addToCartLocal,
    TResult Function()? getCartLocal,
    TResult Function(int index)? deletCartLocal,
    TResult Function()? clearAllCartLocal,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_AddToCartLocal value) addToCartLocal,
    required TResult Function(_GetCartLocal value) getCartLocal,
    required TResult Function(_DeleteCartLocal value) deletCartLocal,
    required TResult Function(_ClearAllCartLocal value) clearAllCartLocal,
  }) {
    return removeFromCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_AddToCartLocal value)? addToCartLocal,
    TResult? Function(_GetCartLocal value)? getCartLocal,
    TResult? Function(_DeleteCartLocal value)? deletCartLocal,
    TResult? Function(_ClearAllCartLocal value)? clearAllCartLocal,
  }) {
    return removeFromCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_AddToCartLocal value)? addToCartLocal,
    TResult Function(_GetCartLocal value)? getCartLocal,
    TResult Function(_DeleteCartLocal value)? deletCartLocal,
    TResult Function(_ClearAllCartLocal value)? clearAllCartLocal,
    required TResult orElse(),
  }) {
    if (removeFromCart != null) {
      return removeFromCart(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromCart implements CartEvent {
  const factory _RemoveFromCart({required final CartProduct product}) =
      _$RemoveFromCartImpl;

  CartProduct get product;
  @JsonKey(ignore: true)
  _$$RemoveFromCartImplCopyWith<_$RemoveFromCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToCartLocalImplCopyWith<$Res> {
  factory _$$AddToCartLocalImplCopyWith(_$AddToCartLocalImpl value,
          $Res Function(_$AddToCartLocalImpl) then) =
      __$$AddToCartLocalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$AddToCartLocalImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddToCartLocalImpl>
    implements _$$AddToCartLocalImplCopyWith<$Res> {
  __$$AddToCartLocalImplCopyWithImpl(
      _$AddToCartLocalImpl _value, $Res Function(_$AddToCartLocalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$AddToCartLocalImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res> get product {
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$AddToCartLocalImpl implements _AddToCartLocal {
  const _$AddToCartLocalImpl({required this.product});

  @override
  final Product product;

  @override
  String toString() {
    return 'CartEvent.addToCartLocal(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartLocalImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToCartLocalImplCopyWith<_$AddToCartLocalImpl> get copyWith =>
      __$$AddToCartLocalImplCopyWithImpl<_$AddToCartLocalImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(Product product, int quantity) addToCart,
    required TResult Function(CartProduct product) removeFromCart,
    required TResult Function(Product product) addToCartLocal,
    required TResult Function() getCartLocal,
    required TResult Function(int index) deletCartLocal,
    required TResult Function() clearAllCartLocal,
  }) {
    return addToCartLocal(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product, int quantity)? addToCart,
    TResult? Function(CartProduct product)? removeFromCart,
    TResult? Function(Product product)? addToCartLocal,
    TResult? Function()? getCartLocal,
    TResult? Function(int index)? deletCartLocal,
    TResult? Function()? clearAllCartLocal,
  }) {
    return addToCartLocal?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function(CartProduct product)? removeFromCart,
    TResult Function(Product product)? addToCartLocal,
    TResult Function()? getCartLocal,
    TResult Function(int index)? deletCartLocal,
    TResult Function()? clearAllCartLocal,
    required TResult orElse(),
  }) {
    if (addToCartLocal != null) {
      return addToCartLocal(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_AddToCartLocal value) addToCartLocal,
    required TResult Function(_GetCartLocal value) getCartLocal,
    required TResult Function(_DeleteCartLocal value) deletCartLocal,
    required TResult Function(_ClearAllCartLocal value) clearAllCartLocal,
  }) {
    return addToCartLocal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_AddToCartLocal value)? addToCartLocal,
    TResult? Function(_GetCartLocal value)? getCartLocal,
    TResult? Function(_DeleteCartLocal value)? deletCartLocal,
    TResult? Function(_ClearAllCartLocal value)? clearAllCartLocal,
  }) {
    return addToCartLocal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_AddToCartLocal value)? addToCartLocal,
    TResult Function(_GetCartLocal value)? getCartLocal,
    TResult Function(_DeleteCartLocal value)? deletCartLocal,
    TResult Function(_ClearAllCartLocal value)? clearAllCartLocal,
    required TResult orElse(),
  }) {
    if (addToCartLocal != null) {
      return addToCartLocal(this);
    }
    return orElse();
  }
}

abstract class _AddToCartLocal implements CartEvent {
  const factory _AddToCartLocal({required final Product product}) =
      _$AddToCartLocalImpl;

  Product get product;
  @JsonKey(ignore: true)
  _$$AddToCartLocalImplCopyWith<_$AddToCartLocalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCartLocalImplCopyWith<$Res> {
  factory _$$GetCartLocalImplCopyWith(
          _$GetCartLocalImpl value, $Res Function(_$GetCartLocalImpl) then) =
      __$$GetCartLocalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCartLocalImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$GetCartLocalImpl>
    implements _$$GetCartLocalImplCopyWith<$Res> {
  __$$GetCartLocalImplCopyWithImpl(
      _$GetCartLocalImpl _value, $Res Function(_$GetCartLocalImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCartLocalImpl implements _GetCartLocal {
  const _$GetCartLocalImpl();

  @override
  String toString() {
    return 'CartEvent.getCartLocal()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCartLocalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(Product product, int quantity) addToCart,
    required TResult Function(CartProduct product) removeFromCart,
    required TResult Function(Product product) addToCartLocal,
    required TResult Function() getCartLocal,
    required TResult Function(int index) deletCartLocal,
    required TResult Function() clearAllCartLocal,
  }) {
    return getCartLocal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product, int quantity)? addToCart,
    TResult? Function(CartProduct product)? removeFromCart,
    TResult? Function(Product product)? addToCartLocal,
    TResult? Function()? getCartLocal,
    TResult? Function(int index)? deletCartLocal,
    TResult? Function()? clearAllCartLocal,
  }) {
    return getCartLocal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function(CartProduct product)? removeFromCart,
    TResult Function(Product product)? addToCartLocal,
    TResult Function()? getCartLocal,
    TResult Function(int index)? deletCartLocal,
    TResult Function()? clearAllCartLocal,
    required TResult orElse(),
  }) {
    if (getCartLocal != null) {
      return getCartLocal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_AddToCartLocal value) addToCartLocal,
    required TResult Function(_GetCartLocal value) getCartLocal,
    required TResult Function(_DeleteCartLocal value) deletCartLocal,
    required TResult Function(_ClearAllCartLocal value) clearAllCartLocal,
  }) {
    return getCartLocal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_AddToCartLocal value)? addToCartLocal,
    TResult? Function(_GetCartLocal value)? getCartLocal,
    TResult? Function(_DeleteCartLocal value)? deletCartLocal,
    TResult? Function(_ClearAllCartLocal value)? clearAllCartLocal,
  }) {
    return getCartLocal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_AddToCartLocal value)? addToCartLocal,
    TResult Function(_GetCartLocal value)? getCartLocal,
    TResult Function(_DeleteCartLocal value)? deletCartLocal,
    TResult Function(_ClearAllCartLocal value)? clearAllCartLocal,
    required TResult orElse(),
  }) {
    if (getCartLocal != null) {
      return getCartLocal(this);
    }
    return orElse();
  }
}

abstract class _GetCartLocal implements CartEvent {
  const factory _GetCartLocal() = _$GetCartLocalImpl;
}

/// @nodoc
abstract class _$$DeleteCartLocalImplCopyWith<$Res> {
  factory _$$DeleteCartLocalImplCopyWith(_$DeleteCartLocalImpl value,
          $Res Function(_$DeleteCartLocalImpl) then) =
      __$$DeleteCartLocalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DeleteCartLocalImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$DeleteCartLocalImpl>
    implements _$$DeleteCartLocalImplCopyWith<$Res> {
  __$$DeleteCartLocalImplCopyWithImpl(
      _$DeleteCartLocalImpl _value, $Res Function(_$DeleteCartLocalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DeleteCartLocalImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteCartLocalImpl implements _DeleteCartLocal {
  const _$DeleteCartLocalImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'CartEvent.deletCartLocal(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCartLocalImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCartLocalImplCopyWith<_$DeleteCartLocalImpl> get copyWith =>
      __$$DeleteCartLocalImplCopyWithImpl<_$DeleteCartLocalImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(Product product, int quantity) addToCart,
    required TResult Function(CartProduct product) removeFromCart,
    required TResult Function(Product product) addToCartLocal,
    required TResult Function() getCartLocal,
    required TResult Function(int index) deletCartLocal,
    required TResult Function() clearAllCartLocal,
  }) {
    return deletCartLocal(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product, int quantity)? addToCart,
    TResult? Function(CartProduct product)? removeFromCart,
    TResult? Function(Product product)? addToCartLocal,
    TResult? Function()? getCartLocal,
    TResult? Function(int index)? deletCartLocal,
    TResult? Function()? clearAllCartLocal,
  }) {
    return deletCartLocal?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function(CartProduct product)? removeFromCart,
    TResult Function(Product product)? addToCartLocal,
    TResult Function()? getCartLocal,
    TResult Function(int index)? deletCartLocal,
    TResult Function()? clearAllCartLocal,
    required TResult orElse(),
  }) {
    if (deletCartLocal != null) {
      return deletCartLocal(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_AddToCartLocal value) addToCartLocal,
    required TResult Function(_GetCartLocal value) getCartLocal,
    required TResult Function(_DeleteCartLocal value) deletCartLocal,
    required TResult Function(_ClearAllCartLocal value) clearAllCartLocal,
  }) {
    return deletCartLocal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_AddToCartLocal value)? addToCartLocal,
    TResult? Function(_GetCartLocal value)? getCartLocal,
    TResult? Function(_DeleteCartLocal value)? deletCartLocal,
    TResult? Function(_ClearAllCartLocal value)? clearAllCartLocal,
  }) {
    return deletCartLocal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_AddToCartLocal value)? addToCartLocal,
    TResult Function(_GetCartLocal value)? getCartLocal,
    TResult Function(_DeleteCartLocal value)? deletCartLocal,
    TResult Function(_ClearAllCartLocal value)? clearAllCartLocal,
    required TResult orElse(),
  }) {
    if (deletCartLocal != null) {
      return deletCartLocal(this);
    }
    return orElse();
  }
}

abstract class _DeleteCartLocal implements CartEvent {
  const factory _DeleteCartLocal({required final int index}) =
      _$DeleteCartLocalImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$DeleteCartLocalImplCopyWith<_$DeleteCartLocalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearAllCartLocalImplCopyWith<$Res> {
  factory _$$ClearAllCartLocalImplCopyWith(_$ClearAllCartLocalImpl value,
          $Res Function(_$ClearAllCartLocalImpl) then) =
      __$$ClearAllCartLocalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearAllCartLocalImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$ClearAllCartLocalImpl>
    implements _$$ClearAllCartLocalImplCopyWith<$Res> {
  __$$ClearAllCartLocalImplCopyWithImpl(_$ClearAllCartLocalImpl _value,
      $Res Function(_$ClearAllCartLocalImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearAllCartLocalImpl implements _ClearAllCartLocal {
  const _$ClearAllCartLocalImpl();

  @override
  String toString() {
    return 'CartEvent.clearAllCartLocal()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearAllCartLocalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(Product product, int quantity) addToCart,
    required TResult Function(CartProduct product) removeFromCart,
    required TResult Function(Product product) addToCartLocal,
    required TResult Function() getCartLocal,
    required TResult Function(int index) deletCartLocal,
    required TResult Function() clearAllCartLocal,
  }) {
    return clearAllCartLocal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product, int quantity)? addToCart,
    TResult? Function(CartProduct product)? removeFromCart,
    TResult? Function(Product product)? addToCartLocal,
    TResult? Function()? getCartLocal,
    TResult? Function(int index)? deletCartLocal,
    TResult? Function()? clearAllCartLocal,
  }) {
    return clearAllCartLocal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product, int quantity)? addToCart,
    TResult Function(CartProduct product)? removeFromCart,
    TResult Function(Product product)? addToCartLocal,
    TResult Function()? getCartLocal,
    TResult Function(int index)? deletCartLocal,
    TResult Function()? clearAllCartLocal,
    required TResult orElse(),
  }) {
    if (clearAllCartLocal != null) {
      return clearAllCartLocal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_RemoveFromCart value) removeFromCart,
    required TResult Function(_AddToCartLocal value) addToCartLocal,
    required TResult Function(_GetCartLocal value) getCartLocal,
    required TResult Function(_DeleteCartLocal value) deletCartLocal,
    required TResult Function(_ClearAllCartLocal value) clearAllCartLocal,
  }) {
    return clearAllCartLocal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_RemoveFromCart value)? removeFromCart,
    TResult? Function(_AddToCartLocal value)? addToCartLocal,
    TResult? Function(_GetCartLocal value)? getCartLocal,
    TResult? Function(_DeleteCartLocal value)? deletCartLocal,
    TResult? Function(_ClearAllCartLocal value)? clearAllCartLocal,
  }) {
    return clearAllCartLocal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_RemoveFromCart value)? removeFromCart,
    TResult Function(_AddToCartLocal value)? addToCartLocal,
    TResult Function(_GetCartLocal value)? getCartLocal,
    TResult Function(_DeleteCartLocal value)? deletCartLocal,
    TResult Function(_ClearAllCartLocal value)? clearAllCartLocal,
    required TResult orElse(),
  }) {
    if (clearAllCartLocal != null) {
      return clearAllCartLocal(this);
    }
    return orElse();
  }
}

abstract class _ClearAllCartLocal implements CartEvent {
  const factory _ClearAllCartLocal() = _$ClearAllCartLocalImpl;
}

/// @nodoc
mixin _$CartState {
  CartItem get cartItem => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  List<CartProductLocal> get cartData => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call(
      {CartItem cartItem,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching,
      List<CartProductLocal> cartData});

  $CartItemCopyWith<$Res> get cartItem;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItem = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
    Object? cartData = null,
  }) {
    return _then(_value.copyWith(
      cartItem: null == cartItem
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as CartItem,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      cartData: null == cartData
          ? _value.cartData
          : cartData // ignore: cast_nullable_to_non_nullable
              as List<CartProductLocal>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartItemCopyWith<$Res> get cartItem {
    return $CartItemCopyWith<$Res>(_value.cartItem, (value) {
      return _then(_value.copyWith(cartItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CartItem cartItem,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching,
      List<CartProductLocal> cartData});

  @override
  $CartItemCopyWith<$Res> get cartItem;
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItem = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
    Object? cartData = null,
  }) {
    return _then(_$CartStateImpl(
      cartItem: null == cartItem
          ? _value.cartItem
          : cartItem // ignore: cast_nullable_to_non_nullable
              as CartItem,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      cartData: null == cartData
          ? _value._cartData
          : cartData // ignore: cast_nullable_to_non_nullable
              as List<CartProductLocal>,
    ));
  }
}

/// @nodoc

class _$CartStateImpl extends _CartState {
  const _$CartStateImpl(
      {required this.cartItem,
      required this.apiFailureOrSuccessOption,
      required this.isFetching,
      required final List<CartProductLocal> cartData})
      : _cartData = cartData,
        super._();

  @override
  final CartItem cartItem;
  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;
  @override
  final bool isFetching;
  final List<CartProductLocal> _cartData;
  @override
  List<CartProductLocal> get cartData {
    if (_cartData is EqualUnmodifiableListView) return _cartData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartData);
  }

  @override
  String toString() {
    return 'CartState(cartItem: $cartItem, apiFailureOrSuccessOption: $apiFailureOrSuccessOption, isFetching: $isFetching, cartData: $cartData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            (identical(other.cartItem, cartItem) ||
                other.cartItem == cartItem) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            const DeepCollectionEquality().equals(other._cartData, _cartData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      cartItem,
      apiFailureOrSuccessOption,
      isFetching,
      const DeepCollectionEquality().hash(_cartData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);
}

abstract class _CartState extends CartState {
  const factory _CartState(
      {required final CartItem cartItem,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption,
      required final bool isFetching,
      required final List<CartProductLocal> cartData}) = _$CartStateImpl;
  const _CartState._() : super._();

  @override
  CartItem get cartItem;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  bool get isFetching;
  @override
  List<CartProductLocal> get cartData;
  @override
  @JsonKey(ignore: true)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
