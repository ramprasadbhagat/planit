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
  String get price => throw _privateConstructorUsedError;
  @HiveField(8)
  int get quantity => throw _privateConstructorUsedError;
  @HiveField(9)
  String get attributeItemId => throw _privateConstructorUsedError;
  @HiveField(10, defaultValue: false)
  bool get backOrder => throw _privateConstructorUsedError;
  @HiveField(11)
  Inventory get inventory => throw _privateConstructorUsedError;

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
      @HiveField(7) String price,
      @HiveField(8) int quantity,
      @HiveField(9) String attributeItemId,
      @HiveField(10, defaultValue: false) bool backOrder,
      @HiveField(11) Inventory inventory});

  $InventoryCopyWith<$Res> get inventory;
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
    Object? quantity = null,
    Object? attributeItemId = null,
    Object? backOrder = null,
    Object? inventory = null,
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
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as String,
      backOrder: null == backOrder
          ? _value.backOrder
          : backOrder // ignore: cast_nullable_to_non_nullable
              as bool,
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
      @HiveField(7) String price,
      @HiveField(8) int quantity,
      @HiveField(9) String attributeItemId,
      @HiveField(10, defaultValue: false) bool backOrder,
      @HiveField(11) Inventory inventory});

  @override
  $InventoryCopyWith<$Res> get inventory;
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
    Object? quantity = null,
    Object? attributeItemId = null,
    Object? backOrder = null,
    Object? inventory = null,
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
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as String,
      backOrder: null == backOrder
          ? _value.backOrder
          : backOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      inventory: null == inventory
          ? _value.inventory
          : inventory // ignore: cast_nullable_to_non_nullable
              as Inventory,
    ));
  }
}

/// @nodoc

@HiveType(
    typeId: HiveConstants.cartTypeId, adapterName: HiveConstants.cartAdapter)
class _$CartProductLocalImpl extends _CartProductLocal {
  _$CartProductLocalImpl(
      {@HiveField(0) required this.productId,
      @HiveField(1) required this.name,
      @HiveField(2) required final List<String> productImages,
      @HiveField(3) required this.skuPrice,
      @HiveField(4) required this.startingPrice,
      @HiveField(5) required this.attributeItem,
      @HiveField(6) required this.attributeItemProductId,
      @HiveField(7) required this.price,
      @HiveField(8) required this.quantity,
      @HiveField(9) required this.attributeItemId,
      @HiveField(10, defaultValue: false) required this.backOrder,
      @HiveField(11) required this.inventory})
      : _productImages = productImages,
        super._();

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
  final String price;
  @override
  @HiveField(8)
  final int quantity;
  @override
  @HiveField(9)
  final String attributeItemId;
  @override
  @HiveField(10, defaultValue: false)
  final bool backOrder;
  @override
  @HiveField(11)
  final Inventory inventory;

  @override
  String toString() {
    return 'CartProductLocal(productId: $productId, name: $name, productImages: $productImages, skuPrice: $skuPrice, startingPrice: $startingPrice, attributeItem: $attributeItem, attributeItemProductId: $attributeItemProductId, price: $price, quantity: $quantity, attributeItemId: $attributeItemId, backOrder: $backOrder, inventory: $inventory)';
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
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.attributeItemId, attributeItemId) ||
                other.attributeItemId == attributeItemId) &&
            (identical(other.backOrder, backOrder) ||
                other.backOrder == backOrder) &&
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
      price,
      quantity,
      attributeItemId,
      backOrder,
      inventory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductLocalImplCopyWith<_$CartProductLocalImpl> get copyWith =>
      __$$CartProductLocalImplCopyWithImpl<_$CartProductLocalImpl>(
          this, _$identity);
}

abstract class _CartProductLocal extends CartProductLocal {
  factory _CartProductLocal(
          {@HiveField(0) required final String productId,
          @HiveField(1) required final String name,
          @HiveField(2) required final List<String> productImages,
          @HiveField(3) required final double skuPrice,
          @HiveField(4) required final int startingPrice,
          @HiveField(5) required final String attributeItem,
          @HiveField(6) required final String attributeItemProductId,
          @HiveField(7) required final String price,
          @HiveField(8) required final int quantity,
          @HiveField(9) required final String attributeItemId,
          @HiveField(10, defaultValue: false) required final bool backOrder,
          @HiveField(11) required final Inventory inventory}) =
      _$CartProductLocalImpl;
  _CartProductLocal._() : super._();

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
  String get price;
  @override
  @HiveField(8)
  int get quantity;
  @override
  @HiveField(9)
  String get attributeItemId;
  @override
  @HiveField(10, defaultValue: false)
  bool get backOrder;
  @override
  @HiveField(11)
  Inventory get inventory;
  @override
  @JsonKey(ignore: true)
  _$$CartProductLocalImplCopyWith<_$CartProductLocalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
