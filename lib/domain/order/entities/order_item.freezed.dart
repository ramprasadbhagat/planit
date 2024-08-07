// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderItem {
  StringValue get id => throw _privateConstructorUsedError;
  StringValue get orderId => throw _privateConstructorUsedError;
  StringValue get attributeItemId => throw _privateConstructorUsedError;
  ProductId get productId => throw _privateConstructorUsedError;
  IntegerValue get quantity => throw _privateConstructorUsedError;
  IntegerValue get unitPrice => throw _privateConstructorUsedError;
  IntegerValue get subTotal => throw _privateConstructorUsedError;
  OrderItemProduct get product => throw _privateConstructorUsedError;
  List<ProductImage> get productImage => throw _privateConstructorUsedError;
  IntegerValue get reOrderQuantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderItemCopyWith<OrderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemCopyWith<$Res> {
  factory $OrderItemCopyWith(OrderItem value, $Res Function(OrderItem) then) =
      _$OrderItemCopyWithImpl<$Res, OrderItem>;
  @useResult
  $Res call(
      {StringValue id,
      StringValue orderId,
      StringValue attributeItemId,
      ProductId productId,
      IntegerValue quantity,
      IntegerValue unitPrice,
      IntegerValue subTotal,
      OrderItemProduct product,
      List<ProductImage> productImage,
      IntegerValue reOrderQuantity});

  $OrderItemProductCopyWith<$Res> get product;
}

/// @nodoc
class _$OrderItemCopyWithImpl<$Res, $Val extends OrderItem>
    implements $OrderItemCopyWith<$Res> {
  _$OrderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? attributeItemId = null,
    Object? productId = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? subTotal = null,
    Object? product = null,
    Object? productImage = null,
    Object? reOrderQuantity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringValue,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as ProductId,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as OrderItemProduct,
      productImage: null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as List<ProductImage>,
      reOrderQuantity: null == reOrderQuantity
          ? _value.reOrderQuantity
          : reOrderQuantity // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderItemProductCopyWith<$Res> get product {
    return $OrderItemProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OrderItemImplCopyWith<$Res>
    implements $OrderItemCopyWith<$Res> {
  factory _$$OrderItemImplCopyWith(
          _$OrderItemImpl value, $Res Function(_$OrderItemImpl) then) =
      __$$OrderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringValue id,
      StringValue orderId,
      StringValue attributeItemId,
      ProductId productId,
      IntegerValue quantity,
      IntegerValue unitPrice,
      IntegerValue subTotal,
      OrderItemProduct product,
      List<ProductImage> productImage,
      IntegerValue reOrderQuantity});

  @override
  $OrderItemProductCopyWith<$Res> get product;
}

/// @nodoc
class __$$OrderItemImplCopyWithImpl<$Res>
    extends _$OrderItemCopyWithImpl<$Res, _$OrderItemImpl>
    implements _$$OrderItemImplCopyWith<$Res> {
  __$$OrderItemImplCopyWithImpl(
      _$OrderItemImpl _value, $Res Function(_$OrderItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? attributeItemId = null,
    Object? productId = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? subTotal = null,
    Object? product = null,
    Object? productImage = null,
    Object? reOrderQuantity = null,
  }) {
    return _then(_$OrderItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringValue,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as ProductId,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as OrderItemProduct,
      productImage: null == productImage
          ? _value._productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as List<ProductImage>,
      reOrderQuantity: null == reOrderQuantity
          ? _value.reOrderQuantity
          : reOrderQuantity // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
    ));
  }
}

/// @nodoc

class _$OrderItemImpl implements _OrderItem {
  const _$OrderItemImpl(
      {required this.id,
      required this.orderId,
      required this.attributeItemId,
      required this.productId,
      required this.quantity,
      required this.unitPrice,
      required this.subTotal,
      required this.product,
      required final List<ProductImage> productImage,
      required this.reOrderQuantity})
      : _productImage = productImage;

  @override
  final StringValue id;
  @override
  final StringValue orderId;
  @override
  final StringValue attributeItemId;
  @override
  final ProductId productId;
  @override
  final IntegerValue quantity;
  @override
  final IntegerValue unitPrice;
  @override
  final IntegerValue subTotal;
  @override
  final OrderItemProduct product;
  final List<ProductImage> _productImage;
  @override
  List<ProductImage> get productImage {
    if (_productImage is EqualUnmodifiableListView) return _productImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productImage);
  }

  @override
  final IntegerValue reOrderQuantity;

  @override
  String toString() {
    return 'OrderItem(id: $id, orderId: $orderId, attributeItemId: $attributeItemId, productId: $productId, quantity: $quantity, unitPrice: $unitPrice, subTotal: $subTotal, product: $product, productImage: $productImage, reOrderQuantity: $reOrderQuantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.attributeItemId, attributeItemId) ||
                other.attributeItemId == attributeItemId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality()
                .equals(other._productImage, _productImage) &&
            (identical(other.reOrderQuantity, reOrderQuantity) ||
                other.reOrderQuantity == reOrderQuantity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderId,
      attributeItemId,
      productId,
      quantity,
      unitPrice,
      subTotal,
      product,
      const DeepCollectionEquality().hash(_productImage),
      reOrderQuantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      __$$OrderItemImplCopyWithImpl<_$OrderItemImpl>(this, _$identity);
}

abstract class _OrderItem implements OrderItem {
  const factory _OrderItem(
      {required final StringValue id,
      required final StringValue orderId,
      required final StringValue attributeItemId,
      required final ProductId productId,
      required final IntegerValue quantity,
      required final IntegerValue unitPrice,
      required final IntegerValue subTotal,
      required final OrderItemProduct product,
      required final List<ProductImage> productImage,
      required final IntegerValue reOrderQuantity}) = _$OrderItemImpl;

  @override
  StringValue get id;
  @override
  StringValue get orderId;
  @override
  StringValue get attributeItemId;
  @override
  ProductId get productId;
  @override
  IntegerValue get quantity;
  @override
  IntegerValue get unitPrice;
  @override
  IntegerValue get subTotal;
  @override
  OrderItemProduct get product;
  @override
  List<ProductImage> get productImage;
  @override
  IntegerValue get reOrderQuantity;
  @override
  @JsonKey(ignore: true)
  _$$OrderItemImplCopyWith<_$OrderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderItemProduct {
  StringValue get id => throw _privateConstructorUsedError;
  StringValue get productName => throw _privateConstructorUsedError;
  StringValue get productDescription => throw _privateConstructorUsedError;
  DateTime get expiryDate => throw _privateConstructorUsedError;
  IntegerValue get productMRP => throw _privateConstructorUsedError;
  IntegerValue get price => throw _privateConstructorUsedError;
  IntegerValue get productDiscount => throw _privateConstructorUsedError;
  DateTime get productDiscountDate => throw _privateConstructorUsedError;
  StringValue get sku => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderItemProductCopyWith<OrderItemProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemProductCopyWith<$Res> {
  factory $OrderItemProductCopyWith(
          OrderItemProduct value, $Res Function(OrderItemProduct) then) =
      _$OrderItemProductCopyWithImpl<$Res, OrderItemProduct>;
  @useResult
  $Res call(
      {StringValue id,
      StringValue productName,
      StringValue productDescription,
      DateTime expiryDate,
      IntegerValue productMRP,
      IntegerValue price,
      IntegerValue productDiscount,
      DateTime productDiscountDate,
      StringValue sku,
      double rating});
}

/// @nodoc
class _$OrderItemProductCopyWithImpl<$Res, $Val extends OrderItemProduct>
    implements $OrderItemProductCopyWith<$Res> {
  _$OrderItemProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? expiryDate = null,
    Object? productMRP = null,
    Object? price = null,
    Object? productDiscount = null,
    Object? productDiscountDate = null,
    Object? sku = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringValue,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as StringValue,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as StringValue,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      productMRP: null == productMRP
          ? _value.productMRP
          : productMRP // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      productDiscount: null == productDiscount
          ? _value.productDiscount
          : productDiscount // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      productDiscountDate: null == productDiscountDate
          ? _value.productDiscountDate
          : productDiscountDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as StringValue,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderItemProductImplCopyWith<$Res>
    implements $OrderItemProductCopyWith<$Res> {
  factory _$$OrderItemProductImplCopyWith(_$OrderItemProductImpl value,
          $Res Function(_$OrderItemProductImpl) then) =
      __$$OrderItemProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringValue id,
      StringValue productName,
      StringValue productDescription,
      DateTime expiryDate,
      IntegerValue productMRP,
      IntegerValue price,
      IntegerValue productDiscount,
      DateTime productDiscountDate,
      StringValue sku,
      double rating});
}

/// @nodoc
class __$$OrderItemProductImplCopyWithImpl<$Res>
    extends _$OrderItemProductCopyWithImpl<$Res, _$OrderItemProductImpl>
    implements _$$OrderItemProductImplCopyWith<$Res> {
  __$$OrderItemProductImplCopyWithImpl(_$OrderItemProductImpl _value,
      $Res Function(_$OrderItemProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? expiryDate = null,
    Object? productMRP = null,
    Object? price = null,
    Object? productDiscount = null,
    Object? productDiscountDate = null,
    Object? sku = null,
    Object? rating = null,
  }) {
    return _then(_$OrderItemProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringValue,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as StringValue,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as StringValue,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      productMRP: null == productMRP
          ? _value.productMRP
          : productMRP // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      productDiscount: null == productDiscount
          ? _value.productDiscount
          : productDiscount // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      productDiscountDate: null == productDiscountDate
          ? _value.productDiscountDate
          : productDiscountDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as StringValue,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$OrderItemProductImpl implements _OrderItemProduct {
  const _$OrderItemProductImpl(
      {required this.id,
      required this.productName,
      required this.productDescription,
      required this.expiryDate,
      required this.productMRP,
      required this.price,
      required this.productDiscount,
      required this.productDiscountDate,
      required this.sku,
      required this.rating});

  @override
  final StringValue id;
  @override
  final StringValue productName;
  @override
  final StringValue productDescription;
  @override
  final DateTime expiryDate;
  @override
  final IntegerValue productMRP;
  @override
  final IntegerValue price;
  @override
  final IntegerValue productDiscount;
  @override
  final DateTime productDiscountDate;
  @override
  final StringValue sku;
  @override
  final double rating;

  @override
  String toString() {
    return 'OrderItemProduct(id: $id, productName: $productName, productDescription: $productDescription, expiryDate: $expiryDate, productMRP: $productMRP, price: $price, productDiscount: $productDiscount, productDiscountDate: $productDiscountDate, sku: $sku, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.productMRP, productMRP) ||
                other.productMRP == productMRP) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.productDiscount, productDiscount) ||
                other.productDiscount == productDiscount) &&
            (identical(other.productDiscountDate, productDiscountDate) ||
                other.productDiscountDate == productDiscountDate) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productName,
      productDescription,
      expiryDate,
      productMRP,
      price,
      productDiscount,
      productDiscountDate,
      sku,
      rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemProductImplCopyWith<_$OrderItemProductImpl> get copyWith =>
      __$$OrderItemProductImplCopyWithImpl<_$OrderItemProductImpl>(
          this, _$identity);
}

abstract class _OrderItemProduct implements OrderItemProduct {
  const factory _OrderItemProduct(
      {required final StringValue id,
      required final StringValue productName,
      required final StringValue productDescription,
      required final DateTime expiryDate,
      required final IntegerValue productMRP,
      required final IntegerValue price,
      required final IntegerValue productDiscount,
      required final DateTime productDiscountDate,
      required final StringValue sku,
      required final double rating}) = _$OrderItemProductImpl;

  @override
  StringValue get id;
  @override
  StringValue get productName;
  @override
  StringValue get productDescription;
  @override
  DateTime get expiryDate;
  @override
  IntegerValue get productMRP;
  @override
  IntegerValue get price;
  @override
  IntegerValue get productDiscount;
  @override
  DateTime get productDiscountDate;
  @override
  StringValue get sku;
  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$OrderItemProductImplCopyWith<_$OrderItemProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
