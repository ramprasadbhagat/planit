// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Product {
  ProductId get productId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get productImages => throw _privateConstructorUsedError;
  IntegerValue get skuPrice => throw _privateConstructorUsedError;
  int get startingPrice => throw _privateConstructorUsedError;
  String get attributeItem => throw _privateConstructorUsedError;
  String get attributeItemProductId => throw _privateConstructorUsedError;
  StringValue get attributeItemId => throw _privateConstructorUsedError;
  StringValue get productDescription => throw _privateConstructorUsedError;
  bool get backOrder => throw _privateConstructorUsedError;
  double get productRating => throw _privateConstructorUsedError;
  Inventory get inventory => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {ProductId productId,
      String name,
      List<String> productImages,
      IntegerValue skuPrice,
      int startingPrice,
      String attributeItem,
      String attributeItemProductId,
      StringValue attributeItemId,
      StringValue productDescription,
      bool backOrder,
      double productRating,
      Inventory inventory});

  $InventoryCopyWith<$Res> get inventory;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

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
    Object? attributeItemId = null,
    Object? productDescription = null,
    Object? backOrder = null,
    Object? productRating = null,
    Object? inventory = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as ProductId,
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
              as IntegerValue,
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
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as StringValue,
      backOrder: null == backOrder
          ? _value.backOrder
          : backOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      productRating: null == productRating
          ? _value.productRating
          : productRating // ignore: cast_nullable_to_non_nullable
              as double,
      inventory: null == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as Inventory,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InventoryCopyWith<$Res> get inventory {
    return $InventoryCopyWith<$Res>(_value.inventory, (value) {
      return _then(_value.copyWith(inventory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductId productId,
      String name,
      List<String> productImages,
      IntegerValue skuPrice,
      int startingPrice,
      String attributeItem,
      String attributeItemProductId,
      StringValue attributeItemId,
      StringValue productDescription,
      bool backOrder,
      double productRating,
      Inventory inventory});

  @override
  $InventoryCopyWith<$Res> get inventory;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
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
    Object? attributeItemId = null,
    Object? productDescription = null,
    Object? backOrder = null,
    Object? productRating = null,
    Object? inventory = null,
  }) {
    return _then(_$ProductImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as ProductId,
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
              as IntegerValue,
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
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as StringValue,
      backOrder: null == backOrder
          ? _value.backOrder
          : backOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      productRating: null == productRating
          ? _value.productRating
          : productRating // ignore: cast_nullable_to_non_nullable
              as double,
      inventory: null == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as Inventory,
    ));
  }
}

/// @nodoc

class _$ProductImpl extends _Product {
  _$ProductImpl(
      {required this.productId,
      required this.name,
      required final List<String> productImages,
      required this.skuPrice,
      required this.startingPrice,
      required this.attributeItem,
      required this.attributeItemProductId,
      required this.attributeItemId,
      required this.productDescription,
      required this.backOrder,
      required this.productRating,
      required this.inventory})
      : _productImages = productImages,
        super._();

  @override
  final ProductId productId;
  @override
  final String name;
  final List<String> _productImages;
  @override
  List<String> get productImages {
    if (_productImages is EqualUnmodifiableListView) return _productImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productImages);
  }

  @override
  final IntegerValue skuPrice;
  @override
  final int startingPrice;
  @override
  final String attributeItem;
  @override
  final String attributeItemProductId;
  @override
  final StringValue attributeItemId;
  @override
  final StringValue productDescription;
  @override
  final bool backOrder;
  @override
  final double productRating;
  @override
  final Inventory inventory;

  @override
  String toString() {
    return 'Product(productId: $productId, name: $name, productImages: $productImages, skuPrice: $skuPrice, startingPrice: $startingPrice, attributeItem: $attributeItem, attributeItemProductId: $attributeItemProductId, attributeItemId: $attributeItemId, productDescription: $productDescription, backOrder: $backOrder, productRating: $productRating, inventory: $inventory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
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
            (identical(other.attributeItemId, attributeItemId) ||
                other.attributeItemId == attributeItemId) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.backOrder, backOrder) ||
                other.backOrder == backOrder) &&
            (identical(other.productRating, productRating) ||
                other.productRating == productRating) &&
            (identical(other.inventory, inventory) ||
                other.inventory == inventory));
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
      attributeItemId,
      productDescription,
      backOrder,
      productRating,
      inventory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);
}

abstract class _Product extends Product {
  factory _Product(
      {required final ProductId productId,
      required final String name,
      required final List<String> productImages,
      required final IntegerValue skuPrice,
      required final int startingPrice,
      required final String attributeItem,
      required final String attributeItemProductId,
      required final StringValue attributeItemId,
      required final StringValue productDescription,
      required final bool backOrder,
      required final double productRating,
      required final Inventory inventory}) = _$ProductImpl;
  _Product._() : super._();

  @override
  ProductId get productId;
  @override
  String get name;
  @override
  List<String> get productImages;
  @override
  IntegerValue get skuPrice;
  @override
  int get startingPrice;
  @override
  String get attributeItem;
  @override
  String get attributeItemProductId;
  @override
  StringValue get attributeItemId;
  @override
  StringValue get productDescription;
  @override
  bool get backOrder;
  @override
  double get productRating;
  @override
  Inventory get inventory;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
