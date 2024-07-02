// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wish_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Wishlist {
  String get id => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get productId => throw _privateConstructorUsedError;
  String get attributeItemProductID => throw _privateConstructorUsedError;
  String get attributeItemId => throw _privateConstructorUsedError;
  List<WishlistProduct> get product => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WishlistCopyWith<Wishlist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistCopyWith<$Res> {
  factory $WishlistCopyWith(Wishlist value, $Res Function(Wishlist) then) =
      _$WishlistCopyWithImpl<$Res, Wishlist>;
  @useResult
  $Res call(
      {String id,
      String userId,
      String productId,
      String attributeItemProductID,
      String attributeItemId,
      List<WishlistProduct> product});
}

/// @nodoc
class _$WishlistCopyWithImpl<$Res, $Val extends Wishlist>
    implements $WishlistCopyWith<$Res> {
  _$WishlistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? productId = null,
    Object? attributeItemProductID = null,
    Object? attributeItemId = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItemProductID: null == attributeItemProductID
          ? _value.attributeItemProductID
          : attributeItemProductID // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<WishlistProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistImplCopyWith<$Res>
    implements $WishlistCopyWith<$Res> {
  factory _$$WishlistImplCopyWith(
          _$WishlistImpl value, $Res Function(_$WishlistImpl) then) =
      __$$WishlistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String userId,
      String productId,
      String attributeItemProductID,
      String attributeItemId,
      List<WishlistProduct> product});
}

/// @nodoc
class __$$WishlistImplCopyWithImpl<$Res>
    extends _$WishlistCopyWithImpl<$Res, _$WishlistImpl>
    implements _$$WishlistImplCopyWith<$Res> {
  __$$WishlistImplCopyWithImpl(
      _$WishlistImpl _value, $Res Function(_$WishlistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? productId = null,
    Object? attributeItemProductID = null,
    Object? attributeItemId = null,
    Object? product = null,
  }) {
    return _then(_$WishlistImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItemProductID: null == attributeItemProductID
          ? _value.attributeItemProductID
          : attributeItemProductID // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<WishlistProduct>,
    ));
  }
}

/// @nodoc

class _$WishlistImpl extends _Wishlist {
  _$WishlistImpl(
      {required this.id,
      required this.userId,
      required this.productId,
      required this.attributeItemProductID,
      required this.attributeItemId,
      required final List<WishlistProduct> product})
      : _product = product,
        super._();

  @override
  final String id;
  @override
  final String userId;
  @override
  final String productId;
  @override
  final String attributeItemProductID;
  @override
  final String attributeItemId;
  final List<WishlistProduct> _product;
  @override
  List<WishlistProduct> get product {
    if (_product is EqualUnmodifiableListView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_product);
  }

  @override
  String toString() {
    return 'Wishlist(id: $id, userId: $userId, productId: $productId, attributeItemProductID: $attributeItemProductID, attributeItemId: $attributeItemId, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.attributeItemProductID, attributeItemProductID) ||
                other.attributeItemProductID == attributeItemProductID) &&
            (identical(other.attributeItemId, attributeItemId) ||
                other.attributeItemId == attributeItemId) &&
            const DeepCollectionEquality().equals(other._product, _product));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      productId,
      attributeItemProductID,
      attributeItemId,
      const DeepCollectionEquality().hash(_product));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistImplCopyWith<_$WishlistImpl> get copyWith =>
      __$$WishlistImplCopyWithImpl<_$WishlistImpl>(this, _$identity);
}

abstract class _Wishlist extends Wishlist {
  factory _Wishlist(
      {required final String id,
      required final String userId,
      required final String productId,
      required final String attributeItemProductID,
      required final String attributeItemId,
      required final List<WishlistProduct> product}) = _$WishlistImpl;
  _Wishlist._() : super._();

  @override
  String get id;
  @override
  String get userId;
  @override
  String get productId;
  @override
  String get attributeItemProductID;
  @override
  String get attributeItemId;
  @override
  List<WishlistProduct> get product;
  @override
  @JsonKey(ignore: true)
  _$$WishlistImplCopyWith<_$WishlistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
