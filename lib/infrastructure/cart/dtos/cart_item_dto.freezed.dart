// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartItemDto _$CartItemDtoFromJson(Map<String, dynamic> json) {
  return _CartItemDto.fromJson(json);
}

/// @nodoc
mixin _$CartItemDto {
  @JsonKey(name: 'product_id', defaultValue: '')
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_price', defaultValue: 0, readValue: intReadValue)
  int get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'products', defaultValue: <ProductDto>[])
  List<ProductDto> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartItemDtoCopyWith<CartItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartItemDtoCopyWith<$Res> {
  factory $CartItemDtoCopyWith(
          CartItemDto value, $Res Function(CartItemDto) then) =
      _$CartItemDtoCopyWithImpl<$Res, CartItemDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id', defaultValue: '') String productId,
      @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
      int quantity,
      @JsonKey(name: 'total_price', defaultValue: 0, readValue: intReadValue)
      int totalPrice,
      @JsonKey(name: 'products', defaultValue: <ProductDto>[])
      List<ProductDto> products});
}

/// @nodoc
class _$CartItemDtoCopyWithImpl<$Res, $Val extends CartItemDto>
    implements $CartItemDtoCopyWith<$Res> {
  _$CartItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
    Object? totalPrice = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartItemDtoImplCopyWith<$Res>
    implements $CartItemDtoCopyWith<$Res> {
  factory _$$CartItemDtoImplCopyWith(
          _$CartItemDtoImpl value, $Res Function(_$CartItemDtoImpl) then) =
      __$$CartItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id', defaultValue: '') String productId,
      @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
      int quantity,
      @JsonKey(name: 'total_price', defaultValue: 0, readValue: intReadValue)
      int totalPrice,
      @JsonKey(name: 'products', defaultValue: <ProductDto>[])
      List<ProductDto> products});
}

/// @nodoc
class __$$CartItemDtoImplCopyWithImpl<$Res>
    extends _$CartItemDtoCopyWithImpl<$Res, _$CartItemDtoImpl>
    implements _$$CartItemDtoImplCopyWith<$Res> {
  __$$CartItemDtoImplCopyWithImpl(
      _$CartItemDtoImpl _value, $Res Function(_$CartItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
    Object? totalPrice = null,
    Object? products = null,
  }) {
    return _then(_$CartItemDtoImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemDtoImpl extends _CartItemDto {
  _$CartItemDtoImpl(
      {@JsonKey(name: 'product_id', defaultValue: '') required this.productId,
      @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
      required this.quantity,
      @JsonKey(name: 'total_price', defaultValue: 0, readValue: intReadValue)
      required this.totalPrice,
      @JsonKey(name: 'products', defaultValue: <ProductDto>[])
      required final List<ProductDto> products})
      : _products = products,
        super._();

  factory _$CartItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemDtoImplFromJson(json);

  @override
  @JsonKey(name: 'product_id', defaultValue: '')
  final String productId;
  @override
  @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
  final int quantity;
  @override
  @JsonKey(name: 'total_price', defaultValue: 0, readValue: intReadValue)
  final int totalPrice;
  final List<ProductDto> _products;
  @override
  @JsonKey(name: 'products', defaultValue: <ProductDto>[])
  List<ProductDto> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CartItemDto(productId: $productId, quantity: $quantity, totalPrice: $totalPrice, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemDtoImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, quantity, totalPrice,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemDtoImplCopyWith<_$CartItemDtoImpl> get copyWith =>
      __$$CartItemDtoImplCopyWithImpl<_$CartItemDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartItemDtoImplToJson(
      this,
    );
  }
}

abstract class _CartItemDto extends CartItemDto {
  factory _CartItemDto(
      {@JsonKey(name: 'product_id', defaultValue: '')
      required final String productId,
      @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
      required final int quantity,
      @JsonKey(name: 'total_price', defaultValue: 0, readValue: intReadValue)
      required final int totalPrice,
      @JsonKey(name: 'products', defaultValue: <ProductDto>[])
      required final List<ProductDto> products}) = _$CartItemDtoImpl;
  _CartItemDto._() : super._();

  factory _CartItemDto.fromJson(Map<String, dynamic> json) =
      _$CartItemDtoImpl.fromJson;

  @override
  @JsonKey(name: 'product_id', defaultValue: '')
  String get productId;
  @override
  @JsonKey(name: 'quantity', defaultValue: 0, readValue: intReadValue)
  int get quantity;
  @override
  @JsonKey(name: 'total_price', defaultValue: 0, readValue: intReadValue)
  int get totalPrice;
  @override
  @JsonKey(name: 'products', defaultValue: <ProductDto>[])
  List<ProductDto> get products;
  @override
  @JsonKey(ignore: true)
  _$$CartItemDtoImplCopyWith<_$CartItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
