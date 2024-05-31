// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WishlistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String productId) addToWishlist,
    required TResult Function(String productId) removeFromWishlist,
    required TResult Function(String productId, String quantity, String price)
        addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String productId)? addToWishlist,
    TResult? Function(String productId)? removeFromWishlist,
    TResult? Function(String productId, String quantity, String price)?
        addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String productId)? addToWishlist,
    TResult Function(String productId)? removeFromWishlist,
    TResult Function(String productId, String quantity, String price)?
        addToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToWishlist value) addToWishlist,
    required TResult Function(_RemoveFromWishlist value) removeFromWishlist,
    required TResult Function(_AddToCart value) addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToWishlist value)? addToWishlist,
    TResult? Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult? Function(_AddToCart value)? addToCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToWishlist value)? addToWishlist,
    TResult Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistEventCopyWith<$Res> {
  factory $WishlistEventCopyWith(
          WishlistEvent value, $Res Function(WishlistEvent) then) =
      _$WishlistEventCopyWithImpl<$Res, WishlistEvent>;
}

/// @nodoc
class _$WishlistEventCopyWithImpl<$Res, $Val extends WishlistEvent>
    implements $WishlistEventCopyWith<$Res> {
  _$WishlistEventCopyWithImpl(this._value, this._then);

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
    extends _$WishlistEventCopyWithImpl<$Res, _$InitializedImpl>
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
    return 'WishlistEvent.initialized()';
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
    required TResult Function(String productId) addToWishlist,
    required TResult Function(String productId) removeFromWishlist,
    required TResult Function(String productId, String quantity, String price)
        addToCart,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String productId)? addToWishlist,
    TResult? Function(String productId)? removeFromWishlist,
    TResult? Function(String productId, String quantity, String price)?
        addToCart,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String productId)? addToWishlist,
    TResult Function(String productId)? removeFromWishlist,
    TResult Function(String productId, String quantity, String price)?
        addToCart,
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
    required TResult Function(_AddToWishlist value) addToWishlist,
    required TResult Function(_RemoveFromWishlist value) removeFromWishlist,
    required TResult Function(_AddToCart value) addToCart,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToWishlist value)? addToWishlist,
    TResult? Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult? Function(_AddToCart value)? addToCart,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToWishlist value)? addToWishlist,
    TResult Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements WishlistEvent {
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
    extends _$WishlistEventCopyWithImpl<$Res, _$FetchImpl>
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
    return 'WishlistEvent.fetch()';
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
    required TResult Function(String productId) addToWishlist,
    required TResult Function(String productId) removeFromWishlist,
    required TResult Function(String productId, String quantity, String price)
        addToCart,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String productId)? addToWishlist,
    TResult? Function(String productId)? removeFromWishlist,
    TResult? Function(String productId, String quantity, String price)?
        addToCart,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String productId)? addToWishlist,
    TResult Function(String productId)? removeFromWishlist,
    TResult Function(String productId, String quantity, String price)?
        addToCart,
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
    required TResult Function(_AddToWishlist value) addToWishlist,
    required TResult Function(_RemoveFromWishlist value) removeFromWishlist,
    required TResult Function(_AddToCart value) addToCart,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToWishlist value)? addToWishlist,
    TResult? Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult? Function(_AddToCart value)? addToCart,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToWishlist value)? addToWishlist,
    TResult Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements WishlistEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$AddToWishlistImplCopyWith<$Res> {
  factory _$$AddToWishlistImplCopyWith(
          _$AddToWishlistImpl value, $Res Function(_$AddToWishlistImpl) then) =
      __$$AddToWishlistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$AddToWishlistImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$AddToWishlistImpl>
    implements _$$AddToWishlistImplCopyWith<$Res> {
  __$$AddToWishlistImplCopyWithImpl(
      _$AddToWishlistImpl _value, $Res Function(_$AddToWishlistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$AddToWishlistImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddToWishlistImpl implements _AddToWishlist {
  const _$AddToWishlistImpl({required this.productId});

  @override
  final String productId;

  @override
  String toString() {
    return 'WishlistEvent.addToWishlist(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToWishlistImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToWishlistImplCopyWith<_$AddToWishlistImpl> get copyWith =>
      __$$AddToWishlistImplCopyWithImpl<_$AddToWishlistImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String productId) addToWishlist,
    required TResult Function(String productId) removeFromWishlist,
    required TResult Function(String productId, String quantity, String price)
        addToCart,
  }) {
    return addToWishlist(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String productId)? addToWishlist,
    TResult? Function(String productId)? removeFromWishlist,
    TResult? Function(String productId, String quantity, String price)?
        addToCart,
  }) {
    return addToWishlist?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String productId)? addToWishlist,
    TResult Function(String productId)? removeFromWishlist,
    TResult Function(String productId, String quantity, String price)?
        addToCart,
    required TResult orElse(),
  }) {
    if (addToWishlist != null) {
      return addToWishlist(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToWishlist value) addToWishlist,
    required TResult Function(_RemoveFromWishlist value) removeFromWishlist,
    required TResult Function(_AddToCart value) addToCart,
  }) {
    return addToWishlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToWishlist value)? addToWishlist,
    TResult? Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult? Function(_AddToCart value)? addToCart,
  }) {
    return addToWishlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToWishlist value)? addToWishlist,
    TResult Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (addToWishlist != null) {
      return addToWishlist(this);
    }
    return orElse();
  }
}

abstract class _AddToWishlist implements WishlistEvent {
  const factory _AddToWishlist({required final String productId}) =
      _$AddToWishlistImpl;

  String get productId;
  @JsonKey(ignore: true)
  _$$AddToWishlistImplCopyWith<_$AddToWishlistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromWishlistImplCopyWith<$Res> {
  factory _$$RemoveFromWishlistImplCopyWith(_$RemoveFromWishlistImpl value,
          $Res Function(_$RemoveFromWishlistImpl) then) =
      __$$RemoveFromWishlistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId});
}

/// @nodoc
class __$$RemoveFromWishlistImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$RemoveFromWishlistImpl>
    implements _$$RemoveFromWishlistImplCopyWith<$Res> {
  __$$RemoveFromWishlistImplCopyWithImpl(_$RemoveFromWishlistImpl _value,
      $Res Function(_$RemoveFromWishlistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$RemoveFromWishlistImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveFromWishlistImpl implements _RemoveFromWishlist {
  const _$RemoveFromWishlistImpl({required this.productId});

  @override
  final String productId;

  @override
  String toString() {
    return 'WishlistEvent.removeFromWishlist(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromWishlistImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromWishlistImplCopyWith<_$RemoveFromWishlistImpl> get copyWith =>
      __$$RemoveFromWishlistImplCopyWithImpl<_$RemoveFromWishlistImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(String productId) addToWishlist,
    required TResult Function(String productId) removeFromWishlist,
    required TResult Function(String productId, String quantity, String price)
        addToCart,
  }) {
    return removeFromWishlist(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String productId)? addToWishlist,
    TResult? Function(String productId)? removeFromWishlist,
    TResult? Function(String productId, String quantity, String price)?
        addToCart,
  }) {
    return removeFromWishlist?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String productId)? addToWishlist,
    TResult Function(String productId)? removeFromWishlist,
    TResult Function(String productId, String quantity, String price)?
        addToCart,
    required TResult orElse(),
  }) {
    if (removeFromWishlist != null) {
      return removeFromWishlist(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToWishlist value) addToWishlist,
    required TResult Function(_RemoveFromWishlist value) removeFromWishlist,
    required TResult Function(_AddToCart value) addToCart,
  }) {
    return removeFromWishlist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToWishlist value)? addToWishlist,
    TResult? Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult? Function(_AddToCart value)? addToCart,
  }) {
    return removeFromWishlist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToWishlist value)? addToWishlist,
    TResult Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (removeFromWishlist != null) {
      return removeFromWishlist(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromWishlist implements WishlistEvent {
  const factory _RemoveFromWishlist({required final String productId}) =
      _$RemoveFromWishlistImpl;

  String get productId;
  @JsonKey(ignore: true)
  _$$RemoveFromWishlistImplCopyWith<_$RemoveFromWishlistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToCartImplCopyWith<$Res> {
  factory _$$AddToCartImplCopyWith(
          _$AddToCartImpl value, $Res Function(_$AddToCartImpl) then) =
      __$$AddToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String productId, String quantity, String price});
}

/// @nodoc
class __$$AddToCartImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$AddToCartImpl>
    implements _$$AddToCartImplCopyWith<$Res> {
  __$$AddToCartImplCopyWithImpl(
      _$AddToCartImpl _value, $Res Function(_$AddToCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
    Object? price = null,
  }) {
    return _then(_$AddToCartImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddToCartImpl implements _AddToCart {
  const _$AddToCartImpl(
      {required this.productId, required this.quantity, required this.price});

  @override
  final String productId;
  @override
  final String quantity;
  @override
  final String price;

  @override
  String toString() {
    return 'WishlistEvent.addToCart(productId: $productId, quantity: $quantity, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToCartImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId, quantity, price);

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
    required TResult Function(String productId) addToWishlist,
    required TResult Function(String productId) removeFromWishlist,
    required TResult Function(String productId, String quantity, String price)
        addToCart,
  }) {
    return addToCart(productId, quantity, price);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(String productId)? addToWishlist,
    TResult? Function(String productId)? removeFromWishlist,
    TResult? Function(String productId, String quantity, String price)?
        addToCart,
  }) {
    return addToCart?.call(productId, quantity, price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(String productId)? addToWishlist,
    TResult Function(String productId)? removeFromWishlist,
    TResult Function(String productId, String quantity, String price)?
        addToCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(productId, quantity, price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToWishlist value) addToWishlist,
    required TResult Function(_RemoveFromWishlist value) removeFromWishlist,
    required TResult Function(_AddToCart value) addToCart,
  }) {
    return addToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToWishlist value)? addToWishlist,
    TResult? Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult? Function(_AddToCart value)? addToCart,
  }) {
    return addToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToWishlist value)? addToWishlist,
    TResult Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult Function(_AddToCart value)? addToCart,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(this);
    }
    return orElse();
  }
}

abstract class _AddToCart implements WishlistEvent {
  const factory _AddToCart(
      {required final String productId,
      required final String quantity,
      required final String price}) = _$AddToCartImpl;

  String get productId;
  String get quantity;
  String get price;
  @JsonKey(ignore: true)
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WishlistState {
  List<Wishlist> get wishlist => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WishlistStateCopyWith<WishlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistStateCopyWith<$Res> {
  factory $WishlistStateCopyWith(
          WishlistState value, $Res Function(WishlistState) then) =
      _$WishlistStateCopyWithImpl<$Res, WishlistState>;
  @useResult
  $Res call(
      {List<Wishlist> wishlist,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching});
}

/// @nodoc
class _$WishlistStateCopyWithImpl<$Res, $Val extends WishlistState>
    implements $WishlistStateCopyWith<$Res> {
  _$WishlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishlist = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
  }) {
    return _then(_value.copyWith(
      wishlist: null == wishlist
          ? _value.wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as List<Wishlist>,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistStateImplCopyWith<$Res>
    implements $WishlistStateCopyWith<$Res> {
  factory _$$WishlistStateImplCopyWith(
          _$WishlistStateImpl value, $Res Function(_$WishlistStateImpl) then) =
      __$$WishlistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Wishlist> wishlist,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching});
}

/// @nodoc
class __$$WishlistStateImplCopyWithImpl<$Res>
    extends _$WishlistStateCopyWithImpl<$Res, _$WishlistStateImpl>
    implements _$$WishlistStateImplCopyWith<$Res> {
  __$$WishlistStateImplCopyWithImpl(
      _$WishlistStateImpl _value, $Res Function(_$WishlistStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wishlist = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
  }) {
    return _then(_$WishlistStateImpl(
      wishlist: null == wishlist
          ? _value._wishlist
          : wishlist // ignore: cast_nullable_to_non_nullable
              as List<Wishlist>,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$WishlistStateImpl extends _WishlistState {
  const _$WishlistStateImpl(
      {required final List<Wishlist> wishlist,
      required this.apiFailureOrSuccessOption,
      required this.isFetching})
      : _wishlist = wishlist,
        super._();

  final List<Wishlist> _wishlist;
  @override
  List<Wishlist> get wishlist {
    if (_wishlist is EqualUnmodifiableListView) return _wishlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_wishlist);
  }

  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;
  @override
  final bool isFetching;

  @override
  String toString() {
    return 'WishlistState(wishlist: $wishlist, apiFailureOrSuccessOption: $apiFailureOrSuccessOption, isFetching: $isFetching)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistStateImpl &&
            const DeepCollectionEquality().equals(other._wishlist, _wishlist) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_wishlist),
      apiFailureOrSuccessOption,
      isFetching);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistStateImplCopyWith<_$WishlistStateImpl> get copyWith =>
      __$$WishlistStateImplCopyWithImpl<_$WishlistStateImpl>(this, _$identity);
}

abstract class _WishlistState extends WishlistState {
  const factory _WishlistState(
      {required final List<Wishlist> wishlist,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption,
      required final bool isFetching}) = _$WishlistStateImpl;
  const _WishlistState._() : super._();

  @override
  List<Wishlist> get wishlist;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  bool get isFetching;
  @override
  @JsonKey(ignore: true)
  _$$WishlistStateImplCopyWith<_$WishlistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
