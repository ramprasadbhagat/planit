// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blogs_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlogResponse {
  List<Blog> get blogs => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlogResponseCopyWith<BlogResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogResponseCopyWith<$Res> {
  factory $BlogResponseCopyWith(
          BlogResponse value, $Res Function(BlogResponse) then) =
      _$BlogResponseCopyWithImpl<$Res, BlogResponse>;
  @useResult
  $Res call({List<Blog> blogs, int totalCount});
}

/// @nodoc
class _$BlogResponseCopyWithImpl<$Res, $Val extends BlogResponse>
    implements $BlogResponseCopyWith<$Res> {
  _$BlogResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogs = null,
    Object? totalCount = null,
  }) {
    return _then(_value.copyWith(
      blogs: null == blogs
          ? _value.blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogResponseImplCopyWith<$Res>
    implements $BlogResponseCopyWith<$Res> {
  factory _$$BlogResponseImplCopyWith(
          _$BlogResponseImpl value, $Res Function(_$BlogResponseImpl) then) =
      __$$BlogResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Blog> blogs, int totalCount});
}

/// @nodoc
class __$$BlogResponseImplCopyWithImpl<$Res>
    extends _$BlogResponseCopyWithImpl<$Res, _$BlogResponseImpl>
    implements _$$BlogResponseImplCopyWith<$Res> {
  __$$BlogResponseImplCopyWithImpl(
      _$BlogResponseImpl _value, $Res Function(_$BlogResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogs = null,
    Object? totalCount = null,
  }) {
    return _then(_$BlogResponseImpl(
      blogs: null == blogs
          ? _value._blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BlogResponseImpl implements _BlogResponse {
  const _$BlogResponseImpl(
      {required final List<Blog> blogs, required this.totalCount})
      : _blogs = blogs;

  final List<Blog> _blogs;
  @override
  List<Blog> get blogs {
    if (_blogs is EqualUnmodifiableListView) return _blogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blogs);
  }

  @override
  final int totalCount;

  @override
  String toString() {
    return 'BlogResponse(blogs: $blogs, totalCount: $totalCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogResponseImpl &&
            const DeepCollectionEquality().equals(other._blogs, _blogs) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_blogs), totalCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogResponseImplCopyWith<_$BlogResponseImpl> get copyWith =>
      __$$BlogResponseImplCopyWithImpl<_$BlogResponseImpl>(this, _$identity);
}

abstract class _BlogResponse implements BlogResponse {
  const factory _BlogResponse(
      {required final List<Blog> blogs,
      required final int totalCount}) = _$BlogResponseImpl;

  @override
  List<Blog> get blogs;
  @override
  int get totalCount;
  @override
  @JsonKey(ignore: true)
  _$$BlogResponseImplCopyWith<_$BlogResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
