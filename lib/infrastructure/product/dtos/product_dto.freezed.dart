// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDto _$ProductDtoFromJson(Map<String, dynamic> json) {
  return _ProductDto.fromJson(json);
}

/// @nodoc
mixin _$ProductDto {
  @JsonKey(name: 'id', defaultValue: '')
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'productName', defaultValue: '')
  String get productName => throw _privateConstructorUsedError;
  @JsonKey(name: 'productImages', defaultValue: [])
  List<String> get productImages => throw _privateConstructorUsedError;
  @JsonKey(name: 'sku_price', defaultValue: 0, readValue: intReadValue)
  int get skuPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'startingPrice', defaultValue: 0, readValue: intReadValue)
  int get startingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'attributeItem', defaultValue: '')
  String get attributeItem => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get attributeItemProductId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDtoCopyWith<ProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDtoCopyWith<$Res> {
  factory $ProductDtoCopyWith(
          ProductDto value, $Res Function(ProductDto) then) =
      _$ProductDtoCopyWithImpl<$Res, ProductDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String productId,
      @JsonKey(name: 'productName', defaultValue: '') String productName,
      @JsonKey(name: 'productImages', defaultValue: [])
      List<String> productImages,
      @JsonKey(name: 'sku_price', defaultValue: 0, readValue: intReadValue)
      int skuPrice,
      @JsonKey(name: 'startingPrice', defaultValue: 0, readValue: intReadValue)
      int startingPrice,
      @JsonKey(name: 'attributeItem', defaultValue: '') String attributeItem,
      @JsonKey(defaultValue: '') String attributeItemProductId});
}

/// @nodoc
class _$ProductDtoCopyWithImpl<$Res, $Val extends ProductDto>
    implements $ProductDtoCopyWith<$Res> {
  _$ProductDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? productImages = null,
    Object? skuPrice = null,
    Object? startingPrice = null,
    Object? attributeItem = null,
    Object? attributeItemProductId = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productImages: null == productImages
          ? _value.productImages
          : productImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skuPrice: null == skuPrice
          ? _value.skuPrice
          : skuPrice // ignore: cast_nullable_to_non_nullable
              as int,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDtoImplCopyWith<$Res>
    implements $ProductDtoCopyWith<$Res> {
  factory _$$ProductDtoImplCopyWith(
          _$ProductDtoImpl value, $Res Function(_$ProductDtoImpl) then) =
      __$$ProductDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: '') String productId,
      @JsonKey(name: 'productName', defaultValue: '') String productName,
      @JsonKey(name: 'productImages', defaultValue: [])
      List<String> productImages,
      @JsonKey(name: 'sku_price', defaultValue: 0, readValue: intReadValue)
      int skuPrice,
      @JsonKey(name: 'startingPrice', defaultValue: 0, readValue: intReadValue)
      int startingPrice,
      @JsonKey(name: 'attributeItem', defaultValue: '') String attributeItem,
      @JsonKey(defaultValue: '') String attributeItemProductId});
}

/// @nodoc
class __$$ProductDtoImplCopyWithImpl<$Res>
    extends _$ProductDtoCopyWithImpl<$Res, _$ProductDtoImpl>
    implements _$$ProductDtoImplCopyWith<$Res> {
  __$$ProductDtoImplCopyWithImpl(
      _$ProductDtoImpl _value, $Res Function(_$ProductDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? productImages = null,
    Object? skuPrice = null,
    Object? startingPrice = null,
    Object? attributeItem = null,
    Object? attributeItemProductId = null,
  }) {
    return _then(_$ProductDtoImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productImages: null == productImages
          ? _value._productImages
          : productImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skuPrice: null == skuPrice
          ? _value.skuPrice
          : skuPrice // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDtoImpl extends _ProductDto {
  _$ProductDtoImpl(
      {@JsonKey(name: 'id', defaultValue: '') required this.productId,
      @JsonKey(name: 'productName', defaultValue: '') required this.productName,
      @JsonKey(name: 'productImages', defaultValue: [])
      required final List<String> productImages,
      @JsonKey(name: 'sku_price', defaultValue: 0, readValue: intReadValue)
      required this.skuPrice,
      @JsonKey(name: 'startingPrice', defaultValue: 0, readValue: intReadValue)
      required this.startingPrice,
      @JsonKey(name: 'attributeItem', defaultValue: '')
      required this.attributeItem,
      @JsonKey(defaultValue: '') required this.attributeItemProductId})
      : _productImages = productImages,
        super._();

  factory _$ProductDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String productId;
  @override
  @JsonKey(name: 'productName', defaultValue: '')
  final String productName;
  final List<String> _productImages;
  @override
  @JsonKey(name: 'productImages', defaultValue: [])
  List<String> get productImages {
    if (_productImages is EqualUnmodifiableListView) return _productImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_productImages);
  }

  @override
  @JsonKey(name: 'sku_price', defaultValue: 0, readValue: intReadValue)
  final int skuPrice;
  @override
  @JsonKey(name: 'startingPrice', defaultValue: 0, readValue: intReadValue)
  final int startingPrice;
  @override
  @JsonKey(name: 'attributeItem', defaultValue: '')
  final String attributeItem;
  @override
  @JsonKey(defaultValue: '')
  final String attributeItemProductId;

  @override
  String toString() {
    return 'ProductDto(productId: $productId, productName: $productName, productImages: $productImages, skuPrice: $skuPrice, startingPrice: $startingPrice, attributeItem: $attributeItem, attributeItemProductId: $attributeItemProductId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDtoImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            const DeepCollectionEquality()
                .equals(other._productImages, _productImages) &&
            (identical(other.skuPrice, skuPrice) ||
                other.skuPrice == skuPrice) &&
            (identical(other.startingPrice, startingPrice) ||
                other.startingPrice == startingPrice) &&
            (identical(other.attributeItem, attributeItem) ||
                other.attributeItem == attributeItem) &&
            (identical(other.attributeItemProductId, attributeItemProductId) ||
                other.attributeItemProductId == attributeItemProductId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productId,
      productName,
      const DeepCollectionEquality().hash(_productImages),
      skuPrice,
      startingPrice,
      attributeItem,
      attributeItemProductId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDtoImplCopyWith<_$ProductDtoImpl> get copyWith =>
      __$$ProductDtoImplCopyWithImpl<_$ProductDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductDto extends ProductDto {
  factory _ProductDto(
      {@JsonKey(name: 'id', defaultValue: '') required final String productId,
      @JsonKey(name: 'productName', defaultValue: '')
      required final String productName,
      @JsonKey(name: 'productImages', defaultValue: [])
      required final List<String> productImages,
      @JsonKey(name: 'sku_price', defaultValue: 0, readValue: intReadValue)
      required final int skuPrice,
      @JsonKey(name: 'startingPrice', defaultValue: 0, readValue: intReadValue)
      required final int startingPrice,
      @JsonKey(name: 'attributeItem', defaultValue: '')
      required final String attributeItem,
      @JsonKey(defaultValue: '')
      required final String attributeItemProductId}) = _$ProductDtoImpl;
  _ProductDto._() : super._();

  factory _ProductDto.fromJson(Map<String, dynamic> json) =
      _$ProductDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: '')
  String get productId;
  @override
  @JsonKey(name: 'productName', defaultValue: '')
  String get productName;
  @override
  @JsonKey(name: 'productImages', defaultValue: [])
  List<String> get productImages;
  @override
  @JsonKey(name: 'sku_price', defaultValue: 0, readValue: intReadValue)
  int get skuPrice;
  @override
  @JsonKey(name: 'startingPrice', defaultValue: 0, readValue: intReadValue)
  int get startingPrice;
  @override
  @JsonKey(name: 'attributeItem', defaultValue: '')
  String get attributeItem;
  @override
  @JsonKey(defaultValue: '')
  String get attributeItemProductId;
  @override
  @JsonKey(ignore: true)
  _$$ProductDtoImplCopyWith<_$ProductDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
