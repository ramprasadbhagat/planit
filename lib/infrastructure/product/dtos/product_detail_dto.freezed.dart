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
      String productDescription});
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
      String productDescription});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDetailDtoImpl extends _ProductDetailDto {
  _$ProductDetailDtoImpl(
      {@JsonKey(name: 'id', defaultValue: '') required this.productId,
      @JsonKey(name: 'productDescription', defaultValue: '')
      required this.productDescription})
      : super._();

  factory _$ProductDetailDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String productId;
  @override
  @JsonKey(name: 'productDescription', defaultValue: '')
  final String productDescription;

  @override
  String toString() {
    return 'ProductDetailDto(productId: $productId, productDescription: $productDescription)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailDtoImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productDescription, productDescription) ||
                other.productDescription == productDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, productDescription);

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
      required final String productDescription}) = _$ProductDetailDtoImpl;
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
  @JsonKey(ignore: true)
  _$$ProductDetailDtoImplCopyWith<_$ProductDetailDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
