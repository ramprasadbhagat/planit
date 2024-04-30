// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hot_recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HotRecipe {
  String get title => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HotRecipeCopyWith<HotRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotRecipeCopyWith<$Res> {
  factory $HotRecipeCopyWith(HotRecipe value, $Res Function(HotRecipe) then) =
      _$HotRecipeCopyWithImpl<$Res, HotRecipe>;
  @useResult
  $Res call({String title, String subTitle, String image, double rating});
}

/// @nodoc
class _$HotRecipeCopyWithImpl<$Res, $Val extends HotRecipe>
    implements $HotRecipeCopyWith<$Res> {
  _$HotRecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? image = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HotRecipeImplCopyWith<$Res>
    implements $HotRecipeCopyWith<$Res> {
  factory _$$HotRecipeImplCopyWith(
          _$HotRecipeImpl value, $Res Function(_$HotRecipeImpl) then) =
      __$$HotRecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String subTitle, String image, double rating});
}

/// @nodoc
class __$$HotRecipeImplCopyWithImpl<$Res>
    extends _$HotRecipeCopyWithImpl<$Res, _$HotRecipeImpl>
    implements _$$HotRecipeImplCopyWith<$Res> {
  __$$HotRecipeImplCopyWithImpl(
      _$HotRecipeImpl _value, $Res Function(_$HotRecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? image = null,
    Object? rating = null,
  }) {
    return _then(_$HotRecipeImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$HotRecipeImpl implements _HotRecipe {
  _$HotRecipeImpl(
      {required this.title,
      required this.subTitle,
      required this.image,
      required this.rating});

  @override
  final String title;
  @override
  final String subTitle;
  @override
  final String image;
  @override
  final double rating;

  @override
  String toString() {
    return 'HotRecipe(title: $title, subTitle: $subTitle, image: $image, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotRecipeImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, subTitle, image, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HotRecipeImplCopyWith<_$HotRecipeImpl> get copyWith =>
      __$$HotRecipeImplCopyWithImpl<_$HotRecipeImpl>(this, _$identity);
}

abstract class _HotRecipe implements HotRecipe {
  factory _HotRecipe(
      {required final String title,
      required final String subTitle,
      required final String image,
      required final double rating}) = _$HotRecipeImpl;

  @override
  String get title;
  @override
  String get subTitle;
  @override
  String get image;
  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$HotRecipeImplCopyWith<_$HotRecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
