// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wishlist_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WishlistDto _$WishlistDtoFromJson(Map<String, dynamic> json) {
  return _WishlistDto.fromJson(json);
}

/// @nodoc
mixin _$WishlistDto {
  @JsonKey(name: '_id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id', defaultValue: '')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id', defaultValue: '')
  String get productId => throw _privateConstructorUsedError;
  @JsonKey(name: 'product', defaultValue: [])
  List<WishlistProductDto> get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WishlistDtoCopyWith<WishlistDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WishlistDtoCopyWith<$Res> {
  factory $WishlistDtoCopyWith(
          WishlistDto value, $Res Function(WishlistDto) then) =
      _$WishlistDtoCopyWithImpl<$Res, WishlistDto>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id', defaultValue: '') String id,
      @JsonKey(name: 'user_id', defaultValue: '') String userId,
      @JsonKey(name: 'product_id', defaultValue: '') String productId,
      @JsonKey(name: 'product', defaultValue: [])
      List<WishlistProductDto> product});
}

/// @nodoc
class _$WishlistDtoCopyWithImpl<$Res, $Val extends WishlistDto>
    implements $WishlistDtoCopyWith<$Res> {
  _$WishlistDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? productId = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<WishlistProductDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WishlistDtoImplCopyWith<$Res>
    implements $WishlistDtoCopyWith<$Res> {
  factory _$$WishlistDtoImplCopyWith(
          _$WishlistDtoImpl value, $Res Function(_$WishlistDtoImpl) then) =
      __$$WishlistDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id', defaultValue: '') String id,
      @JsonKey(name: 'user_id', defaultValue: '') String userId,
      @JsonKey(name: 'product_id', defaultValue: '') String productId,
      @JsonKey(name: 'product', defaultValue: [])
      List<WishlistProductDto> product});
}

/// @nodoc
class __$$WishlistDtoImplCopyWithImpl<$Res>
    extends _$WishlistDtoCopyWithImpl<$Res, _$WishlistDtoImpl>
    implements _$$WishlistDtoImplCopyWith<$Res> {
  __$$WishlistDtoImplCopyWithImpl(
      _$WishlistDtoImpl _value, $Res Function(_$WishlistDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? productId = null,
    Object? product = null,
  }) {
    return _then(_$WishlistDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<WishlistProductDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WishlistDtoImpl extends _WishlistDto {
  _$WishlistDtoImpl(
      {@JsonKey(name: '_id', defaultValue: '') required this.id,
      @JsonKey(name: 'user_id', defaultValue: '') required this.userId,
      @JsonKey(name: 'product_id', defaultValue: '') required this.productId,
      @JsonKey(name: 'product', defaultValue: [])
      required final List<WishlistProductDto> product})
      : _product = product,
        super._();

  factory _$WishlistDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WishlistDtoImplFromJson(json);

  @override
  @JsonKey(name: '_id', defaultValue: '')
  final String id;
  @override
  @JsonKey(name: 'user_id', defaultValue: '')
  final String userId;
  @override
  @JsonKey(name: 'product_id', defaultValue: '')
  final String productId;
  final List<WishlistProductDto> _product;
  @override
  @JsonKey(name: 'product', defaultValue: [])
  List<WishlistProductDto> get product {
    if (_product is EqualUnmodifiableListView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_product);
  }

  @override
  String toString() {
    return 'WishlistDto(id: $id, userId: $userId, productId: $productId, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WishlistDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            const DeepCollectionEquality().equals(other._product, _product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, productId,
      const DeepCollectionEquality().hash(_product));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WishlistDtoImplCopyWith<_$WishlistDtoImpl> get copyWith =>
      __$$WishlistDtoImplCopyWithImpl<_$WishlistDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WishlistDtoImplToJson(
      this,
    );
  }
}

abstract class _WishlistDto extends WishlistDto {
  factory _WishlistDto(
      {@JsonKey(name: '_id', defaultValue: '') required final String id,
      @JsonKey(name: 'user_id', defaultValue: '') required final String userId,
      @JsonKey(name: 'product_id', defaultValue: '')
      required final String productId,
      @JsonKey(name: 'product', defaultValue: [])
      required final List<WishlistProductDto> product}) = _$WishlistDtoImpl;
  _WishlistDto._() : super._();

  factory _WishlistDto.fromJson(Map<String, dynamic> json) =
      _$WishlistDtoImpl.fromJson;

  @override
  @JsonKey(name: '_id', defaultValue: '')
  String get id;
  @override
  @JsonKey(name: 'user_id', defaultValue: '')
  String get userId;
  @override
  @JsonKey(name: 'product_id', defaultValue: '')
  String get productId;
  @override
  @JsonKey(name: 'product', defaultValue: [])
  List<WishlistProductDto> get product;
  @override
  @JsonKey(ignore: true)
  _$$WishlistDtoImplCopyWith<_$WishlistDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
