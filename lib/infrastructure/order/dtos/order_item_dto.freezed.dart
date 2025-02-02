// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderItemDto _$OrderItemDtoFromJson(Map<String, dynamic> json) {
  return _OrderItemDto.fromJson(json);
}

/// @nodoc
mixin _$OrderItemDto {
  @JsonKey(name: '_id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'orderId', defaultValue: '')
  String get orderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'productId', defaultValue: '')
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'attributeItemId', defaultValue: '')
  String get attributeItemId => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'unitPrice', defaultValue: 0, readValue: intReadValue)
  int get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
  int get subTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'product', defaultValue: {}, readValue: productReadValue)
  Map<String, dynamic> get product => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'productImage',
      defaultValue: <String>[],
      readValue: productImageUrlFromMap)
  List<String> get productImage => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, readValue: intReadValue)
  int get reorderQuantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderItemDtoCopyWith<OrderItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemDtoCopyWith<$Res> {
  factory $OrderItemDtoCopyWith(
          OrderItemDto value, $Res Function(OrderItemDto) then) =
      _$OrderItemDtoCopyWithImpl<$Res, OrderItemDto>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id', defaultValue: '') String id,
      @JsonKey(name: 'orderId', defaultValue: '') String orderId,
      @JsonKey(name: 'productId', defaultValue: '') String productId,
      @JsonKey(name: 'attributeItemId', defaultValue: '')
      String attributeItemId,
      @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
      int quantity,
      @JsonKey(name: 'unitPrice', defaultValue: 0, readValue: intReadValue)
      int unitPrice,
      @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
      int subTotal,
      @JsonKey(name: 'product', defaultValue: {}, readValue: productReadValue)
      Map<String, dynamic> product,
      @JsonKey(
          name: 'productImage',
          defaultValue: <String>[],
          readValue: productImageUrlFromMap)
      List<String> productImage,
      @JsonKey(defaultValue: 0, readValue: intReadValue) int reorderQuantity});
}

/// @nodoc
class _$OrderItemDtoCopyWithImpl<$Res, $Val extends OrderItemDto>
    implements $OrderItemDtoCopyWith<$Res> {
  _$OrderItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? productId = null,
    Object? attributeItemId = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? subTotal = null,
    Object? product = null,
    Object? productImage = null,
    Object? reorderQuantity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as int,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      productImage: null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reorderQuantity: null == reorderQuantity
          ? _value.reorderQuantity
          : reorderQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderItemDtoImplCopyWith<$Res>
    implements $OrderItemDtoCopyWith<$Res> {
  factory _$$OrderItemDtoImplCopyWith(
          _$OrderItemDtoImpl value, $Res Function(_$OrderItemDtoImpl) then) =
      __$$OrderItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id', defaultValue: '') String id,
      @JsonKey(name: 'orderId', defaultValue: '') String orderId,
      @JsonKey(name: 'productId', defaultValue: '') String productId,
      @JsonKey(name: 'attributeItemId', defaultValue: '')
      String attributeItemId,
      @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
      int quantity,
      @JsonKey(name: 'unitPrice', defaultValue: 0, readValue: intReadValue)
      int unitPrice,
      @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
      int subTotal,
      @JsonKey(name: 'product', defaultValue: {}, readValue: productReadValue)
      Map<String, dynamic> product,
      @JsonKey(
          name: 'productImage',
          defaultValue: <String>[],
          readValue: productImageUrlFromMap)
      List<String> productImage,
      @JsonKey(defaultValue: 0, readValue: intReadValue) int reorderQuantity});
}

/// @nodoc
class __$$OrderItemDtoImplCopyWithImpl<$Res>
    extends _$OrderItemDtoCopyWithImpl<$Res, _$OrderItemDtoImpl>
    implements _$$OrderItemDtoImplCopyWith<$Res> {
  __$$OrderItemDtoImplCopyWithImpl(
      _$OrderItemDtoImpl _value, $Res Function(_$OrderItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? orderId = null,
    Object? productId = null,
    Object? attributeItemId = null,
    Object? quantity = null,
    Object? unitPrice = null,
    Object? subTotal = null,
    Object? product = null,
    Object? productImage = null,
    Object? reorderQuantity = null,
  }) {
    return _then(_$OrderItemDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: null == unitPrice
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as int,
      subTotal: null == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      productImage: null == productImage
          ? _value._productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reorderQuantity: null == reorderQuantity
          ? _value.reorderQuantity
          : reorderQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemDtoImpl extends _OrderItemDto {
  const _$OrderItemDtoImpl(
      {@JsonKey(name: '_id', defaultValue: '') required this.id,
      @JsonKey(name: 'orderId', defaultValue: '') required this.orderId,
      @JsonKey(name: 'productId', defaultValue: '') required this.productId,
      @JsonKey(name: 'attributeItemId', defaultValue: '')
      required this.attributeItemId,
      @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
      required this.quantity,
      @JsonKey(name: 'unitPrice', defaultValue: 0, readValue: intReadValue)
      required this.unitPrice,
      @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
      required this.subTotal,
      @JsonKey(name: 'product', defaultValue: {}, readValue: productReadValue)
      required final Map<String, dynamic> product,
      @JsonKey(
          name: 'productImage',
          defaultValue: <String>[],
          readValue: productImageUrlFromMap)
      required final List<String> productImage,
      @JsonKey(defaultValue: 0, readValue: intReadValue)
      required this.reorderQuantity})
      : _product = product,
        _productImage = productImage,
        super._();

  factory _$OrderItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemDtoImplFromJson(json);

  @override
  @JsonKey(name: '_id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'orderId', defaultValue: '')
  final String orderId;
  @override
  @JsonKey(name: 'productId', defaultValue: '')
  final String productId;
  @override
  @JsonKey(name: 'attributeItemId', defaultValue: '')
  final String attributeItemId;
  @override
  @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
  final int quantity;
  @override
  @JsonKey(name: 'unitPrice', defaultValue: 0, readValue: intReadValue)
  final int unitPrice;
  @override
  @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
  final int subTotal;
  final Map<String, dynamic> _product;
  @override
  @JsonKey(name: 'product', defaultValue: {}, readValue: productReadValue)
  Map<String, dynamic> get product {
    if (_product is EqualUnmodifiableMapView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_product);
  }

  final List<String> _productImage;
  @override
  @JsonKey(
      name: 'productImage',
      defaultValue: <String>[],
      readValue: productImageUrlFromMap)
  List<String> get productImage {
    if (_productImage is EqualUnmodifiableListView) return _productImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productImage);
  }

  @override
  @JsonKey(defaultValue: 0, readValue: intReadValue)
  final int reorderQuantity;

  @override
  String toString() {
    return 'OrderItemDto(id: $id, orderId: $orderId, productId: $productId, attributeItemId: $attributeItemId, quantity: $quantity, unitPrice: $unitPrice, subTotal: $subTotal, product: $product, productImage: $productImage, reorderQuantity: $reorderQuantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.attributeItemId, attributeItemId) ||
                other.attributeItemId == attributeItemId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            const DeepCollectionEquality().equals(other._product, _product) &&
            const DeepCollectionEquality()
                .equals(other._productImage, _productImage) &&
            (identical(other.reorderQuantity, reorderQuantity) ||
                other.reorderQuantity == reorderQuantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      orderId,
      productId,
      attributeItemId,
      quantity,
      unitPrice,
      subTotal,
      const DeepCollectionEquality().hash(_product),
      const DeepCollectionEquality().hash(_productImage),
      reorderQuantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemDtoImplCopyWith<_$OrderItemDtoImpl> get copyWith =>
      __$$OrderItemDtoImplCopyWithImpl<_$OrderItemDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemDtoImplToJson(
      this,
    );
  }
}

abstract class _OrderItemDto extends OrderItemDto {
  const factory _OrderItemDto(
      {@JsonKey(name: '_id', defaultValue: '') required final String id,
      @JsonKey(name: 'orderId', defaultValue: '') required final String orderId,
      @JsonKey(name: 'productId', defaultValue: '')
      required final String productId,
      @JsonKey(name: 'attributeItemId', defaultValue: '')
      required final String attributeItemId,
      @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
      required final int quantity,
      @JsonKey(name: 'unitPrice', defaultValue: 0, readValue: intReadValue)
      required final int unitPrice,
      @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
      required final int subTotal,
      @JsonKey(name: 'product', defaultValue: {}, readValue: productReadValue)
      required final Map<String, dynamic> product,
      @JsonKey(
          name: 'productImage',
          defaultValue: <String>[],
          readValue: productImageUrlFromMap)
      required final List<String> productImage,
      @JsonKey(defaultValue: 0, readValue: intReadValue)
      required final int reorderQuantity}) = _$OrderItemDtoImpl;
  const _OrderItemDto._() : super._();

  factory _OrderItemDto.fromJson(Map<String, dynamic> json) =
      _$OrderItemDtoImpl.fromJson;

  @override
  @JsonKey(name: '_id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'orderId', defaultValue: '')
  String get orderId;
  @override
  @JsonKey(name: 'productId', defaultValue: '')
  String get productId;
  @override
  @JsonKey(name: 'attributeItemId', defaultValue: '')
  String get attributeItemId;
  @override
  @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
  int get quantity;
  @override
  @JsonKey(name: 'unitPrice', defaultValue: 0, readValue: intReadValue)
  int get unitPrice;
  @override
  @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
  int get subTotal;
  @override
  @JsonKey(name: 'product', defaultValue: {}, readValue: productReadValue)
  Map<String, dynamic> get product;
  @override
  @JsonKey(
      name: 'productImage',
      defaultValue: <String>[],
      readValue: productImageUrlFromMap)
  List<String> get productImage;
  @override
  @JsonKey(defaultValue: 0, readValue: intReadValue)
  int get reorderQuantity;
  @override
  @JsonKey(ignore: true)
  _$$OrderItemDtoImplCopyWith<_$OrderItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OrderItemProductDto _$OrderItemProductDtoFromJson(Map<String, dynamic> json) {
  return _OrderItemProductDto.fromJson(json);
}

/// @nodoc
mixin _$OrderItemProductDto {
  @JsonKey(name: '_id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'productName', defaultValue: '')
  String get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'productDescription', defaultValue: '')
  String get productDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'expiryDate', defaultValue: '')
  String get expiryDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'productMRP', defaultValue: 0, readValue: intReadValue)
  int get productMRP => throw _privateConstructorUsedError;
  @JsonKey(name: 'productDiscount', defaultValue: 0, readValue: intReadValue)
  int get productDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'productDiscountDate', defaultValue: '')
  String get productDiscountDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'sku', defaultValue: '')
  String get sku => throw _privateConstructorUsedError;
  @JsonKey(name: 'productRating', defaultValue: 1, readValue: ratingReadValue)
  double get productRating => throw _privateConstructorUsedError;
  @JsonKey(name: 'price', defaultValue: '0')
  String get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderItemProductDtoCopyWith<OrderItemProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderItemProductDtoCopyWith<$Res> {
  factory $OrderItemProductDtoCopyWith(
          OrderItemProductDto value, $Res Function(OrderItemProductDto) then) =
      _$OrderItemProductDtoCopyWithImpl<$Res, OrderItemProductDto>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id', defaultValue: '') String id,
      @JsonKey(name: 'productName', defaultValue: '') String productName,
      @JsonKey(name: 'productDescription', defaultValue: '')
      String productDescription,
      @JsonKey(name: 'expiryDate', defaultValue: '') String expiryDate,
      @JsonKey(name: 'productMRP', defaultValue: 0, readValue: intReadValue)
      int productMRP,
      @JsonKey(
          name: 'productDiscount', defaultValue: 0, readValue: intReadValue)
      int productDiscount,
      @JsonKey(name: 'productDiscountDate', defaultValue: '')
      String productDiscountDate,
      @JsonKey(name: 'sku', defaultValue: '') String sku,
      @JsonKey(
          name: 'productRating', defaultValue: 1, readValue: ratingReadValue)
      double productRating,
      @JsonKey(name: 'price', defaultValue: '0') String price});
}

/// @nodoc
class _$OrderItemProductDtoCopyWithImpl<$Res, $Val extends OrderItemProductDto>
    implements $OrderItemProductDtoCopyWith<$Res> {
  _$OrderItemProductDtoCopyWithImpl(this._value, this._then);

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
    Object? productDiscount = null,
    Object? productDiscountDate = null,
    Object? sku = null,
    Object? productRating = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      productMRP: null == productMRP
          ? _value.productMRP
          : productMRP // ignore: cast_nullable_to_non_nullable
              as int,
      productDiscount: null == productDiscount
          ? _value.productDiscount
          : productDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      productDiscountDate: null == productDiscountDate
          ? _value.productDiscountDate
          : productDiscountDate // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      productRating: null == productRating
          ? _value.productRating
          : productRating // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderItemProductDtoImplCopyWith<$Res>
    implements $OrderItemProductDtoCopyWith<$Res> {
  factory _$$OrderItemProductDtoImplCopyWith(_$OrderItemProductDtoImpl value,
          $Res Function(_$OrderItemProductDtoImpl) then) =
      __$$OrderItemProductDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id', defaultValue: '') String id,
      @JsonKey(name: 'productName', defaultValue: '') String productName,
      @JsonKey(name: 'productDescription', defaultValue: '')
      String productDescription,
      @JsonKey(name: 'expiryDate', defaultValue: '') String expiryDate,
      @JsonKey(name: 'productMRP', defaultValue: 0, readValue: intReadValue)
      int productMRP,
      @JsonKey(
          name: 'productDiscount', defaultValue: 0, readValue: intReadValue)
      int productDiscount,
      @JsonKey(name: 'productDiscountDate', defaultValue: '')
      String productDiscountDate,
      @JsonKey(name: 'sku', defaultValue: '') String sku,
      @JsonKey(
          name: 'productRating', defaultValue: 1, readValue: ratingReadValue)
      double productRating,
      @JsonKey(name: 'price', defaultValue: '0') String price});
}

/// @nodoc
class __$$OrderItemProductDtoImplCopyWithImpl<$Res>
    extends _$OrderItemProductDtoCopyWithImpl<$Res, _$OrderItemProductDtoImpl>
    implements _$$OrderItemProductDtoImplCopyWith<$Res> {
  __$$OrderItemProductDtoImplCopyWithImpl(_$OrderItemProductDtoImpl _value,
      $Res Function(_$OrderItemProductDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? expiryDate = null,
    Object? productMRP = null,
    Object? productDiscount = null,
    Object? productDiscountDate = null,
    Object? sku = null,
    Object? productRating = null,
    Object? price = null,
  }) {
    return _then(_$OrderItemProductDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      expiryDate: null == expiryDate
          ? _value.expiryDate
          : expiryDate // ignore: cast_nullable_to_non_nullable
              as String,
      productMRP: null == productMRP
          ? _value.productMRP
          : productMRP // ignore: cast_nullable_to_non_nullable
              as int,
      productDiscount: null == productDiscount
          ? _value.productDiscount
          : productDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      productDiscountDate: null == productDiscountDate
          ? _value.productDiscountDate
          : productDiscountDate // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      productRating: null == productRating
          ? _value.productRating
          : productRating // ignore: cast_nullable_to_non_nullable
              as double,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemProductDtoImpl extends _OrderItemProductDto {
  const _$OrderItemProductDtoImpl(
      {@JsonKey(name: '_id', defaultValue: '') required this.id,
      @JsonKey(name: 'productName', defaultValue: '') required this.productName,
      @JsonKey(name: 'productDescription', defaultValue: '')
      required this.productDescription,
      @JsonKey(name: 'expiryDate', defaultValue: '') required this.expiryDate,
      @JsonKey(name: 'productMRP', defaultValue: 0, readValue: intReadValue)
      required this.productMRP,
      @JsonKey(
          name: 'productDiscount', defaultValue: 0, readValue: intReadValue)
      required this.productDiscount,
      @JsonKey(name: 'productDiscountDate', defaultValue: '')
      required this.productDiscountDate,
      @JsonKey(name: 'sku', defaultValue: '') required this.sku,
      @JsonKey(
          name: 'productRating', defaultValue: 1, readValue: ratingReadValue)
      required this.productRating,
      @JsonKey(name: 'price', defaultValue: '0') required this.price})
      : super._();

  factory _$OrderItemProductDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemProductDtoImplFromJson(json);

  @override
  @JsonKey(name: '_id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'productName', defaultValue: '')
  final String productName;
  @override
  @JsonKey(name: 'productDescription', defaultValue: '')
  final String productDescription;
  @override
  @JsonKey(name: 'expiryDate', defaultValue: '')
  final String expiryDate;
  @override
  @JsonKey(name: 'productMRP', defaultValue: 0, readValue: intReadValue)
  final int productMRP;
  @override
  @JsonKey(name: 'productDiscount', defaultValue: 0, readValue: intReadValue)
  final int productDiscount;
  @override
  @JsonKey(name: 'productDiscountDate', defaultValue: '')
  final String productDiscountDate;
  @override
  @JsonKey(name: 'sku', defaultValue: '')
  final String sku;
  @override
  @JsonKey(name: 'productRating', defaultValue: 1, readValue: ratingReadValue)
  final double productRating;
  @override
  @JsonKey(name: 'price', defaultValue: '0')
  final String price;

  @override
  String toString() {
    return 'OrderItemProductDto(id: $id, productName: $productName, productDescription: $productDescription, expiryDate: $expiryDate, productMRP: $productMRP, productDiscount: $productDiscount, productDiscountDate: $productDiscountDate, sku: $sku, productRating: $productRating, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemProductDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.productMRP, productMRP) ||
                other.productMRP == productMRP) &&
            (identical(other.productDiscount, productDiscount) ||
                other.productDiscount == productDiscount) &&
            (identical(other.productDiscountDate, productDiscountDate) ||
                other.productDiscountDate == productDiscountDate) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.productRating, productRating) ||
                other.productRating == productRating) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productName,
      productDescription,
      expiryDate,
      productMRP,
      productDiscount,
      productDiscountDate,
      sku,
      productRating,
      price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderItemProductDtoImplCopyWith<_$OrderItemProductDtoImpl> get copyWith =>
      __$$OrderItemProductDtoImplCopyWithImpl<_$OrderItemProductDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderItemProductDtoImplToJson(
      this,
    );
  }
}

abstract class _OrderItemProductDto extends OrderItemProductDto {
  const factory _OrderItemProductDto(
      {@JsonKey(name: '_id', defaultValue: '') required final String id,
      @JsonKey(name: 'productName', defaultValue: '')
      required final String productName,
      @JsonKey(name: 'productDescription', defaultValue: '')
      required final String productDescription,
      @JsonKey(name: 'expiryDate', defaultValue: '')
      required final String expiryDate,
      @JsonKey(name: 'productMRP', defaultValue: 0, readValue: intReadValue)
      required final int productMRP,
      @JsonKey(
          name: 'productDiscount', defaultValue: 0, readValue: intReadValue)
      required final int productDiscount,
      @JsonKey(name: 'productDiscountDate', defaultValue: '')
      required final String productDiscountDate,
      @JsonKey(name: 'sku', defaultValue: '') required final String sku,
      @JsonKey(
          name: 'productRating', defaultValue: 1, readValue: ratingReadValue)
      required final double productRating,
      @JsonKey(name: 'price', defaultValue: '0')
      required final String price}) = _$OrderItemProductDtoImpl;
  const _OrderItemProductDto._() : super._();

  factory _OrderItemProductDto.fromJson(Map<String, dynamic> json) =
      _$OrderItemProductDtoImpl.fromJson;

  @override
  @JsonKey(name: '_id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'productName', defaultValue: '')
  String get productName;
  @override
  @JsonKey(name: 'productDescription', defaultValue: '')
  String get productDescription;
  @override
  @JsonKey(name: 'expiryDate', defaultValue: '')
  String get expiryDate;
  @override
  @JsonKey(name: 'productMRP', defaultValue: 0, readValue: intReadValue)
  int get productMRP;
  @override
  @JsonKey(name: 'productDiscount', defaultValue: 0, readValue: intReadValue)
  int get productDiscount;
  @override
  @JsonKey(name: 'productDiscountDate', defaultValue: '')
  String get productDiscountDate;
  @override
  @JsonKey(name: 'sku', defaultValue: '')
  String get sku;
  @override
  @JsonKey(name: 'productRating', defaultValue: 1, readValue: ratingReadValue)
  double get productRating;
  @override
  @JsonKey(name: 'price', defaultValue: '0')
  String get price;
  @override
  @JsonKey(ignore: true)
  _$$OrderItemProductDtoImplCopyWith<_$OrderItemProductDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
