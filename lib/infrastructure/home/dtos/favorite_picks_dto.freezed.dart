// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_picks_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FavoritePicksDto _$FavoritePicksDtoFromJson(Map<String, dynamic> json) {
  return _FavoritePicksDto.fromJson(json);
}

/// @nodoc
mixin _$FavoritePicksDto {
  @JsonKey(name: 'title', defaultValue: '')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'image', defaultValue: '')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'price', defaultValue: 0)
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoritePicksDtoCopyWith<FavoritePicksDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritePicksDtoCopyWith<$Res> {
  factory $FavoritePicksDtoCopyWith(
          FavoritePicksDto value, $Res Function(FavoritePicksDto) then) =
      _$FavoritePicksDtoCopyWithImpl<$Res, FavoritePicksDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'title', defaultValue: '') String title,
      @JsonKey(name: 'image', defaultValue: '') String image,
      @JsonKey(name: 'price', defaultValue: 0) double price});
}

/// @nodoc
class _$FavoritePicksDtoCopyWithImpl<$Res, $Val extends FavoritePicksDto>
    implements $FavoritePicksDtoCopyWith<$Res> {
  _$FavoritePicksDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoritePicksDtoImplCopyWith<$Res>
    implements $FavoritePicksDtoCopyWith<$Res> {
  factory _$$FavoritePicksDtoImplCopyWith(_$FavoritePicksDtoImpl value,
          $Res Function(_$FavoritePicksDtoImpl) then) =
      __$$FavoritePicksDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'title', defaultValue: '') String title,
      @JsonKey(name: 'image', defaultValue: '') String image,
      @JsonKey(name: 'price', defaultValue: 0) double price});
}

/// @nodoc
class __$$FavoritePicksDtoImplCopyWithImpl<$Res>
    extends _$FavoritePicksDtoCopyWithImpl<$Res, _$FavoritePicksDtoImpl>
    implements _$$FavoritePicksDtoImplCopyWith<$Res> {
  __$$FavoritePicksDtoImplCopyWithImpl(_$FavoritePicksDtoImpl _value,
      $Res Function(_$FavoritePicksDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
    Object? price = null,
  }) {
    return _then(_$FavoritePicksDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoritePicksDtoImpl extends _FavoritePicksDto {
  _$FavoritePicksDtoImpl(
      {@JsonKey(name: 'title', defaultValue: '') required this.title,
      @JsonKey(name: 'image', defaultValue: '') required this.image,
      @JsonKey(name: 'price', defaultValue: 0) required this.price})
      : super._();

  factory _$FavoritePicksDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoritePicksDtoImplFromJson(json);

  @override
  @JsonKey(name: 'title', defaultValue: '')
  final String title;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  final String image;
  @override
  @JsonKey(name: 'price', defaultValue: 0)
  final double price;

  @override
  String toString() {
    return 'FavoritePicksDto(title: $title, image: $image, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritePicksDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, image, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritePicksDtoImplCopyWith<_$FavoritePicksDtoImpl> get copyWith =>
      __$$FavoritePicksDtoImplCopyWithImpl<_$FavoritePicksDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoritePicksDtoImplToJson(
      this,
    );
  }
}

abstract class _FavoritePicksDto extends FavoritePicksDto {
  factory _FavoritePicksDto(
      {@JsonKey(name: 'title', defaultValue: '') required final String title,
      @JsonKey(name: 'image', defaultValue: '') required final String image,
      @JsonKey(name: 'price', defaultValue: 0)
      required final double price}) = _$FavoritePicksDtoImpl;
  _FavoritePicksDto._() : super._();

  factory _FavoritePicksDto.fromJson(Map<String, dynamic> json) =
      _$FavoritePicksDtoImpl.fromJson;

  @override
  @JsonKey(name: 'title', defaultValue: '')
  String get title;
  @override
  @JsonKey(name: 'image', defaultValue: '')
  String get image;
  @override
  @JsonKey(name: 'price', defaultValue: 0)
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$FavoritePicksDtoImplCopyWith<_$FavoritePicksDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
