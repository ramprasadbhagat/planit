// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartProductDto _$CartProductDtoFromJson(Map<String, dynamic> json) {
  return _CartProductDto.fromJson(json);
}

/// @nodoc
mixin _$CartProductDto {
  @JsonKey(name: 'id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id', defaultValue: '')
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'image', defaultValue: '')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'productName', defaultValue: '')
  String get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'productDescription', defaultValue: '')
  String get productDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'attributeItemId', defaultValue: '')
  String get attributeItemId => throw _privateConstructorUsedError;
  @JsonKey(name: 'itemPrice', defaultValue: '0.00', readValue: stringReadValue)
  String get itemPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_price', defaultValue: 0, readValue: intReadValue)
  int get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'attributeItemName', defaultValue: '')
  String get attributeItemName => throw _privateConstructorUsedError;
  @JsonKey(name: 'attributeName', defaultValue: '')
  String get attributeName => throw _privateConstructorUsedError;
  @JsonKey(
      defaultValue: 0.0, readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
  double get finalPrice => throw _privateConstructorUsedError;
  @JsonKey(
      defaultValue: 0.0, readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
  double get listPrice => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0.0)
  double get discountPercentage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartProductDtoCopyWith<CartProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductDtoCopyWith<$Res> {
  factory $CartProductDtoCopyWith(
          CartProductDto value, $Res Function(CartProductDto) then) =
      _$CartProductDtoCopyWithImpl<$Res, CartProductDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'product_id', defaultValue: '') String productId,
      @JsonKey(name: 'image', defaultValue: '') String image,
      @JsonKey(name: 'productName', defaultValue: '') String productName,
      @JsonKey(name: 'productDescription', defaultValue: '')
      String productDescription,
      @JsonKey(name: 'attributeItemId', defaultValue: '')
      String attributeItemId,
      @JsonKey(
          name: 'itemPrice', defaultValue: '0.00', readValue: stringReadValue)
      String itemPrice,
      @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
      int quantity,
      @JsonKey(name: 'total_price', defaultValue: 0, readValue: intReadValue)
      int totalPrice,
      @JsonKey(name: 'attributeItemName', defaultValue: '')
      String attributeItemName,
      @JsonKey(name: 'attributeName', defaultValue: '') String attributeName,
      @JsonKey(
          defaultValue: 0.0,
          readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
      double finalPrice,
      @JsonKey(
          defaultValue: 0.0,
          readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
      double listPrice,
      @JsonKey(defaultValue: 0.0) double discountPercentage});
}

/// @nodoc
class _$CartProductDtoCopyWithImpl<$Res, $Val extends CartProductDto>
    implements $CartProductDtoCopyWith<$Res> {
  _$CartProductDtoCopyWithImpl(this._value, this._then);

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
    Object? attributeItemId = null,
    Object? itemPrice = null,
    Object? quantity = null,
    Object? totalPrice = null,
    Object? attributeItemName = null,
    Object? attributeName = null,
    Object? finalPrice = null,
    Object? listPrice = null,
    Object? discountPercentage = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
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
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
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
      attributeItemName: null == attributeItemName
          ? _value.attributeItemName
          : attributeItemName // ignore: cast_nullable_to_non_nullable
              as String,
      attributeName: null == attributeName
          ? _value.attributeName
          : attributeName // ignore: cast_nullable_to_non_nullable
              as String,
      finalPrice: null == finalPrice
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      listPrice: null == listPrice
          ? _value.listPrice
          : listPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartProductDtoImplCopyWith<$Res>
    implements $CartProductDtoCopyWith<$Res> {
  factory _$$CartProductDtoImplCopyWith(_$CartProductDtoImpl value,
          $Res Function(_$CartProductDtoImpl) then) =
      __$$CartProductDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String id,
      @JsonKey(name: 'product_id', defaultValue: '') String productId,
      @JsonKey(name: 'image', defaultValue: '') String image,
      @JsonKey(name: 'productName', defaultValue: '') String productName,
      @JsonKey(name: 'productDescription', defaultValue: '')
      String productDescription,
      @JsonKey(name: 'attributeItemId', defaultValue: '')
      String attributeItemId,
      @JsonKey(
          name: 'itemPrice', defaultValue: '0.00', readValue: stringReadValue)
      String itemPrice,
      @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
      int quantity,
      @JsonKey(name: 'total_price', defaultValue: 0, readValue: intReadValue)
      int totalPrice,
      @JsonKey(name: 'attributeItemName', defaultValue: '')
      String attributeItemName,
      @JsonKey(name: 'attributeName', defaultValue: '') String attributeName,
      @JsonKey(
          defaultValue: 0.0,
          readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
      double finalPrice,
      @JsonKey(
          defaultValue: 0.0,
          readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
      double listPrice,
      @JsonKey(defaultValue: 0.0) double discountPercentage});
}

/// @nodoc
class __$$CartProductDtoImplCopyWithImpl<$Res>
    extends _$CartProductDtoCopyWithImpl<$Res, _$CartProductDtoImpl>
    implements _$$CartProductDtoImplCopyWith<$Res> {
  __$$CartProductDtoImplCopyWithImpl(
      _$CartProductDtoImpl _value, $Res Function(_$CartProductDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productId = null,
    Object? image = null,
    Object? productName = null,
    Object? productDescription = null,
    Object? attributeItemId = null,
    Object? itemPrice = null,
    Object? quantity = null,
    Object? totalPrice = null,
    Object? attributeItemName = null,
    Object? attributeName = null,
    Object? finalPrice = null,
    Object? listPrice = null,
    Object? discountPercentage = null,
  }) {
    return _then(_$CartProductDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
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
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
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
      attributeItemName: null == attributeItemName
          ? _value.attributeItemName
          : attributeItemName // ignore: cast_nullable_to_non_nullable
              as String,
      attributeName: null == attributeName
          ? _value.attributeName
          : attributeName // ignore: cast_nullable_to_non_nullable
              as String,
      finalPrice: null == finalPrice
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      listPrice: null == listPrice
          ? _value.listPrice
          : listPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartProductDtoImpl extends _CartProductDto {
  const _$CartProductDtoImpl(
      {@JsonKey(name: 'id', defaultValue: '') required this.id,
      @JsonKey(name: 'product_id', defaultValue: '') required this.productId,
      @JsonKey(name: 'image', defaultValue: '') required this.image,
      @JsonKey(name: 'productName', defaultValue: '') required this.productName,
      @JsonKey(name: 'productDescription', defaultValue: '')
      required this.productDescription,
      @JsonKey(name: 'attributeItemId', defaultValue: '')
      required this.attributeItemId,
      @JsonKey(
          name: 'itemPrice', defaultValue: '0.00', readValue: stringReadValue)
      required this.itemPrice,
      @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
      required this.quantity,
      @JsonKey(name: 'total_price', defaultValue: 0, readValue: intReadValue)
      required this.totalPrice,
      @JsonKey(name: 'attributeItemName', defaultValue: '')
      required this.attributeItemName,
      @JsonKey(name: 'attributeName', defaultValue: '')
      required this.attributeName,
      @JsonKey(
          defaultValue: 0.0,
          readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
      required this.finalPrice,
      @JsonKey(
          defaultValue: 0.0,
          readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
      required this.listPrice,
      @JsonKey(defaultValue: 0.0) required this.discountPercentage})
      : super._();

  factory _$CartProductDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartProductDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'product_id', defaultValue: '')
  final String productId;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @override
  @JsonKey(name: 'productName', defaultValue: '')
  final String productName;
  @override
  @JsonKey(name: 'productDescription', defaultValue: '')
  final String productDescription;
  @override
  @JsonKey(name: 'attributeItemId', defaultValue: '')
  final String attributeItemId;
  @override
  @JsonKey(name: 'itemPrice', defaultValue: '0.00', readValue: stringReadValue)
  final String itemPrice;
  @override
  @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
  final int quantity;
  @override
  @JsonKey(name: 'total_price', defaultValue: 0, readValue: intReadValue)
  final int totalPrice;
  @override
  @JsonKey(name: 'attributeItemName', defaultValue: '')
  final String attributeItemName;
  @override
  @JsonKey(name: 'attributeName', defaultValue: '')
  final String attributeName;
  @override
  @JsonKey(
      defaultValue: 0.0, readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
  final double finalPrice;
  @override
  @JsonKey(
      defaultValue: 0.0, readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
  final double listPrice;
  @override
  @JsonKey(defaultValue: 0.0)
  final double discountPercentage;

  @override
  String toString() {
    return 'CartProductDto(id: $id, productId: $productId, image: $image, productName: $productName, productDescription: $productDescription, attributeItemId: $attributeItemId, itemPrice: $itemPrice, quantity: $quantity, totalPrice: $totalPrice, attributeItemName: $attributeItemName, attributeName: $attributeName, finalPrice: $finalPrice, listPrice: $listPrice, discountPercentage: $discountPercentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProductDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.attributeItemId, attributeItemId) ||
                other.attributeItemId == attributeItemId) &&
            (identical(other.itemPrice, itemPrice) ||
                other.itemPrice == itemPrice) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.attributeItemName, attributeItemName) ||
                other.attributeItemName == attributeItemName) &&
            (identical(other.attributeName, attributeName) ||
                other.attributeName == attributeName) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.listPrice, listPrice) ||
                other.listPrice == listPrice) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productId,
      image,
      productName,
      productDescription,
      attributeItemId,
      itemPrice,
      quantity,
      totalPrice,
      attributeItemName,
      attributeName,
      finalPrice,
      listPrice,
      discountPercentage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductDtoImplCopyWith<_$CartProductDtoImpl> get copyWith =>
      __$$CartProductDtoImplCopyWithImpl<_$CartProductDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartProductDtoImplToJson(
      this,
    );
  }
}

abstract class _CartProductDto extends CartProductDto {
  const factory _CartProductDto(
      {@JsonKey(name: 'id', defaultValue: '') required final String id,
      @JsonKey(name: 'product_id', defaultValue: '')
      required final String productId,
      @JsonKey(name: 'image', defaultValue: '') required final String image,
      @JsonKey(name: 'productName', defaultValue: '')
      required final String productName,
      @JsonKey(name: 'productDescription', defaultValue: '')
      required final String productDescription,
      @JsonKey(name: 'attributeItemId', defaultValue: '')
      required final String attributeItemId,
      @JsonKey(
          name: 'itemPrice', defaultValue: '0.00', readValue: stringReadValue)
      required final String itemPrice,
      @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
      required final int quantity,
      @JsonKey(name: 'total_price', defaultValue: 0, readValue: intReadValue)
      required final int totalPrice,
      @JsonKey(name: 'attributeItemName', defaultValue: '')
      required final String attributeItemName,
      @JsonKey(name: 'attributeName', defaultValue: '')
      required final String attributeName,
      @JsonKey(
          defaultValue: 0.0,
          readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
      required final double finalPrice,
      @JsonKey(
          defaultValue: 0.0,
          readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
      required final double listPrice,
      @JsonKey(defaultValue: 0.0)
      required final double discountPercentage}) = _$CartProductDtoImpl;
  const _CartProductDto._() : super._();

  factory _CartProductDto.fromJson(Map<String, dynamic> json) =
      _$CartProductDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'product_id', defaultValue: '')
  String get productId;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  String get image;
  @override
  @JsonKey(name: 'productName', defaultValue: '')
  String get productName;
  @override
  @JsonKey(name: 'productDescription', defaultValue: '')
  String get productDescription;
  @override
  @JsonKey(name: 'attributeItemId', defaultValue: '')
  String get attributeItemId;
  @override
  @JsonKey(name: 'itemPrice', defaultValue: '0.00', readValue: stringReadValue)
  String get itemPrice;
  @override
  @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
  int get quantity;
  @override
  @JsonKey(name: 'total_price', defaultValue: 0, readValue: intReadValue)
  int get totalPrice;
  @override
  @JsonKey(name: 'attributeItemName', defaultValue: '')
  String get attributeItemName;
  @override
  @JsonKey(name: 'attributeName', defaultValue: '')
  String get attributeName;
  @override
  @JsonKey(
      defaultValue: 0.0, readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
  double get finalPrice;
  @override
  @JsonKey(
      defaultValue: 0.0, readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
  double get listPrice;
  @override
  @JsonKey(defaultValue: 0.0)
  double get discountPercentage;
  @override
  @JsonKey(ignore: true)
  _$$CartProductDtoImplCopyWith<_$CartProductDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
