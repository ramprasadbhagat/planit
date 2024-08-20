// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlogDto _$BlogDtoFromJson(Map<String, dynamic> json) {
  return _BlogDto.fromJson(json);
}

/// @nodoc
mixin _$BlogDto {
  @JsonKey(defaultValue: '')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get blogTitle => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get blogContent => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<String> get blogImages => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<String> get keyword => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(readValue: blogTagReadValue, defaultValue: [])
  List<String> get blogTag => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: [])
  List<String> get hyperlink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogDtoCopyWith<BlogDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogDtoCopyWith<$Res> {
  factory $BlogDtoCopyWith(BlogDto value, $Res Function(BlogDto) then) =
      _$BlogDtoCopyWithImpl<$Res, BlogDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String id,
      @JsonKey(defaultValue: '') String userId,
      @JsonKey(defaultValue: '') String blogTitle,
      @JsonKey(defaultValue: '') String blogContent,
      @JsonKey(defaultValue: []) List<String> blogImages,
      @JsonKey(defaultValue: []) List<String> keyword,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(readValue: blogTagReadValue, defaultValue: [])
      List<String> blogTag,
      @JsonKey(defaultValue: []) List<String> hyperlink});
}

/// @nodoc
class _$BlogDtoCopyWithImpl<$Res, $Val extends BlogDto>
    implements $BlogDtoCopyWith<$Res> {
  _$BlogDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? blogTitle = null,
    Object? blogContent = null,
    Object? blogImages = null,
    Object? keyword = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? blogTag = null,
    Object? hyperlink = null,
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
      blogTitle: null == blogTitle
          ? _value.blogTitle
          : blogTitle // ignore: cast_nullable_to_non_nullable
              as String,
      blogContent: null == blogContent
          ? _value.blogContent
          : blogContent // ignore: cast_nullable_to_non_nullable
              as String,
      blogImages: null == blogImages
          ? _value.blogImages
          : blogImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      blogTag: null == blogTag
          ? _value.blogTag
          : blogTag // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hyperlink: null == hyperlink
          ? _value.hyperlink
          : hyperlink // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogDtoImplCopyWith<$Res> implements $BlogDtoCopyWith<$Res> {
  factory _$$BlogDtoImplCopyWith(
          _$BlogDtoImpl value, $Res Function(_$BlogDtoImpl) then) =
      __$$BlogDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String id,
      @JsonKey(defaultValue: '') String userId,
      @JsonKey(defaultValue: '') String blogTitle,
      @JsonKey(defaultValue: '') String blogContent,
      @JsonKey(defaultValue: []) List<String> blogImages,
      @JsonKey(defaultValue: []) List<String> keyword,
      DateTime createdAt,
      DateTime updatedAt,
      @JsonKey(readValue: blogTagReadValue, defaultValue: [])
      List<String> blogTag,
      @JsonKey(defaultValue: []) List<String> hyperlink});
}

/// @nodoc
class __$$BlogDtoImplCopyWithImpl<$Res>
    extends _$BlogDtoCopyWithImpl<$Res, _$BlogDtoImpl>
    implements _$$BlogDtoImplCopyWith<$Res> {
  __$$BlogDtoImplCopyWithImpl(
      _$BlogDtoImpl _value, $Res Function(_$BlogDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? userId = null,
    Object? blogTitle = null,
    Object? blogContent = null,
    Object? blogImages = null,
    Object? keyword = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? blogTag = null,
    Object? hyperlink = null,
  }) {
    return _then(_$BlogDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      blogTitle: null == blogTitle
          ? _value.blogTitle
          : blogTitle // ignore: cast_nullable_to_non_nullable
              as String,
      blogContent: null == blogContent
          ? _value.blogContent
          : blogContent // ignore: cast_nullable_to_non_nullable
              as String,
      blogImages: null == blogImages
          ? _value._blogImages
          : blogImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      keyword: null == keyword
          ? _value._keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      blogTag: null == blogTag
          ? _value._blogTag
          : blogTag // ignore: cast_nullable_to_non_nullable
              as List<String>,
      hyperlink: null == hyperlink
          ? _value._hyperlink
          : hyperlink // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$BlogDtoImpl extends _BlogDto {
  const _$BlogDtoImpl(
      {@JsonKey(defaultValue: '') required this.id,
      @JsonKey(defaultValue: '') required this.userId,
      @JsonKey(defaultValue: '') required this.blogTitle,
      @JsonKey(defaultValue: '') required this.blogContent,
      @JsonKey(defaultValue: []) required final List<String> blogImages,
      @JsonKey(defaultValue: []) required final List<String> keyword,
      required this.createdAt,
      required this.updatedAt,
      @JsonKey(readValue: blogTagReadValue, defaultValue: [])
      required final List<String> blogTag,
      @JsonKey(defaultValue: []) required final List<String> hyperlink})
      : _blogImages = blogImages,
        _keyword = keyword,
        _blogTag = blogTag,
        _hyperlink = hyperlink,
        super._();

  factory _$BlogDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogDtoImplFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String id;
  @override
  @JsonKey(defaultValue: '')
  final String userId;
  @override
  @JsonKey(defaultValue: '')
  final String blogTitle;
  @override
  @JsonKey(defaultValue: '')
  final String blogContent;
  final List<String> _blogImages;
  @override
  @JsonKey(defaultValue: [])
  List<String> get blogImages {
    if (_blogImages is EqualUnmodifiableListView) return _blogImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blogImages);
  }

  final List<String> _keyword;
  @override
  @JsonKey(defaultValue: [])
  List<String> get keyword {
    if (_keyword is EqualUnmodifiableListView) return _keyword;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keyword);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  final List<String> _blogTag;
  @override
  @JsonKey(readValue: blogTagReadValue, defaultValue: [])
  List<String> get blogTag {
    if (_blogTag is EqualUnmodifiableListView) return _blogTag;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blogTag);
  }

  final List<String> _hyperlink;
  @override
  @JsonKey(defaultValue: [])
  List<String> get hyperlink {
    if (_hyperlink is EqualUnmodifiableListView) return _hyperlink;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hyperlink);
  }

  @override
  String toString() {
    return 'BlogDto(id: $id, userId: $userId, blogTitle: $blogTitle, blogContent: $blogContent, blogImages: $blogImages, keyword: $keyword, createdAt: $createdAt, updatedAt: $updatedAt, blogTag: $blogTag, hyperlink: $hyperlink)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.blogTitle, blogTitle) ||
                other.blogTitle == blogTitle) &&
            (identical(other.blogContent, blogContent) ||
                other.blogContent == blogContent) &&
            const DeepCollectionEquality()
                .equals(other._blogImages, _blogImages) &&
            const DeepCollectionEquality().equals(other._keyword, _keyword) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other._blogTag, _blogTag) &&
            const DeepCollectionEquality()
                .equals(other._hyperlink, _hyperlink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userId,
      blogTitle,
      blogContent,
      const DeepCollectionEquality().hash(_blogImages),
      const DeepCollectionEquality().hash(_keyword),
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(_blogTag),
      const DeepCollectionEquality().hash(_hyperlink));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogDtoImplCopyWith<_$BlogDtoImpl> get copyWith =>
      __$$BlogDtoImplCopyWithImpl<_$BlogDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogDtoImplToJson(
      this,
    );
  }
}

abstract class _BlogDto extends BlogDto {
  const factory _BlogDto(
          {@JsonKey(defaultValue: '') required final String id,
          @JsonKey(defaultValue: '') required final String userId,
          @JsonKey(defaultValue: '') required final String blogTitle,
          @JsonKey(defaultValue: '') required final String blogContent,
          @JsonKey(defaultValue: []) required final List<String> blogImages,
          @JsonKey(defaultValue: []) required final List<String> keyword,
          required final DateTime createdAt,
          required final DateTime updatedAt,
          @JsonKey(readValue: blogTagReadValue, defaultValue: [])
          required final List<String> blogTag,
          @JsonKey(defaultValue: []) required final List<String> hyperlink}) =
      _$BlogDtoImpl;
  const _BlogDto._() : super._();

  factory _BlogDto.fromJson(Map<String, dynamic> json) = _$BlogDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get id;
  @override
  @JsonKey(defaultValue: '')
  String get userId;
  @override
  @JsonKey(defaultValue: '')
  String get blogTitle;
  @override
  @JsonKey(defaultValue: '')
  String get blogContent;
  @override
  @JsonKey(defaultValue: [])
  List<String> get blogImages;
  @override
  @JsonKey(defaultValue: [])
  List<String> get keyword;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(readValue: blogTagReadValue, defaultValue: [])
  List<String> get blogTag;
  @override
  @JsonKey(defaultValue: [])
  List<String> get hyperlink;
  @override
  @JsonKey(ignore: true)
  _$$BlogDtoImplCopyWith<_$BlogDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
