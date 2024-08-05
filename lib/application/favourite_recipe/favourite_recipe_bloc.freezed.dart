// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favourite_recipe_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavouriteRecipeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Recipe recipe) addToFavourite,
    required TResult Function(Recipe recipe) removeFromFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Recipe recipe)? addToFavourite,
    TResult? Function(Recipe recipe)? removeFromFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Recipe recipe)? addToFavourite,
    TResult Function(Recipe recipe)? removeFromFavourite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToFavourite value) addToFavourite,
    required TResult Function(_RemoveFromFavourite value) removeFromFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToFavourite value)? addToFavourite,
    TResult? Function(_RemoveFromFavourite value)? removeFromFavourite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeFromFavourite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteRecipeEventCopyWith<$Res> {
  factory $FavouriteRecipeEventCopyWith(FavouriteRecipeEvent value,
          $Res Function(FavouriteRecipeEvent) then) =
      _$FavouriteRecipeEventCopyWithImpl<$Res, FavouriteRecipeEvent>;
}

/// @nodoc
class _$FavouriteRecipeEventCopyWithImpl<$Res,
        $Val extends FavouriteRecipeEvent>
    implements $FavouriteRecipeEventCopyWith<$Res> {
  _$FavouriteRecipeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$FavouriteRecipeEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl();

  @override
  String toString() {
    return 'FavouriteRecipeEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Recipe recipe) addToFavourite,
    required TResult Function(Recipe recipe) removeFromFavourite,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Recipe recipe)? addToFavourite,
    TResult? Function(Recipe recipe)? removeFromFavourite,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Recipe recipe)? addToFavourite,
    TResult Function(Recipe recipe)? removeFromFavourite,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToFavourite value) addToFavourite,
    required TResult Function(_RemoveFromFavourite value) removeFromFavourite,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToFavourite value)? addToFavourite,
    TResult? Function(_RemoveFromFavourite value)? removeFromFavourite,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeFromFavourite,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements FavouriteRecipeEvent {
  const factory _Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$AddToFavouriteImplCopyWith<$Res> {
  factory _$$AddToFavouriteImplCopyWith(_$AddToFavouriteImpl value,
          $Res Function(_$AddToFavouriteImpl) then) =
      __$$AddToFavouriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Recipe recipe});

  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$AddToFavouriteImplCopyWithImpl<$Res>
    extends _$FavouriteRecipeEventCopyWithImpl<$Res, _$AddToFavouriteImpl>
    implements _$$AddToFavouriteImplCopyWith<$Res> {
  __$$AddToFavouriteImplCopyWithImpl(
      _$AddToFavouriteImpl _value, $Res Function(_$AddToFavouriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
  }) {
    return _then(_$AddToFavouriteImpl(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res> get recipe {
    return $RecipeCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value));
    });
  }
}

/// @nodoc

class _$AddToFavouriteImpl implements _AddToFavourite {
  const _$AddToFavouriteImpl({required this.recipe});

  @override
  final Recipe recipe;

  @override
  String toString() {
    return 'FavouriteRecipeEvent.addToFavourite(recipe: $recipe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToFavouriteImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToFavouriteImplCopyWith<_$AddToFavouriteImpl> get copyWith =>
      __$$AddToFavouriteImplCopyWithImpl<_$AddToFavouriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Recipe recipe) addToFavourite,
    required TResult Function(Recipe recipe) removeFromFavourite,
  }) {
    return addToFavourite(recipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Recipe recipe)? addToFavourite,
    TResult? Function(Recipe recipe)? removeFromFavourite,
  }) {
    return addToFavourite?.call(recipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Recipe recipe)? addToFavourite,
    TResult Function(Recipe recipe)? removeFromFavourite,
    required TResult orElse(),
  }) {
    if (addToFavourite != null) {
      return addToFavourite(recipe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToFavourite value) addToFavourite,
    required TResult Function(_RemoveFromFavourite value) removeFromFavourite,
  }) {
    return addToFavourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToFavourite value)? addToFavourite,
    TResult? Function(_RemoveFromFavourite value)? removeFromFavourite,
  }) {
    return addToFavourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeFromFavourite,
    required TResult orElse(),
  }) {
    if (addToFavourite != null) {
      return addToFavourite(this);
    }
    return orElse();
  }
}

abstract class _AddToFavourite implements FavouriteRecipeEvent {
  const factory _AddToFavourite({required final Recipe recipe}) =
      _$AddToFavouriteImpl;

  Recipe get recipe;
  @JsonKey(ignore: true)
  _$$AddToFavouriteImplCopyWith<_$AddToFavouriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFromFavouriteImplCopyWith<$Res> {
  factory _$$RemoveFromFavouriteImplCopyWith(_$RemoveFromFavouriteImpl value,
          $Res Function(_$RemoveFromFavouriteImpl) then) =
      __$$RemoveFromFavouriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Recipe recipe});

  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$RemoveFromFavouriteImplCopyWithImpl<$Res>
    extends _$FavouriteRecipeEventCopyWithImpl<$Res, _$RemoveFromFavouriteImpl>
    implements _$$RemoveFromFavouriteImplCopyWith<$Res> {
  __$$RemoveFromFavouriteImplCopyWithImpl(_$RemoveFromFavouriteImpl _value,
      $Res Function(_$RemoveFromFavouriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
  }) {
    return _then(_$RemoveFromFavouriteImpl(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res> get recipe {
    return $RecipeCopyWith<$Res>(_value.recipe, (value) {
      return _then(_value.copyWith(recipe: value));
    });
  }
}

/// @nodoc

class _$RemoveFromFavouriteImpl implements _RemoveFromFavourite {
  const _$RemoveFromFavouriteImpl({required this.recipe});

  @override
  final Recipe recipe;

  @override
  String toString() {
    return 'FavouriteRecipeEvent.removeFromFavourite(recipe: $recipe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromFavouriteImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromFavouriteImplCopyWith<_$RemoveFromFavouriteImpl> get copyWith =>
      __$$RemoveFromFavouriteImplCopyWithImpl<_$RemoveFromFavouriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Recipe recipe) addToFavourite,
    required TResult Function(Recipe recipe) removeFromFavourite,
  }) {
    return removeFromFavourite(recipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(Recipe recipe)? addToFavourite,
    TResult? Function(Recipe recipe)? removeFromFavourite,
  }) {
    return removeFromFavourite?.call(recipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Recipe recipe)? addToFavourite,
    TResult Function(Recipe recipe)? removeFromFavourite,
    required TResult orElse(),
  }) {
    if (removeFromFavourite != null) {
      return removeFromFavourite(recipe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_AddToFavourite value) addToFavourite,
    required TResult Function(_RemoveFromFavourite value) removeFromFavourite,
  }) {
    return removeFromFavourite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_AddToFavourite value)? addToFavourite,
    TResult? Function(_RemoveFromFavourite value)? removeFromFavourite,
  }) {
    return removeFromFavourite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_AddToFavourite value)? addToFavourite,
    TResult Function(_RemoveFromFavourite value)? removeFromFavourite,
    required TResult orElse(),
  }) {
    if (removeFromFavourite != null) {
      return removeFromFavourite(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromFavourite implements FavouriteRecipeEvent {
  const factory _RemoveFromFavourite({required final Recipe recipe}) =
      _$RemoveFromFavouriteImpl;

  Recipe get recipe;
  @JsonKey(ignore: true)
  _$$RemoveFromFavouriteImplCopyWith<_$RemoveFromFavouriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavouriteRecipeState {
  List<Recipe> get favouriteRecipes => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavouriteRecipeStateCopyWith<FavouriteRecipeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavouriteRecipeStateCopyWith<$Res> {
  factory $FavouriteRecipeStateCopyWith(FavouriteRecipeState value,
          $Res Function(FavouriteRecipeState) then) =
      _$FavouriteRecipeStateCopyWithImpl<$Res, FavouriteRecipeState>;
  @useResult
  $Res call(
      {List<Recipe> favouriteRecipes,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching});
}

/// @nodoc
class _$FavouriteRecipeStateCopyWithImpl<$Res,
        $Val extends FavouriteRecipeState>
    implements $FavouriteRecipeStateCopyWith<$Res> {
  _$FavouriteRecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favouriteRecipes = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
  }) {
    return _then(_value.copyWith(
      favouriteRecipes: null == favouriteRecipes
          ? _value.favouriteRecipes
          : favouriteRecipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavouriteRecipeStateImplCopyWith<$Res>
    implements $FavouriteRecipeStateCopyWith<$Res> {
  factory _$$FavouriteRecipeStateImplCopyWith(_$FavouriteRecipeStateImpl value,
          $Res Function(_$FavouriteRecipeStateImpl) then) =
      __$$FavouriteRecipeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Recipe> favouriteRecipes,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching});
}

/// @nodoc
class __$$FavouriteRecipeStateImplCopyWithImpl<$Res>
    extends _$FavouriteRecipeStateCopyWithImpl<$Res, _$FavouriteRecipeStateImpl>
    implements _$$FavouriteRecipeStateImplCopyWith<$Res> {
  __$$FavouriteRecipeStateImplCopyWithImpl(_$FavouriteRecipeStateImpl _value,
      $Res Function(_$FavouriteRecipeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favouriteRecipes = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
  }) {
    return _then(_$FavouriteRecipeStateImpl(
      favouriteRecipes: null == favouriteRecipes
          ? _value._favouriteRecipes
          : favouriteRecipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FavouriteRecipeStateImpl extends _FavouriteRecipeState {
  const _$FavouriteRecipeStateImpl(
      {required final List<Recipe> favouriteRecipes,
      required this.apiFailureOrSuccessOption,
      required this.isFetching})
      : _favouriteRecipes = favouriteRecipes,
        super._();

  final List<Recipe> _favouriteRecipes;
  @override
  List<Recipe> get favouriteRecipes {
    if (_favouriteRecipes is EqualUnmodifiableListView)
      return _favouriteRecipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favouriteRecipes);
  }

  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;
  @override
  final bool isFetching;

  @override
  String toString() {
    return 'FavouriteRecipeState(favouriteRecipes: $favouriteRecipes, apiFailureOrSuccessOption: $apiFailureOrSuccessOption, isFetching: $isFetching)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavouriteRecipeStateImpl &&
            const DeepCollectionEquality()
                .equals(other._favouriteRecipes, _favouriteRecipes) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_favouriteRecipes),
      apiFailureOrSuccessOption,
      isFetching);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavouriteRecipeStateImplCopyWith<_$FavouriteRecipeStateImpl>
      get copyWith =>
          __$$FavouriteRecipeStateImplCopyWithImpl<_$FavouriteRecipeStateImpl>(
              this, _$identity);
}

abstract class _FavouriteRecipeState extends FavouriteRecipeState {
  const factory _FavouriteRecipeState(
      {required final List<Recipe> favouriteRecipes,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption,
      required final bool isFetching}) = _$FavouriteRecipeStateImpl;
  const _FavouriteRecipeState._() : super._();

  @override
  List<Recipe> get favouriteRecipes;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  bool get isFetching;
  @override
  @JsonKey(ignore: true)
  _$$FavouriteRecipeStateImplCopyWith<_$FavouriteRecipeStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
