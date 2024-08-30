// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'best_seller_product_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BestSellerProductDto _$BestSellerProductDtoFromJson(Map<String, dynamic> json) {
  return _BestSellerProductDto.fromJson(json);
}

/// @nodoc
mixin _$BestSellerProductDto {
  @JsonKey(defaultValue: '')
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get productName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get productImage => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get attributeItemId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get stock => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool get backOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BestSellerProductDtoCopyWith<BestSellerProductDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestSellerProductDtoCopyWith<$Res> {
  factory $BestSellerProductDtoCopyWith(BestSellerProductDto value,
          $Res Function(BestSellerProductDto) then) =
      _$BestSellerProductDtoCopyWithImpl<$Res, BestSellerProductDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String productId,
      @JsonKey(defaultValue: '') String productName,
      @JsonKey(defaultValue: '') String productImage,
      @JsonKey(defaultValue: '') String attributeItemId,
      @JsonKey(defaultValue: 0) int stock,
      @JsonKey(defaultValue: false) bool backOrder});
}

/// @nodoc
class _$BestSellerProductDtoCopyWithImpl<$Res,
        $Val extends BestSellerProductDto>
    implements $BestSellerProductDtoCopyWith<$Res> {
  _$BestSellerProductDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? productImage = null,
    Object? attributeItemId = null,
    Object? stock = null,
    Object? backOrder = null,
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
      productImage: null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      backOrder: null == backOrder
          ? _value.backOrder
          : backOrder // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BestSellerProductDtoImplCopyWith<$Res>
    implements $BestSellerProductDtoCopyWith<$Res> {
  factory _$$BestSellerProductDtoImplCopyWith(_$BestSellerProductDtoImpl value,
          $Res Function(_$BestSellerProductDtoImpl) then) =
      __$$BestSellerProductDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String productId,
      @JsonKey(defaultValue: '') String productName,
      @JsonKey(defaultValue: '') String productImage,
      @JsonKey(defaultValue: '') String attributeItemId,
      @JsonKey(defaultValue: 0) int stock,
      @JsonKey(defaultValue: false) bool backOrder});
}

/// @nodoc
class __$$BestSellerProductDtoImplCopyWithImpl<$Res>
    extends _$BestSellerProductDtoCopyWithImpl<$Res, _$BestSellerProductDtoImpl>
    implements _$$BestSellerProductDtoImplCopyWith<$Res> {
  __$$BestSellerProductDtoImplCopyWithImpl(_$BestSellerProductDtoImpl _value,
      $Res Function(_$BestSellerProductDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? productImage = null,
    Object? attributeItemId = null,
    Object? stock = null,
    Object? backOrder = null,
  }) {
    return _then(_$BestSellerProductDtoImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productImage: null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      backOrder: null == backOrder
          ? _value.backOrder
          : backOrder // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BestSellerProductDtoImpl extends _BestSellerProductDto {
  const _$BestSellerProductDtoImpl(
      {@JsonKey(defaultValue: '') required this.productId,
      @JsonKey(defaultValue: '') required this.productName,
      @JsonKey(defaultValue: '') required this.productImage,
      @JsonKey(defaultValue: '') required this.attributeItemId,
      @JsonKey(defaultValue: 0) required this.stock,
      @JsonKey(defaultValue: false) required this.backOrder})
      : super._();

  factory _$BestSellerProductDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BestSellerProductDtoImplFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String productId;
  @override
  @JsonKey(defaultValue: '')
  final String productName;
  @override
  @JsonKey(defaultValue: '')
  final String productImage;
  @override
  @JsonKey(defaultValue: '')
  final String attributeItemId;
  @override
  @JsonKey(defaultValue: 0)
  final int stock;
  @override
  @JsonKey(defaultValue: false)
  final bool backOrder;

  @override
  String toString() {
    return 'BestSellerProductDto(productId: $productId, productName: $productName, productImage: $productImage, attributeItemId: $attributeItemId, stock: $stock, backOrder: $backOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestSellerProductDtoImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.attributeItemId, attributeItemId) ||
                other.attributeItemId == attributeItemId) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.backOrder, backOrder) ||
                other.backOrder == backOrder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, productName,
      productImage, attributeItemId, stock, backOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BestSellerProductDtoImplCopyWith<_$BestSellerProductDtoImpl>
      get copyWith =>
          __$$BestSellerProductDtoImplCopyWithImpl<_$BestSellerProductDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BestSellerProductDtoImplToJson(
      this,
    );
  }
}

abstract class _BestSellerProductDto extends BestSellerProductDto {
  const factory _BestSellerProductDto(
          {@JsonKey(defaultValue: '') required final String productId,
          @JsonKey(defaultValue: '') required final String productName,
          @JsonKey(defaultValue: '') required final String productImage,
          @JsonKey(defaultValue: '') required final String attributeItemId,
          @JsonKey(defaultValue: 0) required final int stock,
          @JsonKey(defaultValue: false) required final bool backOrder}) =
      _$BestSellerProductDtoImpl;
  const _BestSellerProductDto._() : super._();

  factory _BestSellerProductDto.fromJson(Map<String, dynamic> json) =
      _$BestSellerProductDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get productId;
  @override
  @JsonKey(defaultValue: '')
  String get productName;
  @override
  @JsonKey(defaultValue: '')
  String get productImage;
  @override
  @JsonKey(defaultValue: '')
  String get attributeItemId;
  @override
  @JsonKey(defaultValue: 0)
  int get stock;
  @override
  @JsonKey(defaultValue: false)
  bool get backOrder;
  @override
  @JsonKey(ignore: true)
  _$$BestSellerProductDtoImplCopyWith<_$BestSellerProductDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
