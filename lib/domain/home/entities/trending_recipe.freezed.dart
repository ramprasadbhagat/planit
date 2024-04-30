// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trending_recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrendingRecipe {
  String get title => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  int get preparationTime => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrendingRecipeCopyWith<TrendingRecipe> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrendingRecipeCopyWith<$Res> {
  factory $TrendingRecipeCopyWith(
          TrendingRecipe value, $Res Function(TrendingRecipe) then) =
      _$TrendingRecipeCopyWithImpl<$Res, TrendingRecipe>;
  @useResult
  $Res call(
      {String title,
      String subTitle,
      String image,
      double rating,
      int preparationTime,
      String level});
}

/// @nodoc
class _$TrendingRecipeCopyWithImpl<$Res, $Val extends TrendingRecipe>
    implements $TrendingRecipeCopyWith<$Res> {
  _$TrendingRecipeCopyWithImpl(this._value, this._then);

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
    Object? preparationTime = null,
    Object? level = null,
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
      preparationTime: null == preparationTime
          ? _value.preparationTime
          : preparationTime // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrendingRecipeImplCopyWith<$Res>
    implements $TrendingRecipeCopyWith<$Res> {
  factory _$$TrendingRecipeImplCopyWith(_$TrendingRecipeImpl value,
          $Res Function(_$TrendingRecipeImpl) then) =
      __$$TrendingRecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String subTitle,
      String image,
      double rating,
      int preparationTime,
      String level});
}

/// @nodoc
class __$$TrendingRecipeImplCopyWithImpl<$Res>
    extends _$TrendingRecipeCopyWithImpl<$Res, _$TrendingRecipeImpl>
    implements _$$TrendingRecipeImplCopyWith<$Res> {
  __$$TrendingRecipeImplCopyWithImpl(
      _$TrendingRecipeImpl _value, $Res Function(_$TrendingRecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? image = null,
    Object? rating = null,
    Object? preparationTime = null,
    Object? level = null,
  }) {
    return _then(_$TrendingRecipeImpl(
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
      preparationTime: null == preparationTime
          ? _value.preparationTime
          : preparationTime // ignore: cast_nullable_to_non_nullable
              as int,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TrendingRecipeImpl implements _TrendingRecipe {
  _$TrendingRecipeImpl(
      {required this.title,
      required this.subTitle,
      required this.image,
      required this.rating,
      required this.preparationTime,
      required this.level});

  @override
  final String title;
  @override
  final String subTitle;
  @override
  final String image;
  @override
  final double rating;
  @override
  final int preparationTime;
  @override
  final String level;

  @override
  String toString() {
    return 'TrendingRecipe(title: $title, subTitle: $subTitle, image: $image, rating: $rating, preparationTime: $preparationTime, level: $level)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrendingRecipeImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.preparationTime, preparationTime) ||
                other.preparationTime == preparationTime) &&
            (identical(other.level, level) || other.level == level));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, title, subTitle, image, rating, preparationTime, level);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrendingRecipeImplCopyWith<_$TrendingRecipeImpl> get copyWith =>
      __$$TrendingRecipeImplCopyWithImpl<_$TrendingRecipeImpl>(
          this, _$identity);
}

abstract class _TrendingRecipe implements TrendingRecipe {
  factory _TrendingRecipe(
      {required final String title,
      required final String subTitle,
      required final String image,
      required final double rating,
      required final int preparationTime,
      required final String level}) = _$TrendingRecipeImpl;

  @override
  String get title;
  @override
  String get subTitle;
  @override
  String get image;
  @override
  double get rating;
  @override
  int get preparationTime;
  @override
  String get level;
  @override
  @JsonKey(ignore: true)
  _$$TrendingRecipeImplCopyWith<_$TrendingRecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
