// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'best_seller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BestSeller {
  String get title => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BestSellerCopyWith<BestSeller> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestSellerCopyWith<$Res> {
  factory $BestSellerCopyWith(
          BestSeller value, $Res Function(BestSeller) then) =
      _$BestSellerCopyWithImpl<$Res, BestSeller>;
  @useResult
  $Res call({String title, String image});
}

/// @nodoc
class _$BestSellerCopyWithImpl<$Res, $Val extends BestSeller>
    implements $BestSellerCopyWith<$Res> {
  _$BestSellerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BestSellerImplCopyWith<$Res>
    implements $BestSellerCopyWith<$Res> {
  factory _$$BestSellerImplCopyWith(
          _$BestSellerImpl value, $Res Function(_$BestSellerImpl) then) =
      __$$BestSellerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String image});
}

/// @nodoc
class __$$BestSellerImplCopyWithImpl<$Res>
    extends _$BestSellerCopyWithImpl<$Res, _$BestSellerImpl>
    implements _$$BestSellerImplCopyWith<$Res> {
  __$$BestSellerImplCopyWithImpl(
      _$BestSellerImpl _value, $Res Function(_$BestSellerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = null,
  }) {
    return _then(_$BestSellerImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$BestSellerImpl implements _BestSeller {
  _$BestSellerImpl({required this.title, required this.image});

  @override
  final String title;
  @override
  final String image;

  @override
  String toString() {
    return 'BestSeller(title: $title, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestSellerImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BestSellerImplCopyWith<_$BestSellerImpl> get copyWith =>
      __$$BestSellerImplCopyWithImpl<_$BestSellerImpl>(this, _$identity);
}

abstract class _BestSeller implements BestSeller {
  factory _BestSeller(
      {required final String title,
      required final String image}) = _$BestSellerImpl;

  @override
  String get title;
  @override
  String get image;
  @override
  @JsonKey(ignore: true)
  _$$BestSellerImplCopyWith<_$BestSellerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
