// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_comments_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlogCommentsDto _$BlogCommentsDtoFromJson(Map<String, dynamic> json) {
  return _BlogCommentsDto.fromJson(json);
}

/// @nodoc
mixin _$BlogCommentsDto {
  @JsonKey(defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_date')
  DateTime get commentDate => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get userName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogCommentsDtoCopyWith<BlogCommentsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogCommentsDtoCopyWith<$Res> {
  factory $BlogCommentsDtoCopyWith(
          BlogCommentsDto value, $Res Function(BlogCommentsDto) then) =
      _$BlogCommentsDtoCopyWithImpl<$Res, BlogCommentsDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String id,
      @JsonKey(defaultValue: '') String comment,
      @JsonKey(name: 'comment_date') DateTime commentDate,
      @JsonKey(defaultValue: '') String userName});
}

/// @nodoc
class _$BlogCommentsDtoCopyWithImpl<$Res, $Val extends BlogCommentsDto>
    implements $BlogCommentsDtoCopyWith<$Res> {
  _$BlogCommentsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? comment = null,
    Object? commentDate = null,
    Object? userName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      commentDate: null == commentDate
          ? _value.commentDate
          : commentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogCommentsDtoImplCopyWith<$Res>
    implements $BlogCommentsDtoCopyWith<$Res> {
  factory _$$BlogCommentsDtoImplCopyWith(_$BlogCommentsDtoImpl value,
          $Res Function(_$BlogCommentsDtoImpl) then) =
      __$$BlogCommentsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String id,
      @JsonKey(defaultValue: '') String comment,
      @JsonKey(name: 'comment_date') DateTime commentDate,
      @JsonKey(defaultValue: '') String userName});
}

/// @nodoc
class __$$BlogCommentsDtoImplCopyWithImpl<$Res>
    extends _$BlogCommentsDtoCopyWithImpl<$Res, _$BlogCommentsDtoImpl>
    implements _$$BlogCommentsDtoImplCopyWith<$Res> {
  __$$BlogCommentsDtoImplCopyWithImpl(
      _$BlogCommentsDtoImpl _value, $Res Function(_$BlogCommentsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? comment = null,
    Object? commentDate = null,
    Object? userName = null,
  }) {
    return _then(_$BlogCommentsDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      commentDate: null == commentDate
          ? _value.commentDate
          : commentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlogCommentsDtoImpl extends _BlogCommentsDto {
  const _$BlogCommentsDtoImpl(
      {@JsonKey(defaultValue: '') required this.id,
      @JsonKey(defaultValue: '') required this.comment,
      @JsonKey(name: 'comment_date') required this.commentDate,
      @JsonKey(defaultValue: '') required this.userName})
      : super._();

  factory _$BlogCommentsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogCommentsDtoImplFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String comment;
  @override
  @JsonKey(name: 'comment_date')
  final DateTime commentDate;
  @override
  @JsonKey(defaultValue: '')
  final String userName;

  @override
  String toString() {
    return 'BlogCommentsDto(id: $id, comment: $comment, commentDate: $commentDate, userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogCommentsDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.commentDate, commentDate) ||
                other.commentDate == commentDate) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, comment, commentDate, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogCommentsDtoImplCopyWith<_$BlogCommentsDtoImpl> get copyWith =>
      __$$BlogCommentsDtoImplCopyWithImpl<_$BlogCommentsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogCommentsDtoImplToJson(
      this,
    );
  }
}

abstract class _BlogCommentsDto extends BlogCommentsDto {
  const factory _BlogCommentsDto(
          {@JsonKey(defaultValue: '') required final String id,
          @JsonKey(defaultValue: '') required final String comment,
          @JsonKey(name: 'comment_date') required final DateTime commentDate,
          @JsonKey(defaultValue: '') required final String userName}) =
      _$BlogCommentsDtoImpl;
  const _BlogCommentsDto._() : super._();

  factory _BlogCommentsDto.fromJson(Map<String, dynamic> json) =
      _$BlogCommentsDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get id;
  @override
  @JsonKey(defaultValue: '')
  String get comment;
  @override
  @JsonKey(name: 'comment_date')
  DateTime get commentDate;
  @override
  @JsonKey(defaultValue: '')
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$BlogCommentsDtoImplCopyWith<_$BlogCommentsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
