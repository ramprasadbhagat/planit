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
  @JsonKey(name: '_id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalPrice', defaultValue: 0, readValue: intReadValue)
  int get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalDiscount', defaultValue: 0)
  int get totalDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'products', defaultValue: <ProductDto>[])
  List<CartProductDto> get products => throw _privateConstructorUsedError;

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
      {@JsonKey(name: '_id', defaultValue: '') String id,
      @JsonKey(name: 'totalPrice', defaultValue: 0, readValue: intReadValue)
      int totalPrice,
      @JsonKey(name: 'totalDiscount', defaultValue: 0) int totalDiscount,
      @JsonKey(name: 'products', defaultValue: <ProductDto>[])
      List<CartProductDto> products});
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
    Object? id = null,
    Object? totalPrice = null,
    Object? totalDiscount = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalDiscount: null == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProductDto>,
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
      {@JsonKey(name: '_id', defaultValue: '') String id,
      @JsonKey(name: 'totalPrice', defaultValue: 0, readValue: intReadValue)
      int totalPrice,
      @JsonKey(name: 'totalDiscount', defaultValue: 0) int totalDiscount,
      @JsonKey(name: 'products', defaultValue: <ProductDto>[])
      List<CartProductDto> products});
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
    Object? id = null,
    Object? totalPrice = null,
    Object? totalDiscount = null,
    Object? products = null,
  }) {
    return _then(_$CartItemDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalDiscount: null == totalDiscount
          ? _value.totalDiscount
          : totalDiscount // ignore: cast_nullable_to_non_nullable
              as int,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CartProductDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartItemDtoImpl extends _CartItemDto {
  _$CartItemDtoImpl(
      {@JsonKey(name: '_id', defaultValue: '') required this.id,
      @JsonKey(name: 'totalPrice', defaultValue: 0, readValue: intReadValue)
      required this.totalPrice,
      @JsonKey(name: 'totalDiscount', defaultValue: 0)
      required this.totalDiscount,
      @JsonKey(name: 'products', defaultValue: <ProductDto>[])
      required final List<CartProductDto> products})
      : _products = products,
        super._();

  factory _$CartItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartItemDtoImplFromJson(json);

  @override
  @JsonKey(name: '_id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'totalPrice', defaultValue: 0, readValue: intReadValue)
  final int totalPrice;
  @override
  @JsonKey(name: 'totalDiscount', defaultValue: 0)
  final int totalDiscount;
  final List<CartProductDto> _products;
  @override
  @JsonKey(name: 'products', defaultValue: <ProductDto>[])
  List<CartProductDto> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CartItemDto(id: $id, totalPrice: $totalPrice, totalDiscount: $totalDiscount, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.totalDiscount, totalDiscount) ||
                other.totalDiscount == totalDiscount) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, totalPrice, totalDiscount,
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
      {@JsonKey(name: '_id', defaultValue: '') required final String id,
      @JsonKey(name: 'totalPrice', defaultValue: 0, readValue: intReadValue)
      required final int totalPrice,
      @JsonKey(name: 'totalDiscount', defaultValue: 0)
      required final int totalDiscount,
      @JsonKey(name: 'products', defaultValue: <ProductDto>[])
      required final List<CartProductDto> products}) = _$CartItemDtoImpl;
  _CartItemDto._() : super._();

  factory _CartItemDto.fromJson(Map<String, dynamic> json) =
      _$CartItemDtoImpl.fromJson;

  @override
  @JsonKey(name: '_id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'totalPrice', defaultValue: 0, readValue: intReadValue)
  int get totalPrice;
  @override
  @JsonKey(name: 'totalDiscount', defaultValue: 0)
  int get totalDiscount;
  @override
  @JsonKey(name: 'products', defaultValue: <ProductDto>[])
  List<CartProductDto> get products;
  @override
  @JsonKey(ignore: true)
  _$$CartItemDtoImplCopyWith<_$CartItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
