// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeDetails {
  Recipe get recipe => throw _privateConstructorUsedError;
  double get averageRating => throw _privateConstructorUsedError;
  List<RecipeReview> get reviews => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeDetailsCopyWith<RecipeDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailsCopyWith<$Res> {
  factory $RecipeDetailsCopyWith(
          RecipeDetails value, $Res Function(RecipeDetails) then) =
      _$RecipeDetailsCopyWithImpl<$Res, RecipeDetails>;
  @useResult
  $Res call({Recipe recipe, double averageRating, List<RecipeReview> reviews});

  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class _$RecipeDetailsCopyWithImpl<$Res, $Val extends RecipeDetails>
    implements $RecipeDetailsCopyWith<$Res> {
  _$RecipeDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
    Object? averageRating = null,
    Object? reviews = null,
  }) {
    return _then(_value.copyWith(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<RecipeReview>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res> get recipe {
    return $RecipeCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecipeDetailsImplCopyWith<$Res>
    implements $RecipeDetailsCopyWith<$Res> {
  factory _$$RecipeDetailsImplCopyWith(
          _$RecipeDetailsImpl value, $Res Function(_$RecipeDetailsImpl) then) =
      __$$RecipeDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Recipe recipe, double averageRating, List<RecipeReview> reviews});

  @override
  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$RecipeDetailsImplCopyWithImpl<$Res>
    extends _$RecipeDetailsCopyWithImpl<$Res, _$RecipeDetailsImpl>
    implements _$$RecipeDetailsImplCopyWith<$Res> {
  __$$RecipeDetailsImplCopyWithImpl(
      _$RecipeDetailsImpl _value, $Res Function(_$RecipeDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
    Object? averageRating = null,
    Object? reviews = null,
  }) {
    return _then(_$RecipeDetailsImpl(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<RecipeReview>,
    ));
  }
}

/// @nodoc

class _$RecipeDetailsImpl implements _RecipeDetails {
  const _$RecipeDetailsImpl(
      {required this.recipe,
      required this.averageRating,
      required final List<RecipeReview> reviews})
      : _reviews = reviews;

  @override
  final Recipe recipe;
  @override
  final double averageRating;
  final List<RecipeReview> _reviews;
  @override
  List<RecipeReview> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  String toString() {
    return 'RecipeDetails(recipe: $recipe, averageRating: $averageRating, reviews: $reviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDetailsImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe, averageRating,
      const DeepCollectionEquality().hash(_reviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeDetailsImplCopyWith<_$RecipeDetailsImpl> get copyWith =>
      __$$RecipeDetailsImplCopyWithImpl<_$RecipeDetailsImpl>(this, _$identity);
}

abstract class _RecipeDetails implements RecipeDetails {
  const factory _RecipeDetails(
      {required final Recipe recipe,
      required final double averageRating,
      required final List<RecipeReview> reviews}) = _$RecipeDetailsImpl;

  @override
  Recipe get recipe;
  @override
  double get averageRating;
  @override
  List<RecipeReview> get reviews;
  @override
  @JsonKey(ignore: true)
  _$$RecipeDetailsImplCopyWith<_$RecipeDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
