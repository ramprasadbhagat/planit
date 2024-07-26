// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_review.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeReview {
  StringValue get id => throw _privateConstructorUsedError;
  StringValue get userId => throw _privateConstructorUsedError;
  StringValue get recipeId => throw _privateConstructorUsedError;
  double get recipeRating => throw _privateConstructorUsedError;
  StringValue get recipeReviewerName => throw _privateConstructorUsedError;
  StringValue get recipeReviewComments => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeReviewCopyWith<RecipeReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeReviewCopyWith<$Res> {
  factory $RecipeReviewCopyWith(
          RecipeReview value, $Res Function(RecipeReview) then) =
      _$RecipeReviewCopyWithImpl<$Res, RecipeReview>;
  @useResult
  $Res call(
      {StringValue id,
      StringValue userId,
      StringValue recipeId,
      double recipeRating,
      StringValue recipeReviewerName,
      StringValue recipeReviewComments,
      DateTime createdAt});
}

/// @nodoc
class _$RecipeReviewCopyWithImpl<$Res, $Val extends RecipeReview>
    implements $RecipeReviewCopyWith<$Res> {
  _$RecipeReviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? recipeId = null,
    Object? recipeRating = null,
    Object? recipeReviewerName = null,
    Object? recipeReviewComments = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringValue,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      recipeRating: null == recipeRating
          ? _value.recipeRating
          : recipeRating // ignore: cast_nullable_to_non_nullable
              as double,
      recipeReviewerName: null == recipeReviewerName
          ? _value.recipeReviewerName
          : recipeReviewerName // ignore: cast_nullable_to_non_nullable
              as StringValue,
      recipeReviewComments: null == recipeReviewComments
          ? _value.recipeReviewComments
          : recipeReviewComments // ignore: cast_nullable_to_non_nullable
              as StringValue,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeReviewImplCopyWith<$Res>
    implements $RecipeReviewCopyWith<$Res> {
  factory _$$RecipeReviewImplCopyWith(
          _$RecipeReviewImpl value, $Res Function(_$RecipeReviewImpl) then) =
      __$$RecipeReviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringValue id,
      StringValue userId,
      StringValue recipeId,
      double recipeRating,
      StringValue recipeReviewerName,
      StringValue recipeReviewComments,
      DateTime createdAt});
}

/// @nodoc
class __$$RecipeReviewImplCopyWithImpl<$Res>
    extends _$RecipeReviewCopyWithImpl<$Res, _$RecipeReviewImpl>
    implements _$$RecipeReviewImplCopyWith<$Res> {
  __$$RecipeReviewImplCopyWithImpl(
      _$RecipeReviewImpl _value, $Res Function(_$RecipeReviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? recipeId = null,
    Object? recipeRating = null,
    Object? recipeReviewerName = null,
    Object? recipeReviewComments = null,
    Object? createdAt = null,
  }) {
    return _then(_$RecipeReviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringValue,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as StringValue,
      recipeRating: null == recipeRating
          ? _value.recipeRating
          : recipeRating // ignore: cast_nullable_to_non_nullable
              as double,
      recipeReviewerName: null == recipeReviewerName
          ? _value.recipeReviewerName
          : recipeReviewerName // ignore: cast_nullable_to_non_nullable
              as StringValue,
      recipeReviewComments: null == recipeReviewComments
          ? _value.recipeReviewComments
          : recipeReviewComments // ignore: cast_nullable_to_non_nullable
              as StringValue,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$RecipeReviewImpl implements _RecipeReview {
  const _$RecipeReviewImpl(
      {required this.id,
      required this.userId,
      required this.recipeId,
      required this.recipeRating,
      required this.recipeReviewerName,
      required this.recipeReviewComments,
      required this.createdAt});

  @override
  final StringValue id;
  @override
  final StringValue userId;
  @override
  final StringValue recipeId;
  @override
  final double recipeRating;
  @override
  final StringValue recipeReviewerName;
  @override
  final StringValue recipeReviewComments;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'RecipeReview(id: $id, userId: $userId, recipeId: $recipeId, recipeRating: $recipeRating, recipeReviewerName: $recipeReviewerName, recipeReviewComments: $recipeReviewComments, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeReviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.recipeRating, recipeRating) ||
                other.recipeRating == recipeRating) &&
            (identical(other.recipeReviewerName, recipeReviewerName) ||
                other.recipeReviewerName == recipeReviewerName) &&
            (identical(other.recipeReviewComments, recipeReviewComments) ||
                other.recipeReviewComments == recipeReviewComments) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, userId, recipeId,
      recipeRating, recipeReviewerName, recipeReviewComments, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeReviewImplCopyWith<_$RecipeReviewImpl> get copyWith =>
      __$$RecipeReviewImplCopyWithImpl<_$RecipeReviewImpl>(this, _$identity);
}

abstract class _RecipeReview implements RecipeReview {
  const factory _RecipeReview(
      {required final StringValue id,
      required final StringValue userId,
      required final StringValue recipeId,
      required final double recipeRating,
      required final StringValue recipeReviewerName,
      required final StringValue recipeReviewComments,
      required final DateTime createdAt}) = _$RecipeReviewImpl;

  @override
  StringValue get id;
  @override
  StringValue get userId;
  @override
  StringValue get recipeId;
  @override
  double get recipeRating;
  @override
  StringValue get recipeReviewerName;
  @override
  StringValue get recipeReviewComments;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$RecipeReviewImplCopyWith<_$RecipeReviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
