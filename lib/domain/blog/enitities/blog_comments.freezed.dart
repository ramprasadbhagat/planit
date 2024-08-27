// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_comments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlogComments {
  StringValue get id => throw _privateConstructorUsedError;
  StringValue get comment => throw _privateConstructorUsedError;
  DateTime get commentDate => throw _privateConstructorUsedError;
  StringValue get userName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlogCommentsCopyWith<BlogComments> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogCommentsCopyWith<$Res> {
  factory $BlogCommentsCopyWith(
          BlogComments value, $Res Function(BlogComments) then) =
      _$BlogCommentsCopyWithImpl<$Res, BlogComments>;
  @useResult
  $Res call(
      {StringValue id,
      StringValue comment,
      DateTime commentDate,
      StringValue userName});
}

/// @nodoc
class _$BlogCommentsCopyWithImpl<$Res, $Val extends BlogComments>
    implements $BlogCommentsCopyWith<$Res> {
  _$BlogCommentsCopyWithImpl(this._value, this._then);

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
              as StringValue,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as StringValue,
      commentDate: null == commentDate
          ? _value.commentDate
          : commentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as StringValue,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogCommentsImplCopyWith<$Res>
    implements $BlogCommentsCopyWith<$Res> {
  factory _$$BlogCommentsImplCopyWith(
          _$BlogCommentsImpl value, $Res Function(_$BlogCommentsImpl) then) =
      __$$BlogCommentsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringValue id,
      StringValue comment,
      DateTime commentDate,
      StringValue userName});
}

/// @nodoc
class __$$BlogCommentsImplCopyWithImpl<$Res>
    extends _$BlogCommentsCopyWithImpl<$Res, _$BlogCommentsImpl>
    implements _$$BlogCommentsImplCopyWith<$Res> {
  __$$BlogCommentsImplCopyWithImpl(
      _$BlogCommentsImpl _value, $Res Function(_$BlogCommentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? comment = null,
    Object? commentDate = null,
    Object? userName = null,
  }) {
    return _then(_$BlogCommentsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringValue,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as StringValue,
      commentDate: null == commentDate
          ? _value.commentDate
          : commentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as StringValue,
    ));
  }
}

/// @nodoc

class _$BlogCommentsImpl implements _BlogComments {
  const _$BlogCommentsImpl(
      {required this.id,
      required this.comment,
      required this.commentDate,
      required this.userName});

  @override
  final StringValue id;
  @override
  final StringValue comment;
  @override
  final DateTime commentDate;
  @override
  final StringValue userName;

  @override
  String toString() {
    return 'BlogComments(id: $id, comment: $comment, commentDate: $commentDate, userName: $userName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogCommentsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.commentDate, commentDate) ||
                other.commentDate == commentDate) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, comment, commentDate, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogCommentsImplCopyWith<_$BlogCommentsImpl> get copyWith =>
      __$$BlogCommentsImplCopyWithImpl<_$BlogCommentsImpl>(this, _$identity);
}

abstract class _BlogComments implements BlogComments {
  const factory _BlogComments(
      {required final StringValue id,
      required final StringValue comment,
      required final DateTime commentDate,
      required final StringValue userName}) = _$BlogCommentsImpl;

  @override
  StringValue get id;
  @override
  StringValue get comment;
  @override
  DateTime get commentDate;
  @override
  StringValue get userName;
  @override
  @JsonKey(ignore: true)
  _$$BlogCommentsImplCopyWith<_$BlogCommentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
