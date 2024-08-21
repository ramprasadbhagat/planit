// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Blog {
  StringValue get id => throw _privateConstructorUsedError;
  StringValue get title => throw _privateConstructorUsedError;
  StringValue get blogContent => throw _privateConstructorUsedError;
  List<StringValue> get keywords => throw _privateConstructorUsedError;
  List<StringValue> get blogImage => throw _privateConstructorUsedError;
  List<String> get blogTag => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  IntegerValue get likesCount => throw _privateConstructorUsedError;
  IntegerValue get dislikeCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlogCopyWith<Blog> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogCopyWith<$Res> {
  factory $BlogCopyWith(Blog value, $Res Function(Blog) then) =
      _$BlogCopyWithImpl<$Res, Blog>;
  @useResult
  $Res call(
      {StringValue id,
      StringValue title,
      StringValue blogContent,
      List<StringValue> keywords,
      List<StringValue> blogImage,
      List<String> blogTag,
      DateTime createdAt,
      DateTime updatedAt,
      IntegerValue likesCount,
      IntegerValue dislikeCount});
}

/// @nodoc
class _$BlogCopyWithImpl<$Res, $Val extends Blog>
    implements $BlogCopyWith<$Res> {
  _$BlogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? blogContent = null,
    Object? keywords = null,
    Object? blogImage = null,
    Object? blogTag = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? likesCount = null,
    Object? dislikeCount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringValue,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringValue,
      blogContent: null == blogContent
          ? _value.blogContent
          : blogContent // ignore: cast_nullable_to_non_nullable
              as StringValue,
      keywords: null == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<StringValue>,
      blogImage: null == blogImage
          ? _value.blogImage
          : blogImage // ignore: cast_nullable_to_non_nullable
              as List<StringValue>,
      blogTag: null == blogTag
          ? _value.blogTag
          : blogTag // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      dislikeCount: null == dislikeCount
          ? _value.dislikeCount
          : dislikeCount // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogImplCopyWith<$Res> implements $BlogCopyWith<$Res> {
  factory _$$BlogImplCopyWith(
          _$BlogImpl value, $Res Function(_$BlogImpl) then) =
      __$$BlogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringValue id,
      StringValue title,
      StringValue blogContent,
      List<StringValue> keywords,
      List<StringValue> blogImage,
      List<String> blogTag,
      DateTime createdAt,
      DateTime updatedAt,
      IntegerValue likesCount,
      IntegerValue dislikeCount});
}

/// @nodoc
class __$$BlogImplCopyWithImpl<$Res>
    extends _$BlogCopyWithImpl<$Res, _$BlogImpl>
    implements _$$BlogImplCopyWith<$Res> {
  __$$BlogImplCopyWithImpl(_$BlogImpl _value, $Res Function(_$BlogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? blogContent = null,
    Object? keywords = null,
    Object? blogImage = null,
    Object? blogTag = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? likesCount = null,
    Object? dislikeCount = null,
  }) {
    return _then(_$BlogImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as StringValue,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringValue,
      blogContent: null == blogContent
          ? _value.blogContent
          : blogContent // ignore: cast_nullable_to_non_nullable
              as StringValue,
      keywords: null == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<StringValue>,
      blogImage: null == blogImage
          ? _value._blogImage
          : blogImage // ignore: cast_nullable_to_non_nullable
              as List<StringValue>,
      blogTag: null == blogTag
          ? _value._blogTag
          : blogTag // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      likesCount: null == likesCount
          ? _value.likesCount
          : likesCount // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
      dislikeCount: null == dislikeCount
          ? _value.dislikeCount
          : dislikeCount // ignore: cast_nullable_to_non_nullable
              as IntegerValue,
    ));
  }
}

/// @nodoc

class _$BlogImpl implements _Blog {
  const _$BlogImpl(
      {required this.id,
      required this.title,
      required this.blogContent,
      required final List<StringValue> keywords,
      required final List<StringValue> blogImage,
      required final List<String> blogTag,
      required this.createdAt,
      required this.updatedAt,
      required this.likesCount,
      required this.dislikeCount})
      : _keywords = keywords,
        _blogImage = blogImage,
        _blogTag = blogTag;

  @override
  final StringValue id;
  @override
  final StringValue title;
  @override
  final StringValue blogContent;
  final List<StringValue> _keywords;
  @override
  List<StringValue> get keywords {
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keywords);
  }

  final List<StringValue> _blogImage;
  @override
  List<StringValue> get blogImage {
    if (_blogImage is EqualUnmodifiableListView) return _blogImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blogImage);
  }

  final List<String> _blogTag;
  @override
  List<String> get blogTag {
    if (_blogTag is EqualUnmodifiableListView) return _blogTag;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blogTag);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final IntegerValue likesCount;
  @override
  final IntegerValue dislikeCount;

  @override
  String toString() {
    return 'Blog(id: $id, title: $title, blogContent: $blogContent, keywords: $keywords, blogImage: $blogImage, blogTag: $blogTag, createdAt: $createdAt, updatedAt: $updatedAt, likesCount: $likesCount, dislikeCount: $dislikeCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.blogContent, blogContent) ||
                other.blogContent == blogContent) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords) &&
            const DeepCollectionEquality()
                .equals(other._blogImage, _blogImage) &&
            const DeepCollectionEquality().equals(other._blogTag, _blogTag) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.likesCount, likesCount) ||
                other.likesCount == likesCount) &&
            (identical(other.dislikeCount, dislikeCount) ||
                other.dislikeCount == dislikeCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      blogContent,
      const DeepCollectionEquality().hash(_keywords),
      const DeepCollectionEquality().hash(_blogImage),
      const DeepCollectionEquality().hash(_blogTag),
      createdAt,
      updatedAt,
      likesCount,
      dislikeCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogImplCopyWith<_$BlogImpl> get copyWith =>
      __$$BlogImplCopyWithImpl<_$BlogImpl>(this, _$identity);
}

abstract class _Blog implements Blog {
  const factory _Blog(
      {required final StringValue id,
      required final StringValue title,
      required final StringValue blogContent,
      required final List<StringValue> keywords,
      required final List<StringValue> blogImage,
      required final List<String> blogTag,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final IntegerValue likesCount,
      required final IntegerValue dislikeCount}) = _$BlogImpl;

  @override
  StringValue get id;
  @override
  StringValue get title;
  @override
  StringValue get blogContent;
  @override
  List<StringValue> get keywords;
  @override
  List<StringValue> get blogImage;
  @override
  List<String> get blogTag;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  IntegerValue get likesCount;
  @override
  IntegerValue get dislikeCount;
  @override
  @JsonKey(ignore: true)
  _$$BlogImplCopyWith<_$BlogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
