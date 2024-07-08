// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_image_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductImageDto _$ProductImageDtoFromJson(Map<String, dynamic> json) {
  return _ProductImageDto.fromJson(json);
}

/// @nodoc
mixin _$ProductImageDto {
  @JsonKey(name: 'imageUrl', defaultValue: '', readValue: parseProductImage)
  String get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductImageDtoCopyWith<ProductImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductImageDtoCopyWith<$Res> {
  factory $ProductImageDtoCopyWith(
          ProductImageDto value, $Res Function(ProductImageDto) then) =
      _$ProductImageDtoCopyWithImpl<$Res, ProductImageDto>;
  @useResult
  $Res call(
      {@JsonKey(
          name: 'imageUrl', defaultValue: '', readValue: parseProductImage)
      String imageUrl});
}

/// @nodoc
class _$ProductImageDtoCopyWithImpl<$Res, $Val extends ProductImageDto>
    implements $ProductImageDtoCopyWith<$Res> {
  _$ProductImageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImageDtoImplCopyWith<$Res>
    implements $ProductImageDtoCopyWith<$Res> {
  factory _$$ProductImageDtoImplCopyWith(_$ProductImageDtoImpl value,
          $Res Function(_$ProductImageDtoImpl) then) =
      __$$ProductImageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          name: 'imageUrl', defaultValue: '', readValue: parseProductImage)
      String imageUrl});
}

/// @nodoc
class __$$ProductImageDtoImplCopyWithImpl<$Res>
    extends _$ProductImageDtoCopyWithImpl<$Res, _$ProductImageDtoImpl>
    implements _$$ProductImageDtoImplCopyWith<$Res> {
  __$$ProductImageDtoImplCopyWithImpl(
      _$ProductImageDtoImpl _value, $Res Function(_$ProductImageDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageUrl = null,
  }) {
    return _then(_$ProductImageDtoImpl(
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImageDtoImpl extends _ProductImageDto {
  _$ProductImageDtoImpl(
      {@JsonKey(
          name: 'imageUrl', defaultValue: '', readValue: parseProductImage)
      required this.imageUrl})
      : super._();

  factory _$ProductImageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImageDtoImplFromJson(json);

  @override
  @JsonKey(name: 'imageUrl', defaultValue: '', readValue: parseProductImage)
  final String imageUrl;

  @override
  String toString() {
    return 'ProductImageDto(imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImageDtoImpl &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImageDtoImplCopyWith<_$ProductImageDtoImpl> get copyWith =>
      __$$ProductImageDtoImplCopyWithImpl<_$ProductImageDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImageDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductImageDto extends ProductImageDto {
  factory _ProductImageDto(
      {@JsonKey(
          name: 'imageUrl', defaultValue: '', readValue: parseProductImage)
      required final String imageUrl}) = _$ProductImageDtoImpl;
  _ProductImageDto._() : super._();

  factory _ProductImageDto.fromJson(Map<String, dynamic> json) =
      _$ProductImageDtoImpl.fromJson;

  @override
  @JsonKey(name: 'imageUrl', defaultValue: '', readValue: parseProductImage)
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$ProductImageDtoImplCopyWith<_$ProductImageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
