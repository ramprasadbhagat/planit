// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartProduct {
  String get id => throw _privateConstructorUsedError;
  ProductId get productId => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get productDescription => throw _privateConstructorUsedError;
  String get attributeitem => throw _privateConstructorUsedError;
  String get itemPrice => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartProductCopyWith<CartProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductCopyWith<$Res> {
  factory $CartProductCopyWith(
          CartProduct value, $Res Function(CartProduct) then) =
      _$CartProductCopyWithImpl<$Res, CartProduct>;
  @useResult
  $Res call(
      {String id,
      ProductId productId,
      String image,
      String productName,
      String productDescription,
      String attributeitem,
      String itemPrice,
      int quantity,
      int totalPrice});
}

/// @nodoc
class _$CartProductCopyWithImpl<$Res, $Val extends CartProduct>
    implements $CartProductCopyWith<$Res> {
  _$CartProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? image = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? attributeitem = null,
    Object? itemPrice = null,
    Object? quantity = null,
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as ProductId,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      attributeitem: null == attributeitem
          ? _value.attributeitem
          : attributeitem // ignore: cast_nullable_to_non_nullable
              as String,
      itemPrice: null == itemPrice
          ? _value.itemPrice
          : itemPrice // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartProductImplCopyWith<$Res>
    implements $CartProductCopyWith<$Res> {
  factory _$$CartProductImplCopyWith(
          _$CartProductImpl value, $Res Function(_$CartProductImpl) then) =
      __$$CartProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      ProductId productId,
      String image,
      String productName,
      String productDescription,
      String attributeitem,
      String itemPrice,
      int quantity,
      int totalPrice});
}

/// @nodoc
class __$$CartProductImplCopyWithImpl<$Res>
    extends _$CartProductCopyWithImpl<$Res, _$CartProductImpl>
    implements _$$CartProductImplCopyWith<$Res> {
  __$$CartProductImplCopyWithImpl(
      _$CartProductImpl _value, $Res Function(_$CartProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? image = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? attributeitem = null,
    Object? itemPrice = null,
    Object? quantity = null,
    Object? totalPrice = null,
  }) {
    return _then(_$CartProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as ProductId,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      attributeitem: null == attributeitem
          ? _value.attributeitem
          : attributeitem // ignore: cast_nullable_to_non_nullable
              as String,
      itemPrice: null == itemPrice
          ? _value.itemPrice
          : itemPrice // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CartProductImpl extends _CartProduct {
  const _$CartProductImpl(
      {required this.id,
      required this.productId,
      required this.image,
      required this.productName,
      required this.productDescription,
      required this.attributeitem,
      required this.itemPrice,
      required this.quantity,
      required this.totalPrice})
      : super._();

  @override
  final String id;
  @override
  final ProductId productId;
  @override
  final String image;
  @override
  final String productName;
  @override
  final String productDescription;
  @override
  final String attributeitem;
  @override
  final String itemPrice;
  @override
  final int quantity;
  @override
  final int totalPrice;

  @override
  String toString() {
    return 'CartProduct(id: $id, productId: $productId, image: $image, productName: $productName, productDescription: $productDescription, attributeitem: $attributeitem, itemPrice: $itemPrice, quantity: $quantity, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.attributeitem, attributeitem) ||
                other.attributeitem == attributeitem) &&
            (identical(other.itemPrice, itemPrice) ||
                other.itemPrice == itemPrice) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productId,
      image,
      productName,
      productDescription,
      attributeitem,
      itemPrice,
      quantity,
      totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductImplCopyWith<_$CartProductImpl> get copyWith =>
      __$$CartProductImplCopyWithImpl<_$CartProductImpl>(this, _$identity);
}

abstract class _CartProduct extends CartProduct {
  const factory _CartProduct(
      {required final String id,
      required final ProductId productId,
      required final String image,
      required final String productName,
      required final String productDescription,
      required final String attributeitem,
      required final String itemPrice,
      required final int quantity,
      required final int totalPrice}) = _$CartProductImpl;
  const _CartProduct._() : super._();

  @override
  String get id;
  @override
  ProductId get productId;
  @override
  String get image;
  @override
  String get productName;
  @override
  String get productDescription;
  @override
  String get attributeitem;
  @override
  String get itemPrice;
  @override
  int get quantity;
  @override
  int get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$CartProductImplCopyWith<_$CartProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}