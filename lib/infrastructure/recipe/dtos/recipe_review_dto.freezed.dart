// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_review_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecipeReviewDto _$RecipeReviewDtoFromJson(Map<String, dynamic> json) {
  return _RecipeReviewDto.fromJson(json);
}

/// @nodoc
mixin _$RecipeReviewDto {
  @JsonKey(name: '_id', defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get recipeId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0.0)
  double get recipeRating => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get recipeReviewerName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get recipeReviewComments => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeReviewDtoCopyWith<RecipeReviewDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeReviewDtoCopyWith<$Res> {
  factory $RecipeReviewDtoCopyWith(
          RecipeReviewDto value, $Res Function(RecipeReviewDto) then) =
      _$RecipeReviewDtoCopyWithImpl<$Res, RecipeReviewDto>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id', defaultValue: '') String id,
      @JsonKey(defaultValue: '') String userId,
      @JsonKey(defaultValue: '') String recipeId,
      @JsonKey(defaultValue: 0.0) double recipeRating,
      @JsonKey(defaultValue: '') String recipeReviewerName,
      @JsonKey(defaultValue: '') String recipeReviewComments,
      DateTime createdAt});
}

/// @nodoc
class _$RecipeReviewDtoCopyWithImpl<$Res, $Val extends RecipeReviewDto>
    implements $RecipeReviewDtoCopyWith<$Res> {
  _$RecipeReviewDtoCopyWithImpl(this._value, this._then);

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
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      recipeRating: null == recipeRating
          ? _value.recipeRating
          : recipeRating // ignore: cast_nullable_to_non_nullable
              as double,
      recipeReviewerName: null == recipeReviewerName
          ? _value.recipeReviewerName
          : recipeReviewerName // ignore: cast_nullable_to_non_nullable
              as String,
      recipeReviewComments: null == recipeReviewComments
          ? _value.recipeReviewComments
          : recipeReviewComments // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeReviewDtoImplCopyWith<$Res>
    implements $RecipeReviewDtoCopyWith<$Res> {
  factory _$$RecipeReviewDtoImplCopyWith(_$RecipeReviewDtoImpl value,
          $Res Function(_$RecipeReviewDtoImpl) then) =
      __$$RecipeReviewDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id', defaultValue: '') String id,
      @JsonKey(defaultValue: '') String userId,
      @JsonKey(defaultValue: '') String recipeId,
      @JsonKey(defaultValue: 0.0) double recipeRating,
      @JsonKey(defaultValue: '') String recipeReviewerName,
      @JsonKey(defaultValue: '') String recipeReviewComments,
      DateTime createdAt});
}

/// @nodoc
class __$$RecipeReviewDtoImplCopyWithImpl<$Res>
    extends _$RecipeReviewDtoCopyWithImpl<$Res, _$RecipeReviewDtoImpl>
    implements _$$RecipeReviewDtoImplCopyWith<$Res> {
  __$$RecipeReviewDtoImplCopyWithImpl(
      _$RecipeReviewDtoImpl _value, $Res Function(_$RecipeReviewDtoImpl) _then)
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
    return _then(_$RecipeReviewDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      recipeRating: null == recipeRating
          ? _value.recipeRating
          : recipeRating // ignore: cast_nullable_to_non_nullable
              as double,
      recipeReviewerName: null == recipeReviewerName
          ? _value.recipeReviewerName
          : recipeReviewerName // ignore: cast_nullable_to_non_nullable
              as String,
      recipeReviewComments: null == recipeReviewComments
          ? _value.recipeReviewComments
          : recipeReviewComments // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$RecipeReviewDtoImpl extends _RecipeReviewDto {
  const _$RecipeReviewDtoImpl(
      {@JsonKey(name: '_id', defaultValue: '') required this.id,
      @JsonKey(defaultValue: '') required this.userId,
      @JsonKey(defaultValue: '') required this.recipeId,
      @JsonKey(defaultValue: 0.0) required this.recipeRating,
      @JsonKey(defaultValue: '') required this.recipeReviewerName,
      @JsonKey(defaultValue: '') required this.recipeReviewComments,
      required this.createdAt})
      : super._();

  factory _$RecipeReviewDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeReviewDtoImplFromJson(json);

  @override
  @JsonKey(name: '_id', defaultValue: '')
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String userId;
  @override
  @JsonKey(defaultValue: '')
  final String recipeId;
  @override
  @JsonKey(defaultValue: 0.0)
  final double recipeRating;
  @override
  @JsonKey(defaultValue: '')
  final String recipeReviewerName;
  @override
  @JsonKey(defaultValue: '')
  final String recipeReviewComments;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'RecipeReviewDto(id: $id, userId: $userId, recipeId: $recipeId, recipeRating: $recipeRating, recipeReviewerName: $recipeReviewerName, recipeReviewComments: $recipeReviewComments, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeReviewDtoImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, userId, recipeId,
      recipeRating, recipeReviewerName, recipeReviewComments, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeReviewDtoImplCopyWith<_$RecipeReviewDtoImpl> get copyWith =>
      __$$RecipeReviewDtoImplCopyWithImpl<_$RecipeReviewDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeReviewDtoImplToJson(
      this,
    );
  }
}

abstract class _RecipeReviewDto extends RecipeReviewDto {
  const factory _RecipeReviewDto(
      {@JsonKey(name: '_id', defaultValue: '') required final String id,
      @JsonKey(defaultValue: '') required final String userId,
      @JsonKey(defaultValue: '') required final String recipeId,
      @JsonKey(defaultValue: 0.0) required final double recipeRating,
      @JsonKey(defaultValue: '') required final String recipeReviewerName,
      @JsonKey(defaultValue: '') required final String recipeReviewComments,
      required final DateTime createdAt}) = _$RecipeReviewDtoImpl;
  const _RecipeReviewDto._() : super._();

  factory _RecipeReviewDto.fromJson(Map<String, dynamic> json) =
      _$RecipeReviewDtoImpl.fromJson;

  @override
  @JsonKey(name: '_id', defaultValue: '')
  String get id;
  @override
  @JsonKey(defaultValue: '')
  String get userId;
  @override
  @JsonKey(defaultValue: '')
  String get recipeId;
  @override
  @JsonKey(defaultValue: 0.0)
  double get recipeRating;
  @override
  @JsonKey(defaultValue: '')
  String get recipeReviewerName;
  @override
  @JsonKey(defaultValue: '')
  String get recipeReviewComments;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$RecipeReviewDtoImplCopyWith<_$RecipeReviewDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
