// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeDetailsDto _$RecipeDetailsDtoFromJson(Map<String, dynamic> json) {
  return _RecipeDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$RecipeDetailsDto {
  @JsonKey(defaultValue: {}, name: 'Recipe')
  Map<String, dynamic> get recipe => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [], readValue: parseReviews)
  List<Map<String, dynamic>> get reviews => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0.0, readValue: parseAverageRating)
  double get averageRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeDetailsDtoCopyWith<RecipeDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailsDtoCopyWith<$Res> {
  factory $RecipeDetailsDtoCopyWith(
          RecipeDetailsDto value, $Res Function(RecipeDetailsDto) then) =
      _$RecipeDetailsDtoCopyWithImpl<$Res, RecipeDetailsDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: {}, name: 'Recipe') Map<String, dynamic> recipe,
      @JsonKey(defaultValue: [], readValue: parseReviews)
      List<Map<String, dynamic>> reviews,
      @JsonKey(defaultValue: 0.0, readValue: parseAverageRating)
      double averageRating});
}

/// @nodoc
class _$RecipeDetailsDtoCopyWithImpl<$Res, $Val extends RecipeDetailsDto>
    implements $RecipeDetailsDtoCopyWith<$Res> {
  _$RecipeDetailsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
    Object? reviews = null,
    Object? averageRating = null,
  }) {
    return _then(_value.copyWith(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeDetailsDtoImplCopyWith<$Res>
    implements $RecipeDetailsDtoCopyWith<$Res> {
  factory _$$RecipeDetailsDtoImplCopyWith(_$RecipeDetailsDtoImpl value,
          $Res Function(_$RecipeDetailsDtoImpl) then) =
      __$$RecipeDetailsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: {}, name: 'Recipe') Map<String, dynamic> recipe,
      @JsonKey(defaultValue: [], readValue: parseReviews)
      List<Map<String, dynamic>> reviews,
      @JsonKey(defaultValue: 0.0, readValue: parseAverageRating)
      double averageRating});
}

/// @nodoc
class __$$RecipeDetailsDtoImplCopyWithImpl<$Res>
    extends _$RecipeDetailsDtoCopyWithImpl<$Res, _$RecipeDetailsDtoImpl>
    implements _$$RecipeDetailsDtoImplCopyWith<$Res> {
  __$$RecipeDetailsDtoImplCopyWithImpl(_$RecipeDetailsDtoImpl _value,
      $Res Function(_$RecipeDetailsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
    Object? reviews = null,
    Object? averageRating = null,
  }) {
    return _then(_$RecipeDetailsDtoImpl(
      recipe: null == recipe
          ? _value._recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      averageRating: null == averageRating
          ? _value.averageRating
          : averageRating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeDetailsDtoImpl extends _RecipeDetailsDto {
  const _$RecipeDetailsDtoImpl(
      {@JsonKey(defaultValue: {}, name: 'Recipe')
      required final Map<String, dynamic> recipe,
      @JsonKey(defaultValue: [], readValue: parseReviews)
      required final List<Map<String, dynamic>> reviews,
      @JsonKey(defaultValue: 0.0, readValue: parseAverageRating)
      required this.averageRating})
      : _recipe = recipe,
        _reviews = reviews,
        super._();

  factory _$RecipeDetailsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeDetailsDtoImplFromJson(json);

  final Map<String, dynamic> _recipe;
  @override
  @JsonKey(defaultValue: {}, name: 'Recipe')
  Map<String, dynamic> get recipe {
    if (_recipe is EqualUnmodifiableMapView) return _recipe;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_recipe);
  }

  final List<Map<String, dynamic>> _reviews;
  @override
  @JsonKey(defaultValue: [], readValue: parseReviews)
  List<Map<String, dynamic>> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  @JsonKey(defaultValue: 0.0, readValue: parseAverageRating)
  final double averageRating;

  @override
  String toString() {
    return 'RecipeDetailsDto(recipe: $recipe, reviews: $reviews, averageRating: $averageRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDetailsDtoImpl &&
            const DeepCollectionEquality().equals(other._recipe, _recipe) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.averageRating, averageRating) ||
                other.averageRating == averageRating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recipe),
      const DeepCollectionEquality().hash(_reviews),
      averageRating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeDetailsDtoImplCopyWith<_$RecipeDetailsDtoImpl> get copyWith =>
      __$$RecipeDetailsDtoImplCopyWithImpl<_$RecipeDetailsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeDetailsDtoImplToJson(
      this,
    );
  }
}

abstract class _RecipeDetailsDto extends RecipeDetailsDto {
  const factory _RecipeDetailsDto(
      {@JsonKey(defaultValue: {}, name: 'Recipe')
      required final Map<String, dynamic> recipe,
      @JsonKey(defaultValue: [], readValue: parseReviews)
      required final List<Map<String, dynamic>> reviews,
      @JsonKey(defaultValue: 0.0, readValue: parseAverageRating)
      required final double averageRating}) = _$RecipeDetailsDtoImpl;
  const _RecipeDetailsDto._() : super._();

  factory _RecipeDetailsDto.fromJson(Map<String, dynamic> json) =
      _$RecipeDetailsDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: {}, name: 'Recipe')
  Map<String, dynamic> get recipe;
  @override
  @JsonKey(defaultValue: [], readValue: parseReviews)
  List<Map<String, dynamic>> get reviews;
  @override
  @JsonKey(defaultValue: 0.0, readValue: parseAverageRating)
  double get averageRating;
  @override
  @JsonKey(ignore: true)
  _$$RecipeDetailsDtoImplCopyWith<_$RecipeDetailsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
