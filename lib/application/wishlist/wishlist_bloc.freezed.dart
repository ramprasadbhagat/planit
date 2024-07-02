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
    required TResult Function(Product product) addToWishlist,
    required TResult Function(String productId) removeFromWishlist,
    required TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)
        selectItem,
    required TResult Function() selectAll,
    required TResult Function() disselectAll,
    required TResult Function(WishlistProduct disselectedItem) disselectItem,
    required TResult Function() addAllItemToCart,
    required TResult Function(String productId, String quantity, String price,
            String attributeItemId)
        addToCart,
    required TResult Function(String id, String quantity) updateProductQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product)? addToWishlist,
    TResult? Function(String productId)? removeFromWishlist,
    TResult? Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult? Function()? selectAll,
    TResult? Function()? disselectAll,
    TResult? Function(WishlistProduct disselectedItem)? disselectItem,
    TResult? Function()? addAllItemToCart,
    TResult? Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult? Function(String id, String quantity)? updateProductQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product)? addToWishlist,
    TResult Function(String productId)? removeFromWishlist,
    TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult Function()? selectAll,
    TResult Function()? disselectAll,
    TResult Function(WishlistProduct disselectedItem)? disselectItem,
    TResult Function()? addAllItemToCart,
    TResult Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult Function(String id, String quantity)? updateProductQuantity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToWishlist value) addToWishlist,
    required TResult Function(_RemoveFromWishlist value) removeFromWishlist,
    required TResult Function(_SelectItem value) selectItem,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DisselectAll value) disselectAll,
    required TResult Function(_DisselectedItem value) disselectItem,
    required TResult Function(_AddAllItemToCart value) addAllItemToCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateQuantity value) updateProductQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToWishlist value)? addToWishlist,
    TResult? Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult? Function(_SelectItem value)? selectItem,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DisselectAll value)? disselectAll,
    TResult? Function(_DisselectedItem value)? disselectItem,
    TResult? Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateQuantity value)? updateProductQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToWishlist value)? addToWishlist,
    TResult Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult Function(_SelectItem value)? selectItem,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DisselectAll value)? disselectAll,
    TResult Function(_DisselectedItem value)? disselectItem,
    TResult Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateQuantity value)? updateProductQuantity,
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
    required TResult Function(Product product) addToWishlist,
    required TResult Function(String productId) removeFromWishlist,
    required TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)
        selectItem,
    required TResult Function() selectAll,
    required TResult Function() disselectAll,
    required TResult Function(WishlistProduct disselectedItem) disselectItem,
    required TResult Function() addAllItemToCart,
    required TResult Function(String productId, String quantity, String price,
            String attributeItemId)
        addToCart,
    required TResult Function(String id, String quantity) updateProductQuantity,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product)? addToWishlist,
    TResult? Function(String productId)? removeFromWishlist,
    TResult? Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult? Function()? selectAll,
    TResult? Function()? disselectAll,
    TResult? Function(WishlistProduct disselectedItem)? disselectItem,
    TResult? Function()? addAllItemToCart,
    TResult? Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult? Function(String id, String quantity)? updateProductQuantity,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product)? addToWishlist,
    TResult Function(String productId)? removeFromWishlist,
    TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult Function()? selectAll,
    TResult Function()? disselectAll,
    TResult Function(WishlistProduct disselectedItem)? disselectItem,
    TResult Function()? addAllItemToCart,
    TResult Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult Function(String id, String quantity)? updateProductQuantity,
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
    required TResult Function(_SelectItem value) selectItem,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DisselectAll value) disselectAll,
    required TResult Function(_DisselectedItem value) disselectItem,
    required TResult Function(_AddAllItemToCart value) addAllItemToCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateQuantity value) updateProductQuantity,
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
    TResult? Function(_SelectItem value)? selectItem,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DisselectAll value)? disselectAll,
    TResult? Function(_DisselectedItem value)? disselectItem,
    TResult? Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateQuantity value)? updateProductQuantity,
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
    TResult Function(_SelectItem value)? selectItem,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DisselectAll value)? disselectAll,
    TResult Function(_DisselectedItem value)? disselectItem,
    TResult Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateQuantity value)? updateProductQuantity,
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
    required TResult Function(Product product) addToWishlist,
    required TResult Function(String productId) removeFromWishlist,
    required TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)
        selectItem,
    required TResult Function() selectAll,
    required TResult Function() disselectAll,
    required TResult Function(WishlistProduct disselectedItem) disselectItem,
    required TResult Function() addAllItemToCart,
    required TResult Function(String productId, String quantity, String price,
            String attributeItemId)
        addToCart,
    required TResult Function(String id, String quantity) updateProductQuantity,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product)? addToWishlist,
    TResult? Function(String productId)? removeFromWishlist,
    TResult? Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult? Function()? selectAll,
    TResult? Function()? disselectAll,
    TResult? Function(WishlistProduct disselectedItem)? disselectItem,
    TResult? Function()? addAllItemToCart,
    TResult? Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult? Function(String id, String quantity)? updateProductQuantity,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product)? addToWishlist,
    TResult Function(String productId)? removeFromWishlist,
    TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult Function()? selectAll,
    TResult Function()? disselectAll,
    TResult Function(WishlistProduct disselectedItem)? disselectItem,
    TResult Function()? addAllItemToCart,
    TResult Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult Function(String id, String quantity)? updateProductQuantity,
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
    required TResult Function(_SelectItem value) selectItem,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DisselectAll value) disselectAll,
    required TResult Function(_DisselectedItem value) disselectItem,
    required TResult Function(_AddAllItemToCart value) addAllItemToCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateQuantity value) updateProductQuantity,
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
    TResult? Function(_SelectItem value)? selectItem,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DisselectAll value)? disselectAll,
    TResult? Function(_DisselectedItem value)? disselectItem,
    TResult? Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateQuantity value)? updateProductQuantity,
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
    TResult Function(_SelectItem value)? selectItem,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DisselectAll value)? disselectAll,
    TResult Function(_DisselectedItem value)? disselectItem,
    TResult Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateQuantity value)? updateProductQuantity,
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
  $Res call({Product product});

  $ProductCopyWith<$Res> get product;
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
    Object? product = null,
  }) {
    return _then(_$AddToWishlistImpl(
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

class _$AddToWishlistImpl implements _AddToWishlist {
  const _$AddToWishlistImpl({required this.product});

  @override
  final Product product;

  @override
  String toString() {
    return 'WishlistEvent.addToWishlist(product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToWishlistImpl &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

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
    required TResult Function(Product product) addToWishlist,
    required TResult Function(String productId) removeFromWishlist,
    required TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)
        selectItem,
    required TResult Function() selectAll,
    required TResult Function() disselectAll,
    required TResult Function(WishlistProduct disselectedItem) disselectItem,
    required TResult Function() addAllItemToCart,
    required TResult Function(String productId, String quantity, String price,
            String attributeItemId)
        addToCart,
    required TResult Function(String id, String quantity) updateProductQuantity,
  }) {
    return addToWishlist(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product)? addToWishlist,
    TResult? Function(String productId)? removeFromWishlist,
    TResult? Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult? Function()? selectAll,
    TResult? Function()? disselectAll,
    TResult? Function(WishlistProduct disselectedItem)? disselectItem,
    TResult? Function()? addAllItemToCart,
    TResult? Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult? Function(String id, String quantity)? updateProductQuantity,
  }) {
    return addToWishlist?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product)? addToWishlist,
    TResult Function(String productId)? removeFromWishlist,
    TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult Function()? selectAll,
    TResult Function()? disselectAll,
    TResult Function(WishlistProduct disselectedItem)? disselectItem,
    TResult Function()? addAllItemToCart,
    TResult Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult Function(String id, String quantity)? updateProductQuantity,
    required TResult orElse(),
  }) {
    if (addToWishlist != null) {
      return addToWishlist(product);
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
    required TResult Function(_SelectItem value) selectItem,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DisselectAll value) disselectAll,
    required TResult Function(_DisselectedItem value) disselectItem,
    required TResult Function(_AddAllItemToCart value) addAllItemToCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateQuantity value) updateProductQuantity,
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
    TResult? Function(_SelectItem value)? selectItem,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DisselectAll value)? disselectAll,
    TResult? Function(_DisselectedItem value)? disselectItem,
    TResult? Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateQuantity value)? updateProductQuantity,
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
    TResult Function(_SelectItem value)? selectItem,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DisselectAll value)? disselectAll,
    TResult Function(_DisselectedItem value)? disselectItem,
    TResult Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateQuantity value)? updateProductQuantity,
    required TResult orElse(),
  }) {
    if (addToWishlist != null) {
      return addToWishlist(this);
    }
    return orElse();
  }
}

abstract class _AddToWishlist implements WishlistEvent {
  const factory _AddToWishlist({required final Product product}) =
      _$AddToWishlistImpl;

  Product get product;
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
    required TResult Function(Product product) addToWishlist,
    required TResult Function(String productId) removeFromWishlist,
    required TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)
        selectItem,
    required TResult Function() selectAll,
    required TResult Function() disselectAll,
    required TResult Function(WishlistProduct disselectedItem) disselectItem,
    required TResult Function() addAllItemToCart,
    required TResult Function(String productId, String quantity, String price,
            String attributeItemId)
        addToCart,
    required TResult Function(String id, String quantity) updateProductQuantity,
  }) {
    return removeFromWishlist(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product)? addToWishlist,
    TResult? Function(String productId)? removeFromWishlist,
    TResult? Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult? Function()? selectAll,
    TResult? Function()? disselectAll,
    TResult? Function(WishlistProduct disselectedItem)? disselectItem,
    TResult? Function()? addAllItemToCart,
    TResult? Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult? Function(String id, String quantity)? updateProductQuantity,
  }) {
    return removeFromWishlist?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product)? addToWishlist,
    TResult Function(String productId)? removeFromWishlist,
    TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult Function()? selectAll,
    TResult Function()? disselectAll,
    TResult Function(WishlistProduct disselectedItem)? disselectItem,
    TResult Function()? addAllItemToCart,
    TResult Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult Function(String id, String quantity)? updateProductQuantity,
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
    required TResult Function(_SelectItem value) selectItem,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DisselectAll value) disselectAll,
    required TResult Function(_DisselectedItem value) disselectItem,
    required TResult Function(_AddAllItemToCart value) addAllItemToCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateQuantity value) updateProductQuantity,
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
    TResult? Function(_SelectItem value)? selectItem,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DisselectAll value)? disselectAll,
    TResult? Function(_DisselectedItem value)? disselectItem,
    TResult? Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateQuantity value)? updateProductQuantity,
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
    TResult Function(_SelectItem value)? selectItem,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DisselectAll value)? disselectAll,
    TResult Function(_DisselectedItem value)? disselectItem,
    TResult Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateQuantity value)? updateProductQuantity,
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
abstract class _$$SelectItemImplCopyWith<$Res> {
  factory _$$SelectItemImplCopyWith(
          _$SelectItemImpl value, $Res Function(_$SelectItemImpl) then) =
      __$$SelectItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WishlistProduct selectedItem, List<WishlistProduct> allItem});

  $WishlistProductCopyWith<$Res> get selectedItem;
}

/// @nodoc
class __$$SelectItemImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$SelectItemImpl>
    implements _$$SelectItemImplCopyWith<$Res> {
  __$$SelectItemImplCopyWithImpl(
      _$SelectItemImpl _value, $Res Function(_$SelectItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedItem = null,
    Object? allItem = null,
  }) {
    return _then(_$SelectItemImpl(
      selectedItem: null == selectedItem
          ? _value.selectedItem
          : selectedItem // ignore: cast_nullable_to_non_nullable
              as WishlistProduct,
      allItem: null == allItem
          ? _value._allItem
          : allItem // ignore: cast_nullable_to_non_nullable
              as List<WishlistProduct>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WishlistProductCopyWith<$Res> get selectedItem {
    return $WishlistProductCopyWith<$Res>(_value.selectedItem, (value) {
      return _then(_value.copyWith(selectedItem: value));
    });
  }
}

/// @nodoc

class _$SelectItemImpl implements _SelectItem {
  const _$SelectItemImpl(
      {required this.selectedItem,
      required final List<WishlistProduct> allItem})
      : _allItem = allItem;

  @override
  final WishlistProduct selectedItem;
  final List<WishlistProduct> _allItem;
  @override
  List<WishlistProduct> get allItem {
    if (_allItem is EqualUnmodifiableListView) return _allItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allItem);
  }

  @override
  String toString() {
    return 'WishlistEvent.selectItem(selectedItem: $selectedItem, allItem: $allItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectItemImpl &&
            (identical(other.selectedItem, selectedItem) ||
                other.selectedItem == selectedItem) &&
            const DeepCollectionEquality().equals(other._allItem, _allItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, selectedItem, const DeepCollectionEquality().hash(_allItem));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectItemImplCopyWith<_$SelectItemImpl> get copyWith =>
      __$$SelectItemImplCopyWithImpl<_$SelectItemImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(Product product) addToWishlist,
    required TResult Function(String productId) removeFromWishlist,
    required TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)
        selectItem,
    required TResult Function() selectAll,
    required TResult Function() disselectAll,
    required TResult Function(WishlistProduct disselectedItem) disselectItem,
    required TResult Function() addAllItemToCart,
    required TResult Function(String productId, String quantity, String price,
            String attributeItemId)
        addToCart,
    required TResult Function(String id, String quantity) updateProductQuantity,
  }) {
    return selectItem(selectedItem, allItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product)? addToWishlist,
    TResult? Function(String productId)? removeFromWishlist,
    TResult? Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult? Function()? selectAll,
    TResult? Function()? disselectAll,
    TResult? Function(WishlistProduct disselectedItem)? disselectItem,
    TResult? Function()? addAllItemToCart,
    TResult? Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult? Function(String id, String quantity)? updateProductQuantity,
  }) {
    return selectItem?.call(selectedItem, allItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product)? addToWishlist,
    TResult Function(String productId)? removeFromWishlist,
    TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult Function()? selectAll,
    TResult Function()? disselectAll,
    TResult Function(WishlistProduct disselectedItem)? disselectItem,
    TResult Function()? addAllItemToCart,
    TResult Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult Function(String id, String quantity)? updateProductQuantity,
    required TResult orElse(),
  }) {
    if (selectItem != null) {
      return selectItem(selectedItem, allItem);
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
    required TResult Function(_SelectItem value) selectItem,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DisselectAll value) disselectAll,
    required TResult Function(_DisselectedItem value) disselectItem,
    required TResult Function(_AddAllItemToCart value) addAllItemToCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateQuantity value) updateProductQuantity,
  }) {
    return selectItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToWishlist value)? addToWishlist,
    TResult? Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult? Function(_SelectItem value)? selectItem,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DisselectAll value)? disselectAll,
    TResult? Function(_DisselectedItem value)? disselectItem,
    TResult? Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateQuantity value)? updateProductQuantity,
  }) {
    return selectItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToWishlist value)? addToWishlist,
    TResult Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult Function(_SelectItem value)? selectItem,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DisselectAll value)? disselectAll,
    TResult Function(_DisselectedItem value)? disselectItem,
    TResult Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateQuantity value)? updateProductQuantity,
    required TResult orElse(),
  }) {
    if (selectItem != null) {
      return selectItem(this);
    }
    return orElse();
  }
}

abstract class _SelectItem implements WishlistEvent {
  const factory _SelectItem(
      {required final WishlistProduct selectedItem,
      required final List<WishlistProduct> allItem}) = _$SelectItemImpl;

  WishlistProduct get selectedItem;
  List<WishlistProduct> get allItem;
  @JsonKey(ignore: true)
  _$$SelectItemImplCopyWith<_$SelectItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectAllImplCopyWith<$Res> {
  factory _$$SelectAllImplCopyWith(
          _$SelectAllImpl value, $Res Function(_$SelectAllImpl) then) =
      __$$SelectAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectAllImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$SelectAllImpl>
    implements _$$SelectAllImplCopyWith<$Res> {
  __$$SelectAllImplCopyWithImpl(
      _$SelectAllImpl _value, $Res Function(_$SelectAllImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SelectAllImpl implements _SelectAll {
  const _$SelectAllImpl();

  @override
  String toString() {
    return 'WishlistEvent.selectAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SelectAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(Product product) addToWishlist,
    required TResult Function(String productId) removeFromWishlist,
    required TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)
        selectItem,
    required TResult Function() selectAll,
    required TResult Function() disselectAll,
    required TResult Function(WishlistProduct disselectedItem) disselectItem,
    required TResult Function() addAllItemToCart,
    required TResult Function(String productId, String quantity, String price,
            String attributeItemId)
        addToCart,
    required TResult Function(String id, String quantity) updateProductQuantity,
  }) {
    return selectAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product)? addToWishlist,
    TResult? Function(String productId)? removeFromWishlist,
    TResult? Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult? Function()? selectAll,
    TResult? Function()? disselectAll,
    TResult? Function(WishlistProduct disselectedItem)? disselectItem,
    TResult? Function()? addAllItemToCart,
    TResult? Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult? Function(String id, String quantity)? updateProductQuantity,
  }) {
    return selectAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product)? addToWishlist,
    TResult Function(String productId)? removeFromWishlist,
    TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult Function()? selectAll,
    TResult Function()? disselectAll,
    TResult Function(WishlistProduct disselectedItem)? disselectItem,
    TResult Function()? addAllItemToCart,
    TResult Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult Function(String id, String quantity)? updateProductQuantity,
    required TResult orElse(),
  }) {
    if (selectAll != null) {
      return selectAll();
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
    required TResult Function(_SelectItem value) selectItem,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DisselectAll value) disselectAll,
    required TResult Function(_DisselectedItem value) disselectItem,
    required TResult Function(_AddAllItemToCart value) addAllItemToCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateQuantity value) updateProductQuantity,
  }) {
    return selectAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToWishlist value)? addToWishlist,
    TResult? Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult? Function(_SelectItem value)? selectItem,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DisselectAll value)? disselectAll,
    TResult? Function(_DisselectedItem value)? disselectItem,
    TResult? Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateQuantity value)? updateProductQuantity,
  }) {
    return selectAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToWishlist value)? addToWishlist,
    TResult Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult Function(_SelectItem value)? selectItem,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DisselectAll value)? disselectAll,
    TResult Function(_DisselectedItem value)? disselectItem,
    TResult Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateQuantity value)? updateProductQuantity,
    required TResult orElse(),
  }) {
    if (selectAll != null) {
      return selectAll(this);
    }
    return orElse();
  }
}

abstract class _SelectAll implements WishlistEvent {
  const factory _SelectAll() = _$SelectAllImpl;
}

/// @nodoc
abstract class _$$DisselectAllImplCopyWith<$Res> {
  factory _$$DisselectAllImplCopyWith(
          _$DisselectAllImpl value, $Res Function(_$DisselectAllImpl) then) =
      __$$DisselectAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisselectAllImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$DisselectAllImpl>
    implements _$$DisselectAllImplCopyWith<$Res> {
  __$$DisselectAllImplCopyWithImpl(
      _$DisselectAllImpl _value, $Res Function(_$DisselectAllImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisselectAllImpl implements _DisselectAll {
  const _$DisselectAllImpl();

  @override
  String toString() {
    return 'WishlistEvent.disselectAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisselectAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(Product product) addToWishlist,
    required TResult Function(String productId) removeFromWishlist,
    required TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)
        selectItem,
    required TResult Function() selectAll,
    required TResult Function() disselectAll,
    required TResult Function(WishlistProduct disselectedItem) disselectItem,
    required TResult Function() addAllItemToCart,
    required TResult Function(String productId, String quantity, String price,
            String attributeItemId)
        addToCart,
    required TResult Function(String id, String quantity) updateProductQuantity,
  }) {
    return disselectAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product)? addToWishlist,
    TResult? Function(String productId)? removeFromWishlist,
    TResult? Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult? Function()? selectAll,
    TResult? Function()? disselectAll,
    TResult? Function(WishlistProduct disselectedItem)? disselectItem,
    TResult? Function()? addAllItemToCart,
    TResult? Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult? Function(String id, String quantity)? updateProductQuantity,
  }) {
    return disselectAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product)? addToWishlist,
    TResult Function(String productId)? removeFromWishlist,
    TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult Function()? selectAll,
    TResult Function()? disselectAll,
    TResult Function(WishlistProduct disselectedItem)? disselectItem,
    TResult Function()? addAllItemToCart,
    TResult Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult Function(String id, String quantity)? updateProductQuantity,
    required TResult orElse(),
  }) {
    if (disselectAll != null) {
      return disselectAll();
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
    required TResult Function(_SelectItem value) selectItem,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DisselectAll value) disselectAll,
    required TResult Function(_DisselectedItem value) disselectItem,
    required TResult Function(_AddAllItemToCart value) addAllItemToCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateQuantity value) updateProductQuantity,
  }) {
    return disselectAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToWishlist value)? addToWishlist,
    TResult? Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult? Function(_SelectItem value)? selectItem,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DisselectAll value)? disselectAll,
    TResult? Function(_DisselectedItem value)? disselectItem,
    TResult? Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateQuantity value)? updateProductQuantity,
  }) {
    return disselectAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToWishlist value)? addToWishlist,
    TResult Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult Function(_SelectItem value)? selectItem,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DisselectAll value)? disselectAll,
    TResult Function(_DisselectedItem value)? disselectItem,
    TResult Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateQuantity value)? updateProductQuantity,
    required TResult orElse(),
  }) {
    if (disselectAll != null) {
      return disselectAll(this);
    }
    return orElse();
  }
}

abstract class _DisselectAll implements WishlistEvent {
  const factory _DisselectAll() = _$DisselectAllImpl;
}

/// @nodoc
abstract class _$$DisselectedItemImplCopyWith<$Res> {
  factory _$$DisselectedItemImplCopyWith(_$DisselectedItemImpl value,
          $Res Function(_$DisselectedItemImpl) then) =
      __$$DisselectedItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WishlistProduct disselectedItem});

  $WishlistProductCopyWith<$Res> get disselectedItem;
}

/// @nodoc
class __$$DisselectedItemImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$DisselectedItemImpl>
    implements _$$DisselectedItemImplCopyWith<$Res> {
  __$$DisselectedItemImplCopyWithImpl(
      _$DisselectedItemImpl _value, $Res Function(_$DisselectedItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disselectedItem = null,
  }) {
    return _then(_$DisselectedItemImpl(
      disselectedItem: null == disselectedItem
          ? _value.disselectedItem
          : disselectedItem // ignore: cast_nullable_to_non_nullable
              as WishlistProduct,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WishlistProductCopyWith<$Res> get disselectedItem {
    return $WishlistProductCopyWith<$Res>(_value.disselectedItem, (value) {
      return _then(_value.copyWith(disselectedItem: value));
    });
  }
}

/// @nodoc

class _$DisselectedItemImpl implements _DisselectedItem {
  const _$DisselectedItemImpl({required this.disselectedItem});

  @override
  final WishlistProduct disselectedItem;

  @override
  String toString() {
    return 'WishlistEvent.disselectItem(disselectedItem: $disselectedItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisselectedItemImpl &&
            (identical(other.disselectedItem, disselectedItem) ||
                other.disselectedItem == disselectedItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, disselectedItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisselectedItemImplCopyWith<_$DisselectedItemImpl> get copyWith =>
      __$$DisselectedItemImplCopyWithImpl<_$DisselectedItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(Product product) addToWishlist,
    required TResult Function(String productId) removeFromWishlist,
    required TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)
        selectItem,
    required TResult Function() selectAll,
    required TResult Function() disselectAll,
    required TResult Function(WishlistProduct disselectedItem) disselectItem,
    required TResult Function() addAllItemToCart,
    required TResult Function(String productId, String quantity, String price,
            String attributeItemId)
        addToCart,
    required TResult Function(String id, String quantity) updateProductQuantity,
  }) {
    return disselectItem(disselectedItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product)? addToWishlist,
    TResult? Function(String productId)? removeFromWishlist,
    TResult? Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult? Function()? selectAll,
    TResult? Function()? disselectAll,
    TResult? Function(WishlistProduct disselectedItem)? disselectItem,
    TResult? Function()? addAllItemToCart,
    TResult? Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult? Function(String id, String quantity)? updateProductQuantity,
  }) {
    return disselectItem?.call(disselectedItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product)? addToWishlist,
    TResult Function(String productId)? removeFromWishlist,
    TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult Function()? selectAll,
    TResult Function()? disselectAll,
    TResult Function(WishlistProduct disselectedItem)? disselectItem,
    TResult Function()? addAllItemToCart,
    TResult Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult Function(String id, String quantity)? updateProductQuantity,
    required TResult orElse(),
  }) {
    if (disselectItem != null) {
      return disselectItem(disselectedItem);
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
    required TResult Function(_SelectItem value) selectItem,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DisselectAll value) disselectAll,
    required TResult Function(_DisselectedItem value) disselectItem,
    required TResult Function(_AddAllItemToCart value) addAllItemToCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateQuantity value) updateProductQuantity,
  }) {
    return disselectItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToWishlist value)? addToWishlist,
    TResult? Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult? Function(_SelectItem value)? selectItem,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DisselectAll value)? disselectAll,
    TResult? Function(_DisselectedItem value)? disselectItem,
    TResult? Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateQuantity value)? updateProductQuantity,
  }) {
    return disselectItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToWishlist value)? addToWishlist,
    TResult Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult Function(_SelectItem value)? selectItem,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DisselectAll value)? disselectAll,
    TResult Function(_DisselectedItem value)? disselectItem,
    TResult Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateQuantity value)? updateProductQuantity,
    required TResult orElse(),
  }) {
    if (disselectItem != null) {
      return disselectItem(this);
    }
    return orElse();
  }
}

abstract class _DisselectedItem implements WishlistEvent {
  const factory _DisselectedItem(
      {required final WishlistProduct disselectedItem}) = _$DisselectedItemImpl;

  WishlistProduct get disselectedItem;
  @JsonKey(ignore: true)
  _$$DisselectedItemImplCopyWith<_$DisselectedItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddAllItemToCartImplCopyWith<$Res> {
  factory _$$AddAllItemToCartImplCopyWith(_$AddAllItemToCartImpl value,
          $Res Function(_$AddAllItemToCartImpl) then) =
      __$$AddAllItemToCartImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddAllItemToCartImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$AddAllItemToCartImpl>
    implements _$$AddAllItemToCartImplCopyWith<$Res> {
  __$$AddAllItemToCartImplCopyWithImpl(_$AddAllItemToCartImpl _value,
      $Res Function(_$AddAllItemToCartImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddAllItemToCartImpl implements _AddAllItemToCart {
  const _$AddAllItemToCartImpl();

  @override
  String toString() {
    return 'WishlistEvent.addAllItemToCart()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddAllItemToCartImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(Product product) addToWishlist,
    required TResult Function(String productId) removeFromWishlist,
    required TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)
        selectItem,
    required TResult Function() selectAll,
    required TResult Function() disselectAll,
    required TResult Function(WishlistProduct disselectedItem) disselectItem,
    required TResult Function() addAllItemToCart,
    required TResult Function(String productId, String quantity, String price,
            String attributeItemId)
        addToCart,
    required TResult Function(String id, String quantity) updateProductQuantity,
  }) {
    return addAllItemToCart();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product)? addToWishlist,
    TResult? Function(String productId)? removeFromWishlist,
    TResult? Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult? Function()? selectAll,
    TResult? Function()? disselectAll,
    TResult? Function(WishlistProduct disselectedItem)? disselectItem,
    TResult? Function()? addAllItemToCart,
    TResult? Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult? Function(String id, String quantity)? updateProductQuantity,
  }) {
    return addAllItemToCart?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product)? addToWishlist,
    TResult Function(String productId)? removeFromWishlist,
    TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult Function()? selectAll,
    TResult Function()? disselectAll,
    TResult Function(WishlistProduct disselectedItem)? disselectItem,
    TResult Function()? addAllItemToCart,
    TResult Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult Function(String id, String quantity)? updateProductQuantity,
    required TResult orElse(),
  }) {
    if (addAllItemToCart != null) {
      return addAllItemToCart();
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
    required TResult Function(_SelectItem value) selectItem,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DisselectAll value) disselectAll,
    required TResult Function(_DisselectedItem value) disselectItem,
    required TResult Function(_AddAllItemToCart value) addAllItemToCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateQuantity value) updateProductQuantity,
  }) {
    return addAllItemToCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToWishlist value)? addToWishlist,
    TResult? Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult? Function(_SelectItem value)? selectItem,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DisselectAll value)? disselectAll,
    TResult? Function(_DisselectedItem value)? disselectItem,
    TResult? Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateQuantity value)? updateProductQuantity,
  }) {
    return addAllItemToCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToWishlist value)? addToWishlist,
    TResult Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult Function(_SelectItem value)? selectItem,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DisselectAll value)? disselectAll,
    TResult Function(_DisselectedItem value)? disselectItem,
    TResult Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateQuantity value)? updateProductQuantity,
    required TResult orElse(),
  }) {
    if (addAllItemToCart != null) {
      return addAllItemToCart(this);
    }
    return orElse();
  }
}

abstract class _AddAllItemToCart implements WishlistEvent {
  const factory _AddAllItemToCart() = _$AddAllItemToCartImpl;
}

/// @nodoc
abstract class _$$AddToCartImplCopyWith<$Res> {
  factory _$$AddToCartImplCopyWith(
          _$AddToCartImpl value, $Res Function(_$AddToCartImpl) then) =
      __$$AddToCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String productId,
      String quantity,
      String price,
      String attributeItemId});
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
    Object? attributeItemId = null,
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
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddToCartImpl implements _AddToCart {
  const _$AddToCartImpl(
      {required this.productId,
      required this.quantity,
      required this.price,
      required this.attributeItemId});

  @override
  final String productId;
  @override
  final String quantity;
  @override
  final String price;
  @override
  final String attributeItemId;

  @override
  String toString() {
    return 'WishlistEvent.addToCart(productId: $productId, quantity: $quantity, price: $price, attributeItemId: $attributeItemId)';
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
            (identical(other.price, price) || other.price == price) &&
            (identical(other.attributeItemId, attributeItemId) ||
                other.attributeItemId == attributeItemId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, quantity, price, attributeItemId);

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
    required TResult Function(Product product) addToWishlist,
    required TResult Function(String productId) removeFromWishlist,
    required TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)
        selectItem,
    required TResult Function() selectAll,
    required TResult Function() disselectAll,
    required TResult Function(WishlistProduct disselectedItem) disselectItem,
    required TResult Function() addAllItemToCart,
    required TResult Function(String productId, String quantity, String price,
            String attributeItemId)
        addToCart,
    required TResult Function(String id, String quantity) updateProductQuantity,
  }) {
    return addToCart(productId, quantity, price, attributeItemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product)? addToWishlist,
    TResult? Function(String productId)? removeFromWishlist,
    TResult? Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult? Function()? selectAll,
    TResult? Function()? disselectAll,
    TResult? Function(WishlistProduct disselectedItem)? disselectItem,
    TResult? Function()? addAllItemToCart,
    TResult? Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult? Function(String id, String quantity)? updateProductQuantity,
  }) {
    return addToCart?.call(productId, quantity, price, attributeItemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product)? addToWishlist,
    TResult Function(String productId)? removeFromWishlist,
    TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult Function()? selectAll,
    TResult Function()? disselectAll,
    TResult Function(WishlistProduct disselectedItem)? disselectItem,
    TResult Function()? addAllItemToCart,
    TResult Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult Function(String id, String quantity)? updateProductQuantity,
    required TResult orElse(),
  }) {
    if (addToCart != null) {
      return addToCart(productId, quantity, price, attributeItemId);
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
    required TResult Function(_SelectItem value) selectItem,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DisselectAll value) disselectAll,
    required TResult Function(_DisselectedItem value) disselectItem,
    required TResult Function(_AddAllItemToCart value) addAllItemToCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateQuantity value) updateProductQuantity,
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
    TResult? Function(_SelectItem value)? selectItem,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DisselectAll value)? disselectAll,
    TResult? Function(_DisselectedItem value)? disselectItem,
    TResult? Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateQuantity value)? updateProductQuantity,
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
    TResult Function(_SelectItem value)? selectItem,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DisselectAll value)? disselectAll,
    TResult Function(_DisselectedItem value)? disselectItem,
    TResult Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateQuantity value)? updateProductQuantity,
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
      required final String price,
      required final String attributeItemId}) = _$AddToCartImpl;

  String get productId;
  String get quantity;
  String get price;
  String get attributeItemId;
  @JsonKey(ignore: true)
  _$$AddToCartImplCopyWith<_$AddToCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateQuantityImplCopyWith<$Res> {
  factory _$$UpdateQuantityImplCopyWith(_$UpdateQuantityImpl value,
          $Res Function(_$UpdateQuantityImpl) then) =
      __$$UpdateQuantityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String quantity});
}

/// @nodoc
class __$$UpdateQuantityImplCopyWithImpl<$Res>
    extends _$WishlistEventCopyWithImpl<$Res, _$UpdateQuantityImpl>
    implements _$$UpdateQuantityImplCopyWith<$Res> {
  __$$UpdateQuantityImplCopyWithImpl(
      _$UpdateQuantityImpl _value, $Res Function(_$UpdateQuantityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? quantity = null,
  }) {
    return _then(_$UpdateQuantityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateQuantityImpl implements _UpdateQuantity {
  const _$UpdateQuantityImpl({required this.id, required this.quantity});

  @override
  final String id;
  @override
  final String quantity;

  @override
  String toString() {
    return 'WishlistEvent.updateProductQuantity(id: $id, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateQuantityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateQuantityImplCopyWith<_$UpdateQuantityImpl> get copyWith =>
      __$$UpdateQuantityImplCopyWithImpl<_$UpdateQuantityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function() fetch,
    required TResult Function(Product product) addToWishlist,
    required TResult Function(String productId) removeFromWishlist,
    required TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)
        selectItem,
    required TResult Function() selectAll,
    required TResult Function() disselectAll,
    required TResult Function(WishlistProduct disselectedItem) disselectItem,
    required TResult Function() addAllItemToCart,
    required TResult Function(String productId, String quantity, String price,
            String attributeItemId)
        addToCart,
    required TResult Function(String id, String quantity) updateProductQuantity,
  }) {
    return updateProductQuantity(id, quantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function()? fetch,
    TResult? Function(Product product)? addToWishlist,
    TResult? Function(String productId)? removeFromWishlist,
    TResult? Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult? Function()? selectAll,
    TResult? Function()? disselectAll,
    TResult? Function(WishlistProduct disselectedItem)? disselectItem,
    TResult? Function()? addAllItemToCart,
    TResult? Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult? Function(String id, String quantity)? updateProductQuantity,
  }) {
    return updateProductQuantity?.call(id, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function()? fetch,
    TResult Function(Product product)? addToWishlist,
    TResult Function(String productId)? removeFromWishlist,
    TResult Function(
            WishlistProduct selectedItem, List<WishlistProduct> allItem)?
        selectItem,
    TResult Function()? selectAll,
    TResult Function()? disselectAll,
    TResult Function(WishlistProduct disselectedItem)? disselectItem,
    TResult Function()? addAllItemToCart,
    TResult Function(String productId, String quantity, String price,
            String attributeItemId)?
        addToCart,
    TResult Function(String id, String quantity)? updateProductQuantity,
    required TResult orElse(),
  }) {
    if (updateProductQuantity != null) {
      return updateProductQuantity(id, quantity);
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
    required TResult Function(_SelectItem value) selectItem,
    required TResult Function(_SelectAll value) selectAll,
    required TResult Function(_DisselectAll value) disselectAll,
    required TResult Function(_DisselectedItem value) disselectItem,
    required TResult Function(_AddAllItemToCart value) addAllItemToCart,
    required TResult Function(_AddToCart value) addToCart,
    required TResult Function(_UpdateQuantity value) updateProductQuantity,
  }) {
    return updateProductQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToWishlist value)? addToWishlist,
    TResult? Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult? Function(_SelectItem value)? selectItem,
    TResult? Function(_SelectAll value)? selectAll,
    TResult? Function(_DisselectAll value)? disselectAll,
    TResult? Function(_DisselectedItem value)? disselectItem,
    TResult? Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult? Function(_AddToCart value)? addToCart,
    TResult? Function(_UpdateQuantity value)? updateProductQuantity,
  }) {
    return updateProductQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToWishlist value)? addToWishlist,
    TResult Function(_RemoveFromWishlist value)? removeFromWishlist,
    TResult Function(_SelectItem value)? selectItem,
    TResult Function(_SelectAll value)? selectAll,
    TResult Function(_DisselectAll value)? disselectAll,
    TResult Function(_DisselectedItem value)? disselectItem,
    TResult Function(_AddAllItemToCart value)? addAllItemToCart,
    TResult Function(_AddToCart value)? addToCart,
    TResult Function(_UpdateQuantity value)? updateProductQuantity,
    required TResult orElse(),
  }) {
    if (updateProductQuantity != null) {
      return updateProductQuantity(this);
    }
    return orElse();
  }
}

abstract class _UpdateQuantity implements WishlistEvent {
  const factory _UpdateQuantity(
      {required final String id,
      required final String quantity}) = _$UpdateQuantityImpl;

  String get id;
  String get quantity;
  @JsonKey(ignore: true)
  _$$UpdateQuantityImplCopyWith<_$UpdateQuantityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WishlistState {
  List<Wishlist> get wishlist => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  List<WishlistProduct> get selectedItemList =>
      throw _privateConstructorUsedError;

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
      bool isFetching,
      List<WishlistProduct> selectedItemList});
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
    Object? selectedItemList = null,
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
      selectedItemList: null == selectedItemList
          ? _value.selectedItemList
          : selectedItemList // ignore: cast_nullable_to_non_nullable
              as List<WishlistProduct>,
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
      bool isFetching,
      List<WishlistProduct> selectedItemList});
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
    Object? selectedItemList = null,
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
      selectedItemList: null == selectedItemList
          ? _value._selectedItemList
          : selectedItemList // ignore: cast_nullable_to_non_nullable
              as List<WishlistProduct>,
    ));
  }
}

/// @nodoc

class _$WishlistStateImpl extends _WishlistState {
  const _$WishlistStateImpl(
      {required final List<Wishlist> wishlist,
      required this.apiFailureOrSuccessOption,
      required this.isFetching,
      required final List<WishlistProduct> selectedItemList})
      : _wishlist = wishlist,
        _selectedItemList = selectedItemList,
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
  final List<WishlistProduct> _selectedItemList;
  @override
  List<WishlistProduct> get selectedItemList {
    if (_selectedItemList is EqualUnmodifiableListView)
      return _selectedItemList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedItemList);
  }

  @override
  String toString() {
    return 'WishlistState(wishlist: $wishlist, apiFailureOrSuccessOption: $apiFailureOrSuccessOption, isFetching: $isFetching, selectedItemList: $selectedItemList)';
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
                other.isFetching == isFetching) &&
            const DeepCollectionEquality()
                .equals(other._selectedItemList, _selectedItemList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_wishlist),
      apiFailureOrSuccessOption,
      isFetching,
      const DeepCollectionEquality().hash(_selectedItemList));

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
          required final bool isFetching,
          required final List<WishlistProduct> selectedItemList}) =
      _$WishlistStateImpl;
  const _WishlistState._() : super._();

  @override
  List<Wishlist> get wishlist;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  bool get isFetching;
  @override
  List<WishlistProduct> get selectedItemList;
  @override
  @JsonKey(ignore: true)
  _$$WishlistStateImplCopyWith<_$WishlistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
