// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductDetail {
  ProductId get productId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get productImages => throw _privateConstructorUsedError;
  int get startingPrice => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  StringValue get productDescription => throw _privateConstructorUsedError;
  bool get backOrder => throw _privateConstructorUsedError;
  List<Inventory> get inventoryList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailCopyWith<ProductDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailCopyWith<$Res> {
  factory $ProductDetailCopyWith(
          ProductDetail value, $Res Function(ProductDetail) then) =
      _$ProductDetailCopyWithImpl<$Res, ProductDetail>;
  @useResult
  $Res call(
      {ProductId productId,
      String name,
      List<String> productImages,
      int startingPrice,
      Price price,
      StringValue productDescription,
      bool backOrder,
      List<Inventory> inventoryList});

  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$ProductDetailCopyWithImpl<$Res, $Val extends ProductDetail>
    implements $ProductDetailCopyWith<$Res> {
  _$ProductDetailCopyWithImpl(this._value, this._then);

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
    Object? startingPrice = null,
    Object? price = null,
    Object? productDescription = null,
    Object? backOrder = null,
    Object? inventoryList = null,
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
      startingPrice: null == startingPrice
          ? _value.startingPrice
          : startingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as StringValue,
      backOrder: null == backOrder
          ? _value.backOrder
          : backOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      inventoryList: null == inventoryList
          ? _value.inventoryList
          : inventoryList // ignore: cast_nullable_to_non_nullable
              as List<Inventory>,
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
abstract class _$$ProductDetailImplCopyWith<$Res>
    implements $ProductDetailCopyWith<$Res> {
  factory _$$ProductDetailImplCopyWith(
          _$ProductDetailImpl value, $Res Function(_$ProductDetailImpl) then) =
      __$$ProductDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductId productId,
      String name,
      List<String> productImages,
      int startingPrice,
      Price price,
      StringValue productDescription,
      bool backOrder,
      List<Inventory> inventoryList});

  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$ProductDetailImplCopyWithImpl<$Res>
    extends _$ProductDetailCopyWithImpl<$Res, _$ProductDetailImpl>
    implements _$$ProductDetailImplCopyWith<$Res> {
  __$$ProductDetailImplCopyWithImpl(
      _$ProductDetailImpl _value, $Res Function(_$ProductDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? name = null,
    Object? productImages = null,
    Object? startingPrice = null,
    Object? price = null,
    Object? productDescription = null,
    Object? backOrder = null,
    Object? inventoryList = null,
  }) {
    return _then(_$ProductDetailImpl(
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
      startingPrice: null == startingPrice
          ? _value.startingPrice
          : startingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as StringValue,
      backOrder: null == backOrder
          ? _value.backOrder
          : backOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      inventoryList: null == inventoryList
          ? _value._inventoryList
          : inventoryList // ignore: cast_nullable_to_non_nullable
              as List<Inventory>,
    ));
  }
}

/// @nodoc

class _$ProductDetailImpl extends _ProductDetail {
  _$ProductDetailImpl(
      {required this.productId,
      required this.name,
      required final List<String> productImages,
      required this.startingPrice,
      required this.price,
      required this.productDescription,
      required this.backOrder,
      required final List<Inventory> inventoryList})
      : _productImages = productImages,
        _inventoryList = inventoryList,
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
  final int startingPrice;
  @override
  final Price price;
  @override
  final StringValue productDescription;
  @override
  final bool backOrder;
  final List<Inventory> _inventoryList;
  @override
  List<Inventory> get inventoryList {
    if (_inventoryList is EqualUnmodifiableListView) return _inventoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inventoryList);
  }

  @override
  String toString() {
    return 'ProductDetail(productId: $productId, name: $name, productImages: $productImages, startingPrice: $startingPrice, price: $price, productDescription: $productDescription, backOrder: $backOrder, inventoryList: $inventoryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._productImages, _productImages) &&
            (identical(other.startingPrice, startingPrice) ||
                other.startingPrice == startingPrice) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.backOrder, backOrder) ||
                other.backOrder == backOrder) &&
            const DeepCollectionEquality()
                .equals(other._inventoryList, _inventoryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      productId,
      name,
      const DeepCollectionEquality().hash(_productImages),
      startingPrice,
      price,
      productDescription,
      backOrder,
      const DeepCollectionEquality().hash(_inventoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailImplCopyWith<_$ProductDetailImpl> get copyWith =>
      __$$ProductDetailImplCopyWithImpl<_$ProductDetailImpl>(this, _$identity);
}

abstract class _ProductDetail extends ProductDetail {
  factory _ProductDetail(
      {required final ProductId productId,
      required final String name,
      required final List<String> productImages,
      required final int startingPrice,
      required final Price price,
      required final StringValue productDescription,
      required final bool backOrder,
      required final List<Inventory> inventoryList}) = _$ProductDetailImpl;
  _ProductDetail._() : super._();

  @override
  ProductId get productId;
  @override
  String get name;
  @override
  List<String> get productImages;
  @override
  int get startingPrice;
  @override
  Price get price;
  @override
  StringValue get productDescription;
  @override
  bool get backOrder;
  @override
  List<Inventory> get inventoryList;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailImplCopyWith<_$ProductDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductAttribute {
  StringValue get attributeItemId => throw _privateConstructorUsedError;
  StringValue get attributeItemProductId => throw _privateConstructorUsedError;
  StringValue get attributeItemValue => throw _privateConstructorUsedError;
  StringValue get attributeItemName => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  AttributeQuantity get quantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductAttributeCopyWith<ProductAttribute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAttributeCopyWith<$Res> {
  factory $ProductAttributeCopyWith(
          ProductAttribute value, $Res Function(ProductAttribute) then) =
      _$ProductAttributeCopyWithImpl<$Res, ProductAttribute>;
  @useResult
  $Res call(
      {StringValue attributeItemId,
      StringValue attributeItemProductId,
      StringValue attributeItemValue,
      StringValue attributeItemName,
      String price,
      AttributeQuantity quantity});
}

/// @nodoc
class _$ProductAttributeCopyWithImpl<$Res, $Val extends ProductAttribute>
    implements $ProductAttributeCopyWith<$Res> {
  _$ProductAttributeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeItemId = null,
    Object? attributeItemProductId = null,
    Object? attributeItemValue = null,
    Object? attributeItemName = null,
    Object? price = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      attributeItemProductId: null == attributeItemProductId
          ? _value.attributeItemProductId
          : attributeItemProductId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      attributeItemValue: null == attributeItemValue
          ? _value.attributeItemValue
          : attributeItemValue // ignore: cast_nullable_to_non_nullable
              as StringValue,
      attributeItemName: null == attributeItemName
          ? _value.attributeItemName
          : attributeItemName // ignore: cast_nullable_to_non_nullable
              as StringValue,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as AttributeQuantity,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductAttributeImplCopyWith<$Res>
    implements $ProductAttributeCopyWith<$Res> {
  factory _$$ProductAttributeImplCopyWith(_$ProductAttributeImpl value,
          $Res Function(_$ProductAttributeImpl) then) =
      __$$ProductAttributeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringValue attributeItemId,
      StringValue attributeItemProductId,
      StringValue attributeItemValue,
      StringValue attributeItemName,
      String price,
      AttributeQuantity quantity});
}

/// @nodoc
class __$$ProductAttributeImplCopyWithImpl<$Res>
    extends _$ProductAttributeCopyWithImpl<$Res, _$ProductAttributeImpl>
    implements _$$ProductAttributeImplCopyWith<$Res> {
  __$$ProductAttributeImplCopyWithImpl(_$ProductAttributeImpl _value,
      $Res Function(_$ProductAttributeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeItemId = null,
    Object? attributeItemProductId = null,
    Object? attributeItemValue = null,
    Object? attributeItemName = null,
    Object? price = null,
    Object? quantity = null,
  }) {
    return _then(_$ProductAttributeImpl(
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      attributeItemProductId: null == attributeItemProductId
          ? _value.attributeItemProductId
          : attributeItemProductId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      attributeItemValue: null == attributeItemValue
          ? _value.attributeItemValue
          : attributeItemValue // ignore: cast_nullable_to_non_nullable
              as StringValue,
      attributeItemName: null == attributeItemName
          ? _value.attributeItemName
          : attributeItemName // ignore: cast_nullable_to_non_nullable
              as StringValue,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as AttributeQuantity,
    ));
  }
}

/// @nodoc

class _$ProductAttributeImpl implements _ProductAttribute {
  const _$ProductAttributeImpl(
      {required this.attributeItemId,
      required this.attributeItemProductId,
      required this.attributeItemValue,
      required this.attributeItemName,
      required this.price,
      required this.quantity});

  @override
  final StringValue attributeItemId;
  @override
  final StringValue attributeItemProductId;
  @override
  final StringValue attributeItemValue;
  @override
  final StringValue attributeItemName;
  @override
  final String price;
  @override
  final AttributeQuantity quantity;

  @override
  String toString() {
    return 'ProductAttribute(attributeItemId: $attributeItemId, attributeItemProductId: $attributeItemProductId, attributeItemValue: $attributeItemValue, attributeItemName: $attributeItemName, price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductAttributeImpl &&
            (identical(other.attributeItemId, attributeItemId) ||
                other.attributeItemId == attributeItemId) &&
            (identical(other.attributeItemProductId, attributeItemProductId) ||
                other.attributeItemProductId == attributeItemProductId) &&
            (identical(other.attributeItemValue, attributeItemValue) ||
                other.attributeItemValue == attributeItemValue) &&
            (identical(other.attributeItemName, attributeItemName) ||
                other.attributeItemName == attributeItemName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      attributeItemId,
      attributeItemProductId,
      attributeItemValue,
      attributeItemName,
      price,
      quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductAttributeImplCopyWith<_$ProductAttributeImpl> get copyWith =>
      __$$ProductAttributeImplCopyWithImpl<_$ProductAttributeImpl>(
          this, _$identity);
}

abstract class _ProductAttribute implements ProductAttribute {
  const factory _ProductAttribute(
      {required final StringValue attributeItemId,
      required final StringValue attributeItemProductId,
      required final StringValue attributeItemValue,
      required final StringValue attributeItemName,
      required final String price,
      required final AttributeQuantity quantity}) = _$ProductAttributeImpl;

  @override
  StringValue get attributeItemId;
  @override
  StringValue get attributeItemProductId;
  @override
  StringValue get attributeItemValue;
  @override
  StringValue get attributeItemName;
  @override
  String get price;
  @override
  AttributeQuantity get quantity;
  @override
  @JsonKey(ignore: true)
  _$$ProductAttributeImplCopyWith<_$ProductAttributeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
