// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_picks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoritePicks {
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoritePicksCopyWith<FavoritePicks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritePicksCopyWith<$Res> {
  factory $FavoritePicksCopyWith(
          FavoritePicks value, $Res Function(FavoritePicks) then) =
      _$FavoritePicksCopyWithImpl<$Res, FavoritePicks>;
  @useResult
  $Res call({String title, String image, double price});
}

/// @nodoc
class _$FavoritePicksCopyWithImpl<$Res, $Val extends FavoritePicks>
    implements $FavoritePicksCopyWith<$Res> {
  _$FavoritePicksCopyWithImpl(this._value, this._then);

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
abstract class _$$FavoritePicksImplCopyWith<$Res>
    implements $FavoritePicksCopyWith<$Res> {
  factory _$$FavoritePicksImplCopyWith(
          _$FavoritePicksImpl value, $Res Function(_$FavoritePicksImpl) then) =
      __$$FavoritePicksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String image, double price});
}

/// @nodoc
class __$$FavoritePicksImplCopyWithImpl<$Res>
    extends _$FavoritePicksCopyWithImpl<$Res, _$FavoritePicksImpl>
    implements _$$FavoritePicksImplCopyWith<$Res> {
  __$$FavoritePicksImplCopyWithImpl(
      _$FavoritePicksImpl _value, $Res Function(_$FavoritePicksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
    Object? price = null,
  }) {
    return _then(_$FavoritePicksImpl(
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

class _$FavoritePicksImpl implements _FavoritePicks {
  _$FavoritePicksImpl(
      {required this.title, required this.image, required this.price});

  @override
  final String title;
  @override
  final String image;
  @override
  final double price;

  @override
  String toString() {
    return 'FavoritePicks(title: $title, image: $image, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritePicksImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, image, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritePicksImplCopyWith<_$FavoritePicksImpl> get copyWith =>
      __$$FavoritePicksImplCopyWithImpl<_$FavoritePicksImpl>(this, _$identity);
}

abstract class _FavoritePicks implements FavoritePicks {
  factory _FavoritePicks(
      {required final String title,
      required final String image,
      required final double price}) = _$FavoritePicksImpl;

  @override
  String get title;
  @override
  String get image;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$FavoritePicksImplCopyWith<_$FavoritePicksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
