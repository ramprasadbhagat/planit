// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) fetch,
    required TResult Function(double rating) ratingChange,
    required TResult Function(String message) commentChange,
    required TResult Function(String reviewerName) addReviewClicked,
    required TResult Function() toggleViewAllReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? fetch,
    TResult? Function(double rating)? ratingChange,
    TResult? Function(String message)? commentChange,
    TResult? Function(String reviewerName)? addReviewClicked,
    TResult? Function()? toggleViewAllReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? fetch,
    TResult Function(double rating)? ratingChange,
    TResult Function(String message)? commentChange,
    TResult Function(String reviewerName)? addReviewClicked,
    TResult Function()? toggleViewAllReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_RatingChange value) ratingChange,
    required TResult Function(_CommentChange value) commentChange,
    required TResult Function(_AddReviewClicked value) addReviewClicked,
    required TResult Function(_ToggleViewAllReview value) toggleViewAllReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_RatingChange value)? ratingChange,
    TResult? Function(_CommentChange value)? commentChange,
    TResult? Function(_AddReviewClicked value)? addReviewClicked,
    TResult? Function(_ToggleViewAllReview value)? toggleViewAllReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_RatingChange value)? ratingChange,
    TResult Function(_CommentChange value)? commentChange,
    TResult Function(_AddReviewClicked value)? addReviewClicked,
    TResult Function(_ToggleViewAllReview value)? toggleViewAllReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailsEventCopyWith<$Res> {
  factory $RecipeDetailsEventCopyWith(
          RecipeDetailsEvent value, $Res Function(RecipeDetailsEvent) then) =
      _$RecipeDetailsEventCopyWithImpl<$Res, RecipeDetailsEvent>;
}

/// @nodoc
class _$RecipeDetailsEventCopyWithImpl<$Res, $Val extends RecipeDetailsEvent>
    implements $RecipeDetailsEventCopyWith<$Res> {
  _$RecipeDetailsEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({Recipe recipe});

  $RecipeCopyWith<$Res> get recipe;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$RecipeDetailsEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
  }) {
    return _then(_$FetchImpl(
      null == recipe
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

class _$FetchImpl with DiagnosticableTreeMixin implements _Fetch {
  const _$FetchImpl(this.recipe);

  @override
  final Recipe recipe;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeDetailsEvent.fetch(recipe: $recipe)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeDetailsEvent.fetch'))
      ..add(DiagnosticsProperty('recipe', recipe));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      __$$FetchImplCopyWithImpl<_$FetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) fetch,
    required TResult Function(double rating) ratingChange,
    required TResult Function(String message) commentChange,
    required TResult Function(String reviewerName) addReviewClicked,
    required TResult Function() toggleViewAllReview,
  }) {
    return fetch(recipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? fetch,
    TResult? Function(double rating)? ratingChange,
    TResult? Function(String message)? commentChange,
    TResult? Function(String reviewerName)? addReviewClicked,
    TResult? Function()? toggleViewAllReview,
  }) {
    return fetch?.call(recipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? fetch,
    TResult Function(double rating)? ratingChange,
    TResult Function(String message)? commentChange,
    TResult Function(String reviewerName)? addReviewClicked,
    TResult Function()? toggleViewAllReview,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(recipe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_RatingChange value) ratingChange,
    required TResult Function(_CommentChange value) commentChange,
    required TResult Function(_AddReviewClicked value) addReviewClicked,
    required TResult Function(_ToggleViewAllReview value) toggleViewAllReview,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_RatingChange value)? ratingChange,
    TResult? Function(_CommentChange value)? commentChange,
    TResult? Function(_AddReviewClicked value)? addReviewClicked,
    TResult? Function(_ToggleViewAllReview value)? toggleViewAllReview,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_RatingChange value)? ratingChange,
    TResult Function(_CommentChange value)? commentChange,
    TResult Function(_AddReviewClicked value)? addReviewClicked,
    TResult Function(_ToggleViewAllReview value)? toggleViewAllReview,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements RecipeDetailsEvent {
  const factory _Fetch(final Recipe recipe) = _$FetchImpl;

  Recipe get recipe;
  @JsonKey(ignore: true)
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RatingChangeImplCopyWith<$Res> {
  factory _$$RatingChangeImplCopyWith(
          _$RatingChangeImpl value, $Res Function(_$RatingChangeImpl) then) =
      __$$RatingChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double rating});
}

/// @nodoc
class __$$RatingChangeImplCopyWithImpl<$Res>
    extends _$RecipeDetailsEventCopyWithImpl<$Res, _$RatingChangeImpl>
    implements _$$RatingChangeImplCopyWith<$Res> {
  __$$RatingChangeImplCopyWithImpl(
      _$RatingChangeImpl _value, $Res Function(_$RatingChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
  }) {
    return _then(_$RatingChangeImpl(
      null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$RatingChangeImpl with DiagnosticableTreeMixin implements _RatingChange {
  const _$RatingChangeImpl(this.rating);

  @override
  final double rating;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeDetailsEvent.ratingChange(rating: $rating)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeDetailsEvent.ratingChange'))
      ..add(DiagnosticsProperty('rating', rating));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingChangeImpl &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingChangeImplCopyWith<_$RatingChangeImpl> get copyWith =>
      __$$RatingChangeImplCopyWithImpl<_$RatingChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) fetch,
    required TResult Function(double rating) ratingChange,
    required TResult Function(String message) commentChange,
    required TResult Function(String reviewerName) addReviewClicked,
    required TResult Function() toggleViewAllReview,
  }) {
    return ratingChange(rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? fetch,
    TResult? Function(double rating)? ratingChange,
    TResult? Function(String message)? commentChange,
    TResult? Function(String reviewerName)? addReviewClicked,
    TResult? Function()? toggleViewAllReview,
  }) {
    return ratingChange?.call(rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? fetch,
    TResult Function(double rating)? ratingChange,
    TResult Function(String message)? commentChange,
    TResult Function(String reviewerName)? addReviewClicked,
    TResult Function()? toggleViewAllReview,
    required TResult orElse(),
  }) {
    if (ratingChange != null) {
      return ratingChange(rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_RatingChange value) ratingChange,
    required TResult Function(_CommentChange value) commentChange,
    required TResult Function(_AddReviewClicked value) addReviewClicked,
    required TResult Function(_ToggleViewAllReview value) toggleViewAllReview,
  }) {
    return ratingChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_RatingChange value)? ratingChange,
    TResult? Function(_CommentChange value)? commentChange,
    TResult? Function(_AddReviewClicked value)? addReviewClicked,
    TResult? Function(_ToggleViewAllReview value)? toggleViewAllReview,
  }) {
    return ratingChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_RatingChange value)? ratingChange,
    TResult Function(_CommentChange value)? commentChange,
    TResult Function(_AddReviewClicked value)? addReviewClicked,
    TResult Function(_ToggleViewAllReview value)? toggleViewAllReview,
    required TResult orElse(),
  }) {
    if (ratingChange != null) {
      return ratingChange(this);
    }
    return orElse();
  }
}

abstract class _RatingChange implements RecipeDetailsEvent {
  const factory _RatingChange(final double rating) = _$RatingChangeImpl;

  double get rating;
  @JsonKey(ignore: true)
  _$$RatingChangeImplCopyWith<_$RatingChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommentChangeImplCopyWith<$Res> {
  factory _$$CommentChangeImplCopyWith(
          _$CommentChangeImpl value, $Res Function(_$CommentChangeImpl) then) =
      __$$CommentChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CommentChangeImplCopyWithImpl<$Res>
    extends _$RecipeDetailsEventCopyWithImpl<$Res, _$CommentChangeImpl>
    implements _$$CommentChangeImplCopyWith<$Res> {
  __$$CommentChangeImplCopyWithImpl(
      _$CommentChangeImpl _value, $Res Function(_$CommentChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CommentChangeImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommentChangeImpl
    with DiagnosticableTreeMixin
    implements _CommentChange {
  const _$CommentChangeImpl(this.message);

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeDetailsEvent.commentChange(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeDetailsEvent.commentChange'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentChangeImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentChangeImplCopyWith<_$CommentChangeImpl> get copyWith =>
      __$$CommentChangeImplCopyWithImpl<_$CommentChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) fetch,
    required TResult Function(double rating) ratingChange,
    required TResult Function(String message) commentChange,
    required TResult Function(String reviewerName) addReviewClicked,
    required TResult Function() toggleViewAllReview,
  }) {
    return commentChange(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? fetch,
    TResult? Function(double rating)? ratingChange,
    TResult? Function(String message)? commentChange,
    TResult? Function(String reviewerName)? addReviewClicked,
    TResult? Function()? toggleViewAllReview,
  }) {
    return commentChange?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? fetch,
    TResult Function(double rating)? ratingChange,
    TResult Function(String message)? commentChange,
    TResult Function(String reviewerName)? addReviewClicked,
    TResult Function()? toggleViewAllReview,
    required TResult orElse(),
  }) {
    if (commentChange != null) {
      return commentChange(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_RatingChange value) ratingChange,
    required TResult Function(_CommentChange value) commentChange,
    required TResult Function(_AddReviewClicked value) addReviewClicked,
    required TResult Function(_ToggleViewAllReview value) toggleViewAllReview,
  }) {
    return commentChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_RatingChange value)? ratingChange,
    TResult? Function(_CommentChange value)? commentChange,
    TResult? Function(_AddReviewClicked value)? addReviewClicked,
    TResult? Function(_ToggleViewAllReview value)? toggleViewAllReview,
  }) {
    return commentChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_RatingChange value)? ratingChange,
    TResult Function(_CommentChange value)? commentChange,
    TResult Function(_AddReviewClicked value)? addReviewClicked,
    TResult Function(_ToggleViewAllReview value)? toggleViewAllReview,
    required TResult orElse(),
  }) {
    if (commentChange != null) {
      return commentChange(this);
    }
    return orElse();
  }
}

abstract class _CommentChange implements RecipeDetailsEvent {
  const factory _CommentChange(final String message) = _$CommentChangeImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$CommentChangeImplCopyWith<_$CommentChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddReviewClickedImplCopyWith<$Res> {
  factory _$$AddReviewClickedImplCopyWith(_$AddReviewClickedImpl value,
          $Res Function(_$AddReviewClickedImpl) then) =
      __$$AddReviewClickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reviewerName});
}

/// @nodoc
class __$$AddReviewClickedImplCopyWithImpl<$Res>
    extends _$RecipeDetailsEventCopyWithImpl<$Res, _$AddReviewClickedImpl>
    implements _$$AddReviewClickedImplCopyWith<$Res> {
  __$$AddReviewClickedImplCopyWithImpl(_$AddReviewClickedImpl _value,
      $Res Function(_$AddReviewClickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reviewerName = null,
  }) {
    return _then(_$AddReviewClickedImpl(
      reviewerName: null == reviewerName
          ? _value.reviewerName
          : reviewerName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddReviewClickedImpl
    with DiagnosticableTreeMixin
    implements _AddReviewClicked {
  const _$AddReviewClickedImpl({required this.reviewerName});

  @override
  final String reviewerName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeDetailsEvent.addReviewClicked(reviewerName: $reviewerName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeDetailsEvent.addReviewClicked'))
      ..add(DiagnosticsProperty('reviewerName', reviewerName));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddReviewClickedImpl &&
            (identical(other.reviewerName, reviewerName) ||
                other.reviewerName == reviewerName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reviewerName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddReviewClickedImplCopyWith<_$AddReviewClickedImpl> get copyWith =>
      __$$AddReviewClickedImplCopyWithImpl<_$AddReviewClickedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) fetch,
    required TResult Function(double rating) ratingChange,
    required TResult Function(String message) commentChange,
    required TResult Function(String reviewerName) addReviewClicked,
    required TResult Function() toggleViewAllReview,
  }) {
    return addReviewClicked(reviewerName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? fetch,
    TResult? Function(double rating)? ratingChange,
    TResult? Function(String message)? commentChange,
    TResult? Function(String reviewerName)? addReviewClicked,
    TResult? Function()? toggleViewAllReview,
  }) {
    return addReviewClicked?.call(reviewerName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? fetch,
    TResult Function(double rating)? ratingChange,
    TResult Function(String message)? commentChange,
    TResult Function(String reviewerName)? addReviewClicked,
    TResult Function()? toggleViewAllReview,
    required TResult orElse(),
  }) {
    if (addReviewClicked != null) {
      return addReviewClicked(reviewerName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_RatingChange value) ratingChange,
    required TResult Function(_CommentChange value) commentChange,
    required TResult Function(_AddReviewClicked value) addReviewClicked,
    required TResult Function(_ToggleViewAllReview value) toggleViewAllReview,
  }) {
    return addReviewClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_RatingChange value)? ratingChange,
    TResult? Function(_CommentChange value)? commentChange,
    TResult? Function(_AddReviewClicked value)? addReviewClicked,
    TResult? Function(_ToggleViewAllReview value)? toggleViewAllReview,
  }) {
    return addReviewClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_RatingChange value)? ratingChange,
    TResult Function(_CommentChange value)? commentChange,
    TResult Function(_AddReviewClicked value)? addReviewClicked,
    TResult Function(_ToggleViewAllReview value)? toggleViewAllReview,
    required TResult orElse(),
  }) {
    if (addReviewClicked != null) {
      return addReviewClicked(this);
    }
    return orElse();
  }
}

abstract class _AddReviewClicked implements RecipeDetailsEvent {
  const factory _AddReviewClicked({required final String reviewerName}) =
      _$AddReviewClickedImpl;

  String get reviewerName;
  @JsonKey(ignore: true)
  _$$AddReviewClickedImplCopyWith<_$AddReviewClickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleViewAllReviewImplCopyWith<$Res> {
  factory _$$ToggleViewAllReviewImplCopyWith(_$ToggleViewAllReviewImpl value,
          $Res Function(_$ToggleViewAllReviewImpl) then) =
      __$$ToggleViewAllReviewImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleViewAllReviewImplCopyWithImpl<$Res>
    extends _$RecipeDetailsEventCopyWithImpl<$Res, _$ToggleViewAllReviewImpl>
    implements _$$ToggleViewAllReviewImplCopyWith<$Res> {
  __$$ToggleViewAllReviewImplCopyWithImpl(_$ToggleViewAllReviewImpl _value,
      $Res Function(_$ToggleViewAllReviewImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleViewAllReviewImpl
    with DiagnosticableTreeMixin
    implements _ToggleViewAllReview {
  const _$ToggleViewAllReviewImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeDetailsEvent.toggleViewAllReview()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'RecipeDetailsEvent.toggleViewAllReview'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleViewAllReviewImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) fetch,
    required TResult Function(double rating) ratingChange,
    required TResult Function(String message) commentChange,
    required TResult Function(String reviewerName) addReviewClicked,
    required TResult Function() toggleViewAllReview,
  }) {
    return toggleViewAllReview();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? fetch,
    TResult? Function(double rating)? ratingChange,
    TResult? Function(String message)? commentChange,
    TResult? Function(String reviewerName)? addReviewClicked,
    TResult? Function()? toggleViewAllReview,
  }) {
    return toggleViewAllReview?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? fetch,
    TResult Function(double rating)? ratingChange,
    TResult Function(String message)? commentChange,
    TResult Function(String reviewerName)? addReviewClicked,
    TResult Function()? toggleViewAllReview,
    required TResult orElse(),
  }) {
    if (toggleViewAllReview != null) {
      return toggleViewAllReview();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_RatingChange value) ratingChange,
    required TResult Function(_CommentChange value) commentChange,
    required TResult Function(_AddReviewClicked value) addReviewClicked,
    required TResult Function(_ToggleViewAllReview value) toggleViewAllReview,
  }) {
    return toggleViewAllReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_RatingChange value)? ratingChange,
    TResult? Function(_CommentChange value)? commentChange,
    TResult? Function(_AddReviewClicked value)? addReviewClicked,
    TResult? Function(_ToggleViewAllReview value)? toggleViewAllReview,
  }) {
    return toggleViewAllReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_RatingChange value)? ratingChange,
    TResult Function(_CommentChange value)? commentChange,
    TResult Function(_AddReviewClicked value)? addReviewClicked,
    TResult Function(_ToggleViewAllReview value)? toggleViewAllReview,
    required TResult orElse(),
  }) {
    if (toggleViewAllReview != null) {
      return toggleViewAllReview(this);
    }
    return orElse();
  }
}

abstract class _ToggleViewAllReview implements RecipeDetailsEvent {
  const factory _ToggleViewAllReview() = _$ToggleViewAllReviewImpl;
}

/// @nodoc
mixin _$RecipeDetailsState {
  RecipeDetails get recipeDetails => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  String get commentMessage => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get addingReview => throw _privateConstructorUsedError;
  bool get viewAllReviews => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeDetailsStateCopyWith<RecipeDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDetailsStateCopyWith<$Res> {
  factory $RecipeDetailsStateCopyWith(
          RecipeDetailsState value, $Res Function(RecipeDetailsState) then) =
      _$RecipeDetailsStateCopyWithImpl<$Res, RecipeDetailsState>;
  @useResult
  $Res call(
      {RecipeDetails recipeDetails,
      bool isFetching,
      String commentMessage,
      double rating,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool addingReview,
      bool viewAllReviews});

  $RecipeDetailsCopyWith<$Res> get recipeDetails;
}

/// @nodoc
class _$RecipeDetailsStateCopyWithImpl<$Res, $Val extends RecipeDetailsState>
    implements $RecipeDetailsStateCopyWith<$Res> {
  _$RecipeDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeDetails = null,
    Object? isFetching = null,
    Object? commentMessage = null,
    Object? rating = null,
    Object? apiFailureOrSuccessOption = null,
    Object? addingReview = null,
    Object? viewAllReviews = null,
  }) {
    return _then(_value.copyWith(
      recipeDetails: null == recipeDetails
          ? _value.recipeDetails
          : recipeDetails // ignore: cast_nullable_to_non_nullable
              as RecipeDetails,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      commentMessage: null == commentMessage
          ? _value.commentMessage
          : commentMessage // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      addingReview: null == addingReview
          ? _value.addingReview
          : addingReview // ignore: cast_nullable_to_non_nullable
              as bool,
      viewAllReviews: null == viewAllReviews
          ? _value.viewAllReviews
          : viewAllReviews // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeDetailsCopyWith<$Res> get recipeDetails {
    return $RecipeDetailsCopyWith<$Res>(_value.recipeDetails, (value) {
      return _then(_value.copyWith(recipeDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecipeDetailsStateImplCopyWith<$Res>
    implements $RecipeDetailsStateCopyWith<$Res> {
  factory _$$RecipeDetailsStateImplCopyWith(_$RecipeDetailsStateImpl value,
          $Res Function(_$RecipeDetailsStateImpl) then) =
      __$$RecipeDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RecipeDetails recipeDetails,
      bool isFetching,
      String commentMessage,
      double rating,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool addingReview,
      bool viewAllReviews});

  @override
  $RecipeDetailsCopyWith<$Res> get recipeDetails;
}

/// @nodoc
class __$$RecipeDetailsStateImplCopyWithImpl<$Res>
    extends _$RecipeDetailsStateCopyWithImpl<$Res, _$RecipeDetailsStateImpl>
    implements _$$RecipeDetailsStateImplCopyWith<$Res> {
  __$$RecipeDetailsStateImplCopyWithImpl(_$RecipeDetailsStateImpl _value,
      $Res Function(_$RecipeDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeDetails = null,
    Object? isFetching = null,
    Object? commentMessage = null,
    Object? rating = null,
    Object? apiFailureOrSuccessOption = null,
    Object? addingReview = null,
    Object? viewAllReviews = null,
  }) {
    return _then(_$RecipeDetailsStateImpl(
      recipeDetails: null == recipeDetails
          ? _value.recipeDetails
          : recipeDetails // ignore: cast_nullable_to_non_nullable
              as RecipeDetails,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      commentMessage: null == commentMessage
          ? _value.commentMessage
          : commentMessage // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      addingReview: null == addingReview
          ? _value.addingReview
          : addingReview // ignore: cast_nullable_to_non_nullable
              as bool,
      viewAllReviews: null == viewAllReviews
          ? _value.viewAllReviews
          : viewAllReviews // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RecipeDetailsStateImpl
    with DiagnosticableTreeMixin
    implements _RecipeDetailsState {
  const _$RecipeDetailsStateImpl(
      {required this.recipeDetails,
      required this.isFetching,
      required this.commentMessage,
      required this.rating,
      required this.apiFailureOrSuccessOption,
      required this.addingReview,
      required this.viewAllReviews});

  @override
  final RecipeDetails recipeDetails;
  @override
  final bool isFetching;
  @override
  final String commentMessage;
  @override
  final double rating;
  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;
  @override
  final bool addingReview;
  @override
  final bool viewAllReviews;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RecipeDetailsState(recipeDetails: $recipeDetails, isFetching: $isFetching, commentMessage: $commentMessage, rating: $rating, apiFailureOrSuccessOption: $apiFailureOrSuccessOption, addingReview: $addingReview, viewAllReviews: $viewAllReviews)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RecipeDetailsState'))
      ..add(DiagnosticsProperty('recipeDetails', recipeDetails))
      ..add(DiagnosticsProperty('isFetching', isFetching))
      ..add(DiagnosticsProperty('commentMessage', commentMessage))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty(
          'apiFailureOrSuccessOption', apiFailureOrSuccessOption))
      ..add(DiagnosticsProperty('addingReview', addingReview))
      ..add(DiagnosticsProperty('viewAllReviews', viewAllReviews));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeDetailsStateImpl &&
            (identical(other.recipeDetails, recipeDetails) ||
                other.recipeDetails == recipeDetails) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.commentMessage, commentMessage) ||
                other.commentMessage == commentMessage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption) &&
            (identical(other.addingReview, addingReview) ||
                other.addingReview == addingReview) &&
            (identical(other.viewAllReviews, viewAllReviews) ||
                other.viewAllReviews == viewAllReviews));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      recipeDetails,
      isFetching,
      commentMessage,
      rating,
      apiFailureOrSuccessOption,
      addingReview,
      viewAllReviews);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeDetailsStateImplCopyWith<_$RecipeDetailsStateImpl> get copyWith =>
      __$$RecipeDetailsStateImplCopyWithImpl<_$RecipeDetailsStateImpl>(
          this, _$identity);
}

abstract class _RecipeDetailsState implements RecipeDetailsState {
  const factory _RecipeDetailsState(
      {required final RecipeDetails recipeDetails,
      required final bool isFetching,
      required final String commentMessage,
      required final double rating,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption,
      required final bool addingReview,
      required final bool viewAllReviews}) = _$RecipeDetailsStateImpl;

  @override
  RecipeDetails get recipeDetails;
  @override
  bool get isFetching;
  @override
  String get commentMessage;
  @override
  double get rating;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  bool get addingReview;
  @override
  bool get viewAllReviews;
  @override
  @JsonKey(ignore: true)
  _$$RecipeDetailsStateImplCopyWith<_$RecipeDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
