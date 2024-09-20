// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDetailDto _$ProductDetailDtoFromJson(Map<String, dynamic> json) {
  return _ProductDetailDto.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailDto {
  @JsonKey(name: 'id', defaultValue: '')
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'productDescription', defaultValue: '')
  String get productDescription => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', name: 'productName')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, readValue: intReadValue)
  int get startingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'price', defaultValue: {}, readValue: priceReadValue)
  Map<String, dynamic> get price => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'productImages', defaultValue: [], readValue: parseProductImages)
  List<String> get productImages => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool get backOrder => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'inventory',
      defaultValue: <InventoryDto>[],
      readValue: JsonReadValueHelper.readList)
  List<InventoryDto> get inventoryList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailDtoCopyWith<ProductDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailDtoCopyWith<$Res> {
  factory $ProductDetailDtoCopyWith(
          ProductDetailDto value, $Res Function(ProductDetailDto) then) =
      _$ProductDetailDtoCopyWithImpl<$Res, ProductDetailDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String productId,
      @JsonKey(name: 'productDescription', defaultValue: '')
      String productDescription,
      @JsonKey(defaultValue: '', name: 'productName') String name,
      @JsonKey(defaultValue: 0, readValue: intReadValue) int startingPrice,
      @JsonKey(name: 'price', defaultValue: {}, readValue: priceReadValue)
      Map<String, dynamic> price,
      @JsonKey(
          name: 'productImages',
          defaultValue: [],
          readValue: parseProductImages)
      List<String> productImages,
      @JsonKey(defaultValue: false) bool backOrder,
      @JsonKey(
          name: 'inventory',
          defaultValue: <InventoryDto>[],
          readValue: JsonReadValueHelper.readList)
      List<InventoryDto> inventoryList});
}

/// @nodoc
class _$ProductDetailDtoCopyWithImpl<$Res, $Val extends ProductDetailDto>
    implements $ProductDetailDtoCopyWith<$Res> {
  _$ProductDetailDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productDescription = null,
    Object? name = null,
    Object? startingPrice = null,
    Object? price = null,
    Object? productImages = null,
    Object? backOrder = null,
    Object? inventoryList = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startingPrice: null == startingPrice
          ? _value.startingPrice
          : startingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      productImages: null == productImages
          ? _value.productImages
          : productImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      backOrder: null == backOrder
          ? _value.backOrder
          : backOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      inventoryList: null == inventoryList
          ? _value.inventoryList
          : inventoryList // ignore: cast_nullable_to_non_nullable
              as List<InventoryDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDetailDtoImplCopyWith<$Res>
    implements $ProductDetailDtoCopyWith<$Res> {
  factory _$$ProductDetailDtoImplCopyWith(_$ProductDetailDtoImpl value,
          $Res Function(_$ProductDetailDtoImpl) then) =
      __$$ProductDetailDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String productId,
      @JsonKey(name: 'productDescription', defaultValue: '')
      String productDescription,
      @JsonKey(defaultValue: '', name: 'productName') String name,
      @JsonKey(defaultValue: 0, readValue: intReadValue) int startingPrice,
      @JsonKey(name: 'price', defaultValue: {}, readValue: priceReadValue)
      Map<String, dynamic> price,
      @JsonKey(
          name: 'productImages',
          defaultValue: [],
          readValue: parseProductImages)
      List<String> productImages,
      @JsonKey(defaultValue: false) bool backOrder,
      @JsonKey(
          name: 'inventory',
          defaultValue: <InventoryDto>[],
          readValue: JsonReadValueHelper.readList)
      List<InventoryDto> inventoryList});
}

/// @nodoc
class __$$ProductDetailDtoImplCopyWithImpl<$Res>
    extends _$ProductDetailDtoCopyWithImpl<$Res, _$ProductDetailDtoImpl>
    implements _$$ProductDetailDtoImplCopyWith<$Res> {
  __$$ProductDetailDtoImplCopyWithImpl(_$ProductDetailDtoImpl _value,
      $Res Function(_$ProductDetailDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productDescription = null,
    Object? name = null,
    Object? startingPrice = null,
    Object? price = null,
    Object? productImages = null,
    Object? backOrder = null,
    Object? inventoryList = null,
  }) {
    return _then(_$ProductDetailDtoImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productDescription: null == productDescription
          ? _value.productDescription
          : productDescription // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      startingPrice: null == startingPrice
          ? _value.startingPrice
          : startingPrice // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value._price
          : price // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      productImages: null == productImages
          ? _value._productImages
          : productImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      backOrder: null == backOrder
          ? _value.backOrder
          : backOrder // ignore: cast_nullable_to_non_nullable
              as bool,
      inventoryList: null == inventoryList
          ? _value._inventoryList
          : inventoryList // ignore: cast_nullable_to_non_nullable
              as List<InventoryDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDetailDtoImpl extends _ProductDetailDto {
  _$ProductDetailDtoImpl(
      {@JsonKey(name: 'id', defaultValue: '') required this.productId,
      @JsonKey(name: 'productDescription', defaultValue: '')
      required this.productDescription,
      @JsonKey(defaultValue: '', name: 'productName') required this.name,
      @JsonKey(defaultValue: 0, readValue: intReadValue)
      required this.startingPrice,
      @JsonKey(name: 'price', defaultValue: {}, readValue: priceReadValue)
      required final Map<String, dynamic> price,
      @JsonKey(
          name: 'productImages',
          defaultValue: [],
          readValue: parseProductImages)
      required final List<String> productImages,
      @JsonKey(defaultValue: false) required this.backOrder,
      @JsonKey(
          name: 'inventory',
          defaultValue: <InventoryDto>[],
          readValue: JsonReadValueHelper.readList)
      required final List<InventoryDto> inventoryList})
      : _price = price,
        _productImages = productImages,
        _inventoryList = inventoryList,
        super._();

  factory _$ProductDetailDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String productId;
  @override
  @JsonKey(name: 'productDescription', defaultValue: '')
  final String productDescription;
  @override
  @JsonKey(defaultValue: '', name: 'productName')
  final String name;
  @override
  @JsonKey(defaultValue: 0, readValue: intReadValue)
  final int startingPrice;
  final Map<String, dynamic> _price;
  @override
  @JsonKey(name: 'price', defaultValue: {}, readValue: priceReadValue)
  Map<String, dynamic> get price {
    if (_price is EqualUnmodifiableMapView) return _price;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_price);
  }

  final List<String> _productImages;
  @override
  @JsonKey(
      name: 'productImages', defaultValue: [], readValue: parseProductImages)
  List<String> get productImages {
    if (_productImages is EqualUnmodifiableListView) return _productImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productImages);
  }

  @override
  @JsonKey(defaultValue: false)
  final bool backOrder;
  final List<InventoryDto> _inventoryList;
  @override
  @JsonKey(
      name: 'inventory',
      defaultValue: <InventoryDto>[],
      readValue: JsonReadValueHelper.readList)
  List<InventoryDto> get inventoryList {
    if (_inventoryList is EqualUnmodifiableListView) return _inventoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inventoryList);
  }

  @override
  String toString() {
    return 'ProductDetailDto(productId: $productId, productDescription: $productDescription, name: $name, startingPrice: $startingPrice, price: $price, productImages: $productImages, backOrder: $backOrder, inventoryList: $inventoryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailDtoImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startingPrice, startingPrice) ||
                other.startingPrice == startingPrice) &&
            const DeepCollectionEquality().equals(other._price, _price) &&
            const DeepCollectionEquality()
                .equals(other._productImages, _productImages) &&
            (identical(other.backOrder, backOrder) ||
                other.backOrder == backOrder) &&
            const DeepCollectionEquality()
                .equals(other._inventoryList, _inventoryList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productId,
      productDescription,
      name,
      startingPrice,
      const DeepCollectionEquality().hash(_price),
      const DeepCollectionEquality().hash(_productImages),
      backOrder,
      const DeepCollectionEquality().hash(_inventoryList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailDtoImplCopyWith<_$ProductDetailDtoImpl> get copyWith =>
      __$$ProductDetailDtoImplCopyWithImpl<_$ProductDetailDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductDetailDto extends ProductDetailDto {
  factory _ProductDetailDto(
      {@JsonKey(name: 'id', defaultValue: '') required final String productId,
      @JsonKey(name: 'productDescription', defaultValue: '')
      required final String productDescription,
      @JsonKey(defaultValue: '', name: 'productName')
      required final String name,
      @JsonKey(defaultValue: 0, readValue: intReadValue)
      required final int startingPrice,
      @JsonKey(name: 'price', defaultValue: {}, readValue: priceReadValue)
      required final Map<String, dynamic> price,
      @JsonKey(
          name: 'productImages',
          defaultValue: [],
          readValue: parseProductImages)
      required final List<String> productImages,
      @JsonKey(defaultValue: false) required final bool backOrder,
      @JsonKey(
          name: 'inventory',
          defaultValue: <InventoryDto>[],
          readValue: JsonReadValueHelper.readList)
      required final List<InventoryDto>
          inventoryList}) = _$ProductDetailDtoImpl;
  _ProductDetailDto._() : super._();

  factory _ProductDetailDto.fromJson(Map<String, dynamic> json) =
      _$ProductDetailDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: '')
  String get productId;
  @override
  @JsonKey(name: 'productDescription', defaultValue: '')
  String get productDescription;
  @override
  @JsonKey(defaultValue: '', name: 'productName')
  String get name;
  @override
  @JsonKey(defaultValue: 0, readValue: intReadValue)
  int get startingPrice;
  @override
  @JsonKey(name: 'price', defaultValue: {}, readValue: priceReadValue)
  Map<String, dynamic> get price;
  @override
  @JsonKey(
      name: 'productImages', defaultValue: [], readValue: parseProductImages)
  List<String> get productImages;
  @override
  @JsonKey(defaultValue: false)
  bool get backOrder;
  @override
  @JsonKey(
      name: 'inventory',
      defaultValue: <InventoryDto>[],
      readValue: JsonReadValueHelper.readList)
  List<InventoryDto> get inventoryList;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailDtoImplCopyWith<_$ProductDetailDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
