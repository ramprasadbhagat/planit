// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_product_local.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartProductLocal {
  @HiveField(0)
  String get productId => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  List<String> get productImages => throw _privateConstructorUsedError;
  @HiveField(3)
  double get skuPrice => throw _privateConstructorUsedError;
  @HiveField(4)
  int get startingPrice => throw _privateConstructorUsedError;
  @HiveField(5)
  String get attributeItem => throw _privateConstructorUsedError;
  @HiveField(6)
  String get attributeItemProductId => throw _privateConstructorUsedError;
  @HiveField(7)
  Price get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartProductLocalCopyWith<CartProductLocal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductLocalCopyWith<$Res> {
  factory $CartProductLocalCopyWith(
          CartProductLocal value, $Res Function(CartProductLocal) then) =
      _$CartProductLocalCopyWithImpl<$Res, CartProductLocal>;
  @useResult
  $Res call(
      {@HiveField(0) String productId,
      @HiveField(1) String name,
      @HiveField(2) List<String> productImages,
      @HiveField(3) double skuPrice,
      @HiveField(4) int startingPrice,
      @HiveField(5) String attributeItem,
      @HiveField(6) String attributeItemProductId,
      @HiveField(7) Price price});

  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$CartProductLocalCopyWithImpl<$Res, $Val extends CartProductLocal>
    implements $CartProductLocalCopyWith<$Res> {
  _$CartProductLocalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? name = null,
    Object? productImages = null,
    Object? skuPrice = null,
    Object? startingPrice = null,
    Object? attributeItem = null,
    Object? attributeItemProductId = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      productImages: null == productImages
          ? _value.productImages
          : productImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skuPrice: null == skuPrice
          ? _value.skuPrice
          : skuPrice // ignore: cast_nullable_to_non_nullable
              as double,
      startingPrice: null == startingPrice
          ? _value.startingPrice
          : startingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      attributeItem: null == attributeItem
          ? _value.attributeItem
          : attributeItem // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItemProductId: null == attributeItemProductId
          ? _value.attributeItemProductId
          : attributeItemProductId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartProductLocalImplCopyWith<$Res>
    implements $CartProductLocalCopyWith<$Res> {
  factory _$$CartProductLocalImplCopyWith(_$CartProductLocalImpl value,
          $Res Function(_$CartProductLocalImpl) then) =
      __$$CartProductLocalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String productId,
      @HiveField(1) String name,
      @HiveField(2) List<String> productImages,
      @HiveField(3) double skuPrice,
      @HiveField(4) int startingPrice,
      @HiveField(5) String attributeItem,
      @HiveField(6) String attributeItemProductId,
      @HiveField(7) Price price});

  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$CartProductLocalImplCopyWithImpl<$Res>
    extends _$CartProductLocalCopyWithImpl<$Res, _$CartProductLocalImpl>
    implements _$$CartProductLocalImplCopyWith<$Res> {
  __$$CartProductLocalImplCopyWithImpl(_$CartProductLocalImpl _value,
      $Res Function(_$CartProductLocalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? name = null,
    Object? productImages = null,
    Object? skuPrice = null,
    Object? startingPrice = null,
    Object? attributeItem = null,
    Object? attributeItemProductId = null,
    Object? price = null,
  }) {
    return _then(_$CartProductLocalImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      productImages: null == productImages
          ? _value._productImages
          : productImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skuPrice: null == skuPrice
          ? _value.skuPrice
          : skuPrice // ignore: cast_nullable_to_non_nullable
              as double,
      startingPrice: null == startingPrice
          ? _value.startingPrice
          : startingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      attributeItem: null == attributeItem
          ? _value.attributeItem
          : attributeItem // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItemProductId: null == attributeItemProductId
          ? _value.attributeItemProductId
          : attributeItemProductId // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ));
  }
}

/// @nodoc

@HiveType(
    typeId: HiveConstants.cartTypeId, adapterName: HiveConstants.cartAdapter)
class _$CartProductLocalImpl implements _CartProductLocal {
  _$CartProductLocalImpl(
      {@HiveField(0) required this.productId,
      @HiveField(1) required this.name,
      @HiveField(2) required final List<String> productImages,
      @HiveField(3) required this.skuPrice,
      @HiveField(4) required this.startingPrice,
      @HiveField(5) required this.attributeItem,
      @HiveField(6) required this.attributeItemProductId,
      @HiveField(7) required this.price})
      : _productImages = productImages;

  @override
  @HiveField(0)
  final String productId;
  @override
  @HiveField(1)
  final String name;
  final List<String> _productImages;
  @override
  @HiveField(2)
  List<String> get productImages {
    if (_productImages is EqualUnmodifiableListView) return _productImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productImages);
  }

  @override
  @HiveField(3)
  final double skuPrice;
  @override
  @HiveField(4)
  final int startingPrice;
  @override
  @HiveField(5)
  final String attributeItem;
  @override
  @HiveField(6)
  final String attributeItemProductId;
  @override
  @HiveField(7)
  final Price price;

  @override
  String toString() {
    return 'CartProductLocal(productId: $productId, name: $name, productImages: $productImages, skuPrice: $skuPrice, startingPrice: $startingPrice, attributeItem: $attributeItem, attributeItemProductId: $attributeItemProductId, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProductLocalImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._productImages, _productImages) &&
            (identical(other.skuPrice, skuPrice) ||
                other.skuPrice == skuPrice) &&
            (identical(other.startingPrice, startingPrice) ||
                other.startingPrice == startingPrice) &&
            (identical(other.attributeItem, attributeItem) ||
                other.attributeItem == attributeItem) &&
            (identical(other.attributeItemProductId, attributeItemProductId) ||
                other.attributeItemProductId == attributeItemProductId) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      productId,
      name,
      const DeepCollectionEquality().hash(_productImages),
      skuPrice,
      startingPrice,
      attributeItem,
      attributeItemProductId,
      price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductLocalImplCopyWith<_$CartProductLocalImpl> get copyWith =>
      __$$CartProductLocalImplCopyWithImpl<_$CartProductLocalImpl>(
          this, _$identity);
}

abstract class _CartProductLocal implements CartProductLocal {
  factory _CartProductLocal(
      {@HiveField(0) required final String productId,
      @HiveField(1) required final String name,
      @HiveField(2) required final List<String> productImages,
      @HiveField(3) required final double skuPrice,
      @HiveField(4) required final int startingPrice,
      @HiveField(5) required final String attributeItem,
      @HiveField(6) required final String attributeItemProductId,
      @HiveField(7) required final Price price}) = _$CartProductLocalImpl;

  @override
  @HiveField(0)
  String get productId;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  List<String> get productImages;
  @override
  @HiveField(3)
  double get skuPrice;
  @override
  @HiveField(4)
  int get startingPrice;
  @override
  @HiveField(5)
  String get attributeItem;
  @override
  @HiveField(6)
  String get attributeItemProductId;
  @override
  @HiveField(7)
  Price get price;
  @override
  @JsonKey(ignore: true)
  _$$CartProductLocalImplCopyWith<_$CartProductLocalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
