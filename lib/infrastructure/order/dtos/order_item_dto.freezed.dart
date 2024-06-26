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
  @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'unitPrice', defaultValue: 0, readValue: intReadValue)
  int get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
  int get subTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'product', defaultValue: {})
  Map<String, dynamic> get product => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
      int quantity,
      @JsonKey(name: 'unitPrice', defaultValue: 0, readValue: intReadValue)
      int unitPrice,
      @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
      int subTotal,
      @JsonKey(name: 'product', defaultValue: {})
      Map<String, dynamic> product});
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
    Object? quantity = null,
    Object? unitPrice = null,
    Object? subTotal = null,
    Object? product = null,
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
      @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
      int quantity,
      @JsonKey(name: 'unitPrice', defaultValue: 0, readValue: intReadValue)
      int unitPrice,
      @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
      int subTotal,
      @JsonKey(name: 'product', defaultValue: {})
      Map<String, dynamic> product});
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
    Object? quantity = null,
    Object? unitPrice = null,
    Object? subTotal = null,
    Object? product = null,
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
      @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
      required this.quantity,
      @JsonKey(name: 'unitPrice', defaultValue: 0, readValue: intReadValue)
      required this.unitPrice,
      @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
      required this.subTotal,
      @JsonKey(name: 'product', defaultValue: {})
      required final Map<String, dynamic> product})
      : _product = product,
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
  @JsonKey(name: 'product', defaultValue: {})
  Map<String, dynamic> get product {
    if (_product is EqualUnmodifiableMapView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_product);
  }

  @override
  String toString() {
    return 'OrderItemDto(id: $id, orderId: $orderId, productId: $productId, quantity: $quantity, unitPrice: $unitPrice, subTotal: $subTotal, product: $product)';
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
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.unitPrice, unitPrice) ||
                other.unitPrice == unitPrice) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            const DeepCollectionEquality().equals(other._product, _product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, orderId, productId, quantity,
      unitPrice, subTotal, const DeepCollectionEquality().hash(_product));

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
      @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
      required final int quantity,
      @JsonKey(name: 'unitPrice', defaultValue: 0, readValue: intReadValue)
      required final int unitPrice,
      @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
      required final int subTotal,
      @JsonKey(name: 'product', defaultValue: {})
      required final Map<String, dynamic> product}) = _$OrderItemDtoImpl;
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
  @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
  int get quantity;
  @override
  @JsonKey(name: 'unitPrice', defaultValue: 0, readValue: intReadValue)
  int get unitPrice;
  @override
  @JsonKey(name: 'subTotal', defaultValue: 0, readValue: intReadValue)
  int get subTotal;
  @override
  @JsonKey(name: 'product', defaultValue: {})
  Map<String, dynamic> get product;
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
  @JsonKey(name: 'categoryId', defaultValue: '')
  String get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'subcategoryId', defaultValue: '')
  String get subcategoryId => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'categoryId', defaultValue: '') String categoryId,
      @JsonKey(name: 'subcategoryId', defaultValue: '') String subcategoryId,
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
      String productDiscountDate});
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
    Object? categoryId = null,
    Object? subcategoryId = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? expiryDate = null,
    Object? productMRP = null,
    Object? productDiscount = null,
    Object? productDiscountDate = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      subcategoryId: null == subcategoryId
          ? _value.subcategoryId
          : subcategoryId // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'categoryId', defaultValue: '') String categoryId,
      @JsonKey(name: 'subcategoryId', defaultValue: '') String subcategoryId,
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
      String productDiscountDate});
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
    Object? categoryId = null,
    Object? subcategoryId = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? expiryDate = null,
    Object? productMRP = null,
    Object? productDiscount = null,
    Object? productDiscountDate = null,
  }) {
    return _then(_$OrderItemProductDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as String,
      subcategoryId: null == subcategoryId
          ? _value.subcategoryId
          : subcategoryId // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderItemProductDtoImpl extends _OrderItemProductDto {
  const _$OrderItemProductDtoImpl(
      {@JsonKey(name: '_id', defaultValue: '') required this.id,
      @JsonKey(name: 'categoryId', defaultValue: '') required this.categoryId,
      @JsonKey(name: 'subcategoryId', defaultValue: '')
      required this.subcategoryId,
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
      required this.productDiscountDate})
      : super._();

  factory _$OrderItemProductDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderItemProductDtoImplFromJson(json);

  @override
  @JsonKey(name: '_id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'categoryId', defaultValue: '')
  final String categoryId;
  @override
  @JsonKey(name: 'subcategoryId', defaultValue: '')
  final String subcategoryId;
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
  String toString() {
    return 'OrderItemProductDto(id: $id, categoryId: $categoryId, subcategoryId: $subcategoryId, productName: $productName, productDescription: $productDescription, expiryDate: $expiryDate, productMRP: $productMRP, productDiscount: $productDiscount, productDiscountDate: $productDiscountDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderItemProductDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.subcategoryId, subcategoryId) ||
                other.subcategoryId == subcategoryId) &&
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
                other.productDiscountDate == productDiscountDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      categoryId,
      subcategoryId,
      productName,
      productDescription,
      expiryDate,
      productMRP,
      productDiscount,
      productDiscountDate);

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
      @JsonKey(name: 'categoryId', defaultValue: '')
      required final String categoryId,
      @JsonKey(name: 'subcategoryId', defaultValue: '')
      required final String subcategoryId,
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
      required final String productDiscountDate}) = _$OrderItemProductDtoImpl;
  const _OrderItemProductDto._() : super._();

  factory _OrderItemProductDto.fromJson(Map<String, dynamic> json) =
      _$OrderItemProductDtoImpl.fromJson;

  @override
  @JsonKey(name: '_id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'categoryId', defaultValue: '')
  String get categoryId;
  @override
  @JsonKey(name: 'subcategoryId', defaultValue: '')
  String get subcategoryId;
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
  @JsonKey(ignore: true)
  _$$OrderItemProductDtoImplCopyWith<_$OrderItemProductDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
