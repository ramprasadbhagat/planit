// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlogDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Blog blog, bool isUnAuthenticated) fetch,
    required TResult Function(String blogId) fetchComments,
    required TResult Function(String value) onCommentInputChange,
    required TResult Function(String blogId) addCommentClicked,
    required TResult Function() viewAllCommentClicked,
    required TResult Function(String blogId) likeClicked,
    required TResult Function(String blogId) dislikeClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Blog blog, bool isUnAuthenticated)? fetch,
    TResult? Function(String blogId)? fetchComments,
    TResult? Function(String value)? onCommentInputChange,
    TResult? Function(String blogId)? addCommentClicked,
    TResult? Function()? viewAllCommentClicked,
    TResult? Function(String blogId)? likeClicked,
    TResult? Function(String blogId)? dislikeClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Blog blog, bool isUnAuthenticated)? fetch,
    TResult Function(String blogId)? fetchComments,
    TResult Function(String value)? onCommentInputChange,
    TResult Function(String blogId)? addCommentClicked,
    TResult Function()? viewAllCommentClicked,
    TResult Function(String blogId)? likeClicked,
    TResult Function(String blogId)? dislikeClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchComments value) fetchComments,
    required TResult Function(_OnCommentInputChange value) onCommentInputChange,
    required TResult Function(_AddCommentClicked value) addCommentClicked,
    required TResult Function(_ViewAllCommentClicked value)
        viewAllCommentClicked,
    required TResult Function(_LikeClicked value) likeClicked,
    required TResult Function(_DislikeClicked value) dislikeClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchComments value)? fetchComments,
    TResult? Function(_OnCommentInputChange value)? onCommentInputChange,
    TResult? Function(_AddCommentClicked value)? addCommentClicked,
    TResult? Function(_ViewAllCommentClicked value)? viewAllCommentClicked,
    TResult? Function(_LikeClicked value)? likeClicked,
    TResult? Function(_DislikeClicked value)? dislikeClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_OnCommentInputChange value)? onCommentInputChange,
    TResult Function(_AddCommentClicked value)? addCommentClicked,
    TResult Function(_ViewAllCommentClicked value)? viewAllCommentClicked,
    TResult Function(_LikeClicked value)? likeClicked,
    TResult Function(_DislikeClicked value)? dislikeClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogDetailsEventCopyWith<$Res> {
  factory $BlogDetailsEventCopyWith(
          BlogDetailsEvent value, $Res Function(BlogDetailsEvent) then) =
      _$BlogDetailsEventCopyWithImpl<$Res, BlogDetailsEvent>;
}

/// @nodoc
class _$BlogDetailsEventCopyWithImpl<$Res, $Val extends BlogDetailsEvent>
    implements $BlogDetailsEventCopyWith<$Res> {
  _$BlogDetailsEventCopyWithImpl(this._value, this._then);

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
  $Res call({Blog blog, bool isUnAuthenticated});

  $BlogCopyWith<$Res> get blog;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$BlogDetailsEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blog = null,
    Object? isUnAuthenticated = null,
  }) {
    return _then(_$FetchImpl(
      null == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as Blog,
      null == isUnAuthenticated
          ? _value.isUnAuthenticated
          : isUnAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BlogCopyWith<$Res> get blog {
    return $BlogCopyWith<$Res>(_value.blog, (value) {
      return _then(_value.copyWith(blog: value));
    });
  }
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl(this.blog, this.isUnAuthenticated);

  @override
  final Blog blog;
  @override
  final bool isUnAuthenticated;

  @override
  String toString() {
    return 'BlogDetailsEvent.fetch(blog: $blog, isUnAuthenticated: $isUnAuthenticated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchImpl &&
            (identical(other.blog, blog) || other.blog == blog) &&
            (identical(other.isUnAuthenticated, isUnAuthenticated) ||
                other.isUnAuthenticated == isUnAuthenticated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blog, isUnAuthenticated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      __$$FetchImplCopyWithImpl<_$FetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Blog blog, bool isUnAuthenticated) fetch,
    required TResult Function(String blogId) fetchComments,
    required TResult Function(String value) onCommentInputChange,
    required TResult Function(String blogId) addCommentClicked,
    required TResult Function() viewAllCommentClicked,
    required TResult Function(String blogId) likeClicked,
    required TResult Function(String blogId) dislikeClicked,
  }) {
    return fetch(blog, isUnAuthenticated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Blog blog, bool isUnAuthenticated)? fetch,
    TResult? Function(String blogId)? fetchComments,
    TResult? Function(String value)? onCommentInputChange,
    TResult? Function(String blogId)? addCommentClicked,
    TResult? Function()? viewAllCommentClicked,
    TResult? Function(String blogId)? likeClicked,
    TResult? Function(String blogId)? dislikeClicked,
  }) {
    return fetch?.call(blog, isUnAuthenticated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Blog blog, bool isUnAuthenticated)? fetch,
    TResult Function(String blogId)? fetchComments,
    TResult Function(String value)? onCommentInputChange,
    TResult Function(String blogId)? addCommentClicked,
    TResult Function()? viewAllCommentClicked,
    TResult Function(String blogId)? likeClicked,
    TResult Function(String blogId)? dislikeClicked,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(blog, isUnAuthenticated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchComments value) fetchComments,
    required TResult Function(_OnCommentInputChange value) onCommentInputChange,
    required TResult Function(_AddCommentClicked value) addCommentClicked,
    required TResult Function(_ViewAllCommentClicked value)
        viewAllCommentClicked,
    required TResult Function(_LikeClicked value) likeClicked,
    required TResult Function(_DislikeClicked value) dislikeClicked,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchComments value)? fetchComments,
    TResult? Function(_OnCommentInputChange value)? onCommentInputChange,
    TResult? Function(_AddCommentClicked value)? addCommentClicked,
    TResult? Function(_ViewAllCommentClicked value)? viewAllCommentClicked,
    TResult? Function(_LikeClicked value)? likeClicked,
    TResult? Function(_DislikeClicked value)? dislikeClicked,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_OnCommentInputChange value)? onCommentInputChange,
    TResult Function(_AddCommentClicked value)? addCommentClicked,
    TResult Function(_ViewAllCommentClicked value)? viewAllCommentClicked,
    TResult Function(_LikeClicked value)? likeClicked,
    TResult Function(_DislikeClicked value)? dislikeClicked,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements BlogDetailsEvent {
  const factory _Fetch(final Blog blog, final bool isUnAuthenticated) =
      _$FetchImpl;

  Blog get blog;
  bool get isUnAuthenticated;
  @JsonKey(ignore: true)
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchCommentsImplCopyWith<$Res> {
  factory _$$FetchCommentsImplCopyWith(
          _$FetchCommentsImpl value, $Res Function(_$FetchCommentsImpl) then) =
      __$$FetchCommentsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String blogId});
}

/// @nodoc
class __$$FetchCommentsImplCopyWithImpl<$Res>
    extends _$BlogDetailsEventCopyWithImpl<$Res, _$FetchCommentsImpl>
    implements _$$FetchCommentsImplCopyWith<$Res> {
  __$$FetchCommentsImplCopyWithImpl(
      _$FetchCommentsImpl _value, $Res Function(_$FetchCommentsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogId = null,
  }) {
    return _then(_$FetchCommentsImpl(
      null == blogId
          ? _value.blogId
          : blogId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchCommentsImpl implements _FetchComments {
  const _$FetchCommentsImpl(this.blogId);

  @override
  final String blogId;

  @override
  String toString() {
    return 'BlogDetailsEvent.fetchComments(blogId: $blogId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchCommentsImpl &&
            (identical(other.blogId, blogId) || other.blogId == blogId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blogId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchCommentsImplCopyWith<_$FetchCommentsImpl> get copyWith =>
      __$$FetchCommentsImplCopyWithImpl<_$FetchCommentsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Blog blog, bool isUnAuthenticated) fetch,
    required TResult Function(String blogId) fetchComments,
    required TResult Function(String value) onCommentInputChange,
    required TResult Function(String blogId) addCommentClicked,
    required TResult Function() viewAllCommentClicked,
    required TResult Function(String blogId) likeClicked,
    required TResult Function(String blogId) dislikeClicked,
  }) {
    return fetchComments(blogId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Blog blog, bool isUnAuthenticated)? fetch,
    TResult? Function(String blogId)? fetchComments,
    TResult? Function(String value)? onCommentInputChange,
    TResult? Function(String blogId)? addCommentClicked,
    TResult? Function()? viewAllCommentClicked,
    TResult? Function(String blogId)? likeClicked,
    TResult? Function(String blogId)? dislikeClicked,
  }) {
    return fetchComments?.call(blogId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Blog blog, bool isUnAuthenticated)? fetch,
    TResult Function(String blogId)? fetchComments,
    TResult Function(String value)? onCommentInputChange,
    TResult Function(String blogId)? addCommentClicked,
    TResult Function()? viewAllCommentClicked,
    TResult Function(String blogId)? likeClicked,
    TResult Function(String blogId)? dislikeClicked,
    required TResult orElse(),
  }) {
    if (fetchComments != null) {
      return fetchComments(blogId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchComments value) fetchComments,
    required TResult Function(_OnCommentInputChange value) onCommentInputChange,
    required TResult Function(_AddCommentClicked value) addCommentClicked,
    required TResult Function(_ViewAllCommentClicked value)
        viewAllCommentClicked,
    required TResult Function(_LikeClicked value) likeClicked,
    required TResult Function(_DislikeClicked value) dislikeClicked,
  }) {
    return fetchComments(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchComments value)? fetchComments,
    TResult? Function(_OnCommentInputChange value)? onCommentInputChange,
    TResult? Function(_AddCommentClicked value)? addCommentClicked,
    TResult? Function(_ViewAllCommentClicked value)? viewAllCommentClicked,
    TResult? Function(_LikeClicked value)? likeClicked,
    TResult? Function(_DislikeClicked value)? dislikeClicked,
  }) {
    return fetchComments?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_OnCommentInputChange value)? onCommentInputChange,
    TResult Function(_AddCommentClicked value)? addCommentClicked,
    TResult Function(_ViewAllCommentClicked value)? viewAllCommentClicked,
    TResult Function(_LikeClicked value)? likeClicked,
    TResult Function(_DislikeClicked value)? dislikeClicked,
    required TResult orElse(),
  }) {
    if (fetchComments != null) {
      return fetchComments(this);
    }
    return orElse();
  }
}

abstract class _FetchComments implements BlogDetailsEvent {
  const factory _FetchComments(final String blogId) = _$FetchCommentsImpl;

  String get blogId;
  @JsonKey(ignore: true)
  _$$FetchCommentsImplCopyWith<_$FetchCommentsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnCommentInputChangeImplCopyWith<$Res> {
  factory _$$OnCommentInputChangeImplCopyWith(_$OnCommentInputChangeImpl value,
          $Res Function(_$OnCommentInputChangeImpl) then) =
      __$$OnCommentInputChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$OnCommentInputChangeImplCopyWithImpl<$Res>
    extends _$BlogDetailsEventCopyWithImpl<$Res, _$OnCommentInputChangeImpl>
    implements _$$OnCommentInputChangeImplCopyWith<$Res> {
  __$$OnCommentInputChangeImplCopyWithImpl(_$OnCommentInputChangeImpl _value,
      $Res Function(_$OnCommentInputChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$OnCommentInputChangeImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnCommentInputChangeImpl implements _OnCommentInputChange {
  const _$OnCommentInputChangeImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'BlogDetailsEvent.onCommentInputChange(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnCommentInputChangeImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnCommentInputChangeImplCopyWith<_$OnCommentInputChangeImpl>
      get copyWith =>
          __$$OnCommentInputChangeImplCopyWithImpl<_$OnCommentInputChangeImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Blog blog, bool isUnAuthenticated) fetch,
    required TResult Function(String blogId) fetchComments,
    required TResult Function(String value) onCommentInputChange,
    required TResult Function(String blogId) addCommentClicked,
    required TResult Function() viewAllCommentClicked,
    required TResult Function(String blogId) likeClicked,
    required TResult Function(String blogId) dislikeClicked,
  }) {
    return onCommentInputChange(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Blog blog, bool isUnAuthenticated)? fetch,
    TResult? Function(String blogId)? fetchComments,
    TResult? Function(String value)? onCommentInputChange,
    TResult? Function(String blogId)? addCommentClicked,
    TResult? Function()? viewAllCommentClicked,
    TResult? Function(String blogId)? likeClicked,
    TResult? Function(String blogId)? dislikeClicked,
  }) {
    return onCommentInputChange?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Blog blog, bool isUnAuthenticated)? fetch,
    TResult Function(String blogId)? fetchComments,
    TResult Function(String value)? onCommentInputChange,
    TResult Function(String blogId)? addCommentClicked,
    TResult Function()? viewAllCommentClicked,
    TResult Function(String blogId)? likeClicked,
    TResult Function(String blogId)? dislikeClicked,
    required TResult orElse(),
  }) {
    if (onCommentInputChange != null) {
      return onCommentInputChange(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchComments value) fetchComments,
    required TResult Function(_OnCommentInputChange value) onCommentInputChange,
    required TResult Function(_AddCommentClicked value) addCommentClicked,
    required TResult Function(_ViewAllCommentClicked value)
        viewAllCommentClicked,
    required TResult Function(_LikeClicked value) likeClicked,
    required TResult Function(_DislikeClicked value) dislikeClicked,
  }) {
    return onCommentInputChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchComments value)? fetchComments,
    TResult? Function(_OnCommentInputChange value)? onCommentInputChange,
    TResult? Function(_AddCommentClicked value)? addCommentClicked,
    TResult? Function(_ViewAllCommentClicked value)? viewAllCommentClicked,
    TResult? Function(_LikeClicked value)? likeClicked,
    TResult? Function(_DislikeClicked value)? dislikeClicked,
  }) {
    return onCommentInputChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_OnCommentInputChange value)? onCommentInputChange,
    TResult Function(_AddCommentClicked value)? addCommentClicked,
    TResult Function(_ViewAllCommentClicked value)? viewAllCommentClicked,
    TResult Function(_LikeClicked value)? likeClicked,
    TResult Function(_DislikeClicked value)? dislikeClicked,
    required TResult orElse(),
  }) {
    if (onCommentInputChange != null) {
      return onCommentInputChange(this);
    }
    return orElse();
  }
}

abstract class _OnCommentInputChange implements BlogDetailsEvent {
  const factory _OnCommentInputChange(final String value) =
      _$OnCommentInputChangeImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$OnCommentInputChangeImplCopyWith<_$OnCommentInputChangeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddCommentClickedImplCopyWith<$Res> {
  factory _$$AddCommentClickedImplCopyWith(_$AddCommentClickedImpl value,
          $Res Function(_$AddCommentClickedImpl) then) =
      __$$AddCommentClickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String blogId});
}

/// @nodoc
class __$$AddCommentClickedImplCopyWithImpl<$Res>
    extends _$BlogDetailsEventCopyWithImpl<$Res, _$AddCommentClickedImpl>
    implements _$$AddCommentClickedImplCopyWith<$Res> {
  __$$AddCommentClickedImplCopyWithImpl(_$AddCommentClickedImpl _value,
      $Res Function(_$AddCommentClickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogId = null,
  }) {
    return _then(_$AddCommentClickedImpl(
      null == blogId
          ? _value.blogId
          : blogId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddCommentClickedImpl implements _AddCommentClicked {
  const _$AddCommentClickedImpl(this.blogId);

  @override
  final String blogId;

  @override
  String toString() {
    return 'BlogDetailsEvent.addCommentClicked(blogId: $blogId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCommentClickedImpl &&
            (identical(other.blogId, blogId) || other.blogId == blogId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blogId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCommentClickedImplCopyWith<_$AddCommentClickedImpl> get copyWith =>
      __$$AddCommentClickedImplCopyWithImpl<_$AddCommentClickedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Blog blog, bool isUnAuthenticated) fetch,
    required TResult Function(String blogId) fetchComments,
    required TResult Function(String value) onCommentInputChange,
    required TResult Function(String blogId) addCommentClicked,
    required TResult Function() viewAllCommentClicked,
    required TResult Function(String blogId) likeClicked,
    required TResult Function(String blogId) dislikeClicked,
  }) {
    return addCommentClicked(blogId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Blog blog, bool isUnAuthenticated)? fetch,
    TResult? Function(String blogId)? fetchComments,
    TResult? Function(String value)? onCommentInputChange,
    TResult? Function(String blogId)? addCommentClicked,
    TResult? Function()? viewAllCommentClicked,
    TResult? Function(String blogId)? likeClicked,
    TResult? Function(String blogId)? dislikeClicked,
  }) {
    return addCommentClicked?.call(blogId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Blog blog, bool isUnAuthenticated)? fetch,
    TResult Function(String blogId)? fetchComments,
    TResult Function(String value)? onCommentInputChange,
    TResult Function(String blogId)? addCommentClicked,
    TResult Function()? viewAllCommentClicked,
    TResult Function(String blogId)? likeClicked,
    TResult Function(String blogId)? dislikeClicked,
    required TResult orElse(),
  }) {
    if (addCommentClicked != null) {
      return addCommentClicked(blogId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchComments value) fetchComments,
    required TResult Function(_OnCommentInputChange value) onCommentInputChange,
    required TResult Function(_AddCommentClicked value) addCommentClicked,
    required TResult Function(_ViewAllCommentClicked value)
        viewAllCommentClicked,
    required TResult Function(_LikeClicked value) likeClicked,
    required TResult Function(_DislikeClicked value) dislikeClicked,
  }) {
    return addCommentClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchComments value)? fetchComments,
    TResult? Function(_OnCommentInputChange value)? onCommentInputChange,
    TResult? Function(_AddCommentClicked value)? addCommentClicked,
    TResult? Function(_ViewAllCommentClicked value)? viewAllCommentClicked,
    TResult? Function(_LikeClicked value)? likeClicked,
    TResult? Function(_DislikeClicked value)? dislikeClicked,
  }) {
    return addCommentClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_OnCommentInputChange value)? onCommentInputChange,
    TResult Function(_AddCommentClicked value)? addCommentClicked,
    TResult Function(_ViewAllCommentClicked value)? viewAllCommentClicked,
    TResult Function(_LikeClicked value)? likeClicked,
    TResult Function(_DislikeClicked value)? dislikeClicked,
    required TResult orElse(),
  }) {
    if (addCommentClicked != null) {
      return addCommentClicked(this);
    }
    return orElse();
  }
}

abstract class _AddCommentClicked implements BlogDetailsEvent {
  const factory _AddCommentClicked(final String blogId) =
      _$AddCommentClickedImpl;

  String get blogId;
  @JsonKey(ignore: true)
  _$$AddCommentClickedImplCopyWith<_$AddCommentClickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ViewAllCommentClickedImplCopyWith<$Res> {
  factory _$$ViewAllCommentClickedImplCopyWith(
          _$ViewAllCommentClickedImpl value,
          $Res Function(_$ViewAllCommentClickedImpl) then) =
      __$$ViewAllCommentClickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ViewAllCommentClickedImplCopyWithImpl<$Res>
    extends _$BlogDetailsEventCopyWithImpl<$Res, _$ViewAllCommentClickedImpl>
    implements _$$ViewAllCommentClickedImplCopyWith<$Res> {
  __$$ViewAllCommentClickedImplCopyWithImpl(_$ViewAllCommentClickedImpl _value,
      $Res Function(_$ViewAllCommentClickedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ViewAllCommentClickedImpl implements _ViewAllCommentClicked {
  const _$ViewAllCommentClickedImpl();

  @override
  String toString() {
    return 'BlogDetailsEvent.viewAllCommentClicked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ViewAllCommentClickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Blog blog, bool isUnAuthenticated) fetch,
    required TResult Function(String blogId) fetchComments,
    required TResult Function(String value) onCommentInputChange,
    required TResult Function(String blogId) addCommentClicked,
    required TResult Function() viewAllCommentClicked,
    required TResult Function(String blogId) likeClicked,
    required TResult Function(String blogId) dislikeClicked,
  }) {
    return viewAllCommentClicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Blog blog, bool isUnAuthenticated)? fetch,
    TResult? Function(String blogId)? fetchComments,
    TResult? Function(String value)? onCommentInputChange,
    TResult? Function(String blogId)? addCommentClicked,
    TResult? Function()? viewAllCommentClicked,
    TResult? Function(String blogId)? likeClicked,
    TResult? Function(String blogId)? dislikeClicked,
  }) {
    return viewAllCommentClicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Blog blog, bool isUnAuthenticated)? fetch,
    TResult Function(String blogId)? fetchComments,
    TResult Function(String value)? onCommentInputChange,
    TResult Function(String blogId)? addCommentClicked,
    TResult Function()? viewAllCommentClicked,
    TResult Function(String blogId)? likeClicked,
    TResult Function(String blogId)? dislikeClicked,
    required TResult orElse(),
  }) {
    if (viewAllCommentClicked != null) {
      return viewAllCommentClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchComments value) fetchComments,
    required TResult Function(_OnCommentInputChange value) onCommentInputChange,
    required TResult Function(_AddCommentClicked value) addCommentClicked,
    required TResult Function(_ViewAllCommentClicked value)
        viewAllCommentClicked,
    required TResult Function(_LikeClicked value) likeClicked,
    required TResult Function(_DislikeClicked value) dislikeClicked,
  }) {
    return viewAllCommentClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchComments value)? fetchComments,
    TResult? Function(_OnCommentInputChange value)? onCommentInputChange,
    TResult? Function(_AddCommentClicked value)? addCommentClicked,
    TResult? Function(_ViewAllCommentClicked value)? viewAllCommentClicked,
    TResult? Function(_LikeClicked value)? likeClicked,
    TResult? Function(_DislikeClicked value)? dislikeClicked,
  }) {
    return viewAllCommentClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_OnCommentInputChange value)? onCommentInputChange,
    TResult Function(_AddCommentClicked value)? addCommentClicked,
    TResult Function(_ViewAllCommentClicked value)? viewAllCommentClicked,
    TResult Function(_LikeClicked value)? likeClicked,
    TResult Function(_DislikeClicked value)? dislikeClicked,
    required TResult orElse(),
  }) {
    if (viewAllCommentClicked != null) {
      return viewAllCommentClicked(this);
    }
    return orElse();
  }
}

abstract class _ViewAllCommentClicked implements BlogDetailsEvent {
  const factory _ViewAllCommentClicked() = _$ViewAllCommentClickedImpl;
}

/// @nodoc
abstract class _$$LikeClickedImplCopyWith<$Res> {
  factory _$$LikeClickedImplCopyWith(
          _$LikeClickedImpl value, $Res Function(_$LikeClickedImpl) then) =
      __$$LikeClickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String blogId});
}

/// @nodoc
class __$$LikeClickedImplCopyWithImpl<$Res>
    extends _$BlogDetailsEventCopyWithImpl<$Res, _$LikeClickedImpl>
    implements _$$LikeClickedImplCopyWith<$Res> {
  __$$LikeClickedImplCopyWithImpl(
      _$LikeClickedImpl _value, $Res Function(_$LikeClickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogId = null,
  }) {
    return _then(_$LikeClickedImpl(
      null == blogId
          ? _value.blogId
          : blogId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LikeClickedImpl implements _LikeClicked {
  const _$LikeClickedImpl(this.blogId);

  @override
  final String blogId;

  @override
  String toString() {
    return 'BlogDetailsEvent.likeClicked(blogId: $blogId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeClickedImpl &&
            (identical(other.blogId, blogId) || other.blogId == blogId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blogId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeClickedImplCopyWith<_$LikeClickedImpl> get copyWith =>
      __$$LikeClickedImplCopyWithImpl<_$LikeClickedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Blog blog, bool isUnAuthenticated) fetch,
    required TResult Function(String blogId) fetchComments,
    required TResult Function(String value) onCommentInputChange,
    required TResult Function(String blogId) addCommentClicked,
    required TResult Function() viewAllCommentClicked,
    required TResult Function(String blogId) likeClicked,
    required TResult Function(String blogId) dislikeClicked,
  }) {
    return likeClicked(blogId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Blog blog, bool isUnAuthenticated)? fetch,
    TResult? Function(String blogId)? fetchComments,
    TResult? Function(String value)? onCommentInputChange,
    TResult? Function(String blogId)? addCommentClicked,
    TResult? Function()? viewAllCommentClicked,
    TResult? Function(String blogId)? likeClicked,
    TResult? Function(String blogId)? dislikeClicked,
  }) {
    return likeClicked?.call(blogId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Blog blog, bool isUnAuthenticated)? fetch,
    TResult Function(String blogId)? fetchComments,
    TResult Function(String value)? onCommentInputChange,
    TResult Function(String blogId)? addCommentClicked,
    TResult Function()? viewAllCommentClicked,
    TResult Function(String blogId)? likeClicked,
    TResult Function(String blogId)? dislikeClicked,
    required TResult orElse(),
  }) {
    if (likeClicked != null) {
      return likeClicked(blogId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchComments value) fetchComments,
    required TResult Function(_OnCommentInputChange value) onCommentInputChange,
    required TResult Function(_AddCommentClicked value) addCommentClicked,
    required TResult Function(_ViewAllCommentClicked value)
        viewAllCommentClicked,
    required TResult Function(_LikeClicked value) likeClicked,
    required TResult Function(_DislikeClicked value) dislikeClicked,
  }) {
    return likeClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchComments value)? fetchComments,
    TResult? Function(_OnCommentInputChange value)? onCommentInputChange,
    TResult? Function(_AddCommentClicked value)? addCommentClicked,
    TResult? Function(_ViewAllCommentClicked value)? viewAllCommentClicked,
    TResult? Function(_LikeClicked value)? likeClicked,
    TResult? Function(_DislikeClicked value)? dislikeClicked,
  }) {
    return likeClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_OnCommentInputChange value)? onCommentInputChange,
    TResult Function(_AddCommentClicked value)? addCommentClicked,
    TResult Function(_ViewAllCommentClicked value)? viewAllCommentClicked,
    TResult Function(_LikeClicked value)? likeClicked,
    TResult Function(_DislikeClicked value)? dislikeClicked,
    required TResult orElse(),
  }) {
    if (likeClicked != null) {
      return likeClicked(this);
    }
    return orElse();
  }
}

abstract class _LikeClicked implements BlogDetailsEvent {
  const factory _LikeClicked(final String blogId) = _$LikeClickedImpl;

  String get blogId;
  @JsonKey(ignore: true)
  _$$LikeClickedImplCopyWith<_$LikeClickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DislikeClickedImplCopyWith<$Res> {
  factory _$$DislikeClickedImplCopyWith(_$DislikeClickedImpl value,
          $Res Function(_$DislikeClickedImpl) then) =
      __$$DislikeClickedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String blogId});
}

/// @nodoc
class __$$DislikeClickedImplCopyWithImpl<$Res>
    extends _$BlogDetailsEventCopyWithImpl<$Res, _$DislikeClickedImpl>
    implements _$$DislikeClickedImplCopyWith<$Res> {
  __$$DislikeClickedImplCopyWithImpl(
      _$DislikeClickedImpl _value, $Res Function(_$DislikeClickedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blogId = null,
  }) {
    return _then(_$DislikeClickedImpl(
      null == blogId
          ? _value.blogId
          : blogId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DislikeClickedImpl implements _DislikeClicked {
  const _$DislikeClickedImpl(this.blogId);

  @override
  final String blogId;

  @override
  String toString() {
    return 'BlogDetailsEvent.dislikeClicked(blogId: $blogId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DislikeClickedImpl &&
            (identical(other.blogId, blogId) || other.blogId == blogId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, blogId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DislikeClickedImplCopyWith<_$DislikeClickedImpl> get copyWith =>
      __$$DislikeClickedImplCopyWithImpl<_$DislikeClickedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Blog blog, bool isUnAuthenticated) fetch,
    required TResult Function(String blogId) fetchComments,
    required TResult Function(String value) onCommentInputChange,
    required TResult Function(String blogId) addCommentClicked,
    required TResult Function() viewAllCommentClicked,
    required TResult Function(String blogId) likeClicked,
    required TResult Function(String blogId) dislikeClicked,
  }) {
    return dislikeClicked(blogId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Blog blog, bool isUnAuthenticated)? fetch,
    TResult? Function(String blogId)? fetchComments,
    TResult? Function(String value)? onCommentInputChange,
    TResult? Function(String blogId)? addCommentClicked,
    TResult? Function()? viewAllCommentClicked,
    TResult? Function(String blogId)? likeClicked,
    TResult? Function(String blogId)? dislikeClicked,
  }) {
    return dislikeClicked?.call(blogId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Blog blog, bool isUnAuthenticated)? fetch,
    TResult Function(String blogId)? fetchComments,
    TResult Function(String value)? onCommentInputChange,
    TResult Function(String blogId)? addCommentClicked,
    TResult Function()? viewAllCommentClicked,
    TResult Function(String blogId)? likeClicked,
    TResult Function(String blogId)? dislikeClicked,
    required TResult orElse(),
  }) {
    if (dislikeClicked != null) {
      return dislikeClicked(blogId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_FetchComments value) fetchComments,
    required TResult Function(_OnCommentInputChange value) onCommentInputChange,
    required TResult Function(_AddCommentClicked value) addCommentClicked,
    required TResult Function(_ViewAllCommentClicked value)
        viewAllCommentClicked,
    required TResult Function(_LikeClicked value) likeClicked,
    required TResult Function(_DislikeClicked value) dislikeClicked,
  }) {
    return dislikeClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_FetchComments value)? fetchComments,
    TResult? Function(_OnCommentInputChange value)? onCommentInputChange,
    TResult? Function(_AddCommentClicked value)? addCommentClicked,
    TResult? Function(_ViewAllCommentClicked value)? viewAllCommentClicked,
    TResult? Function(_LikeClicked value)? likeClicked,
    TResult? Function(_DislikeClicked value)? dislikeClicked,
  }) {
    return dislikeClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Fetch value)? fetch,
    TResult Function(_FetchComments value)? fetchComments,
    TResult Function(_OnCommentInputChange value)? onCommentInputChange,
    TResult Function(_AddCommentClicked value)? addCommentClicked,
    TResult Function(_ViewAllCommentClicked value)? viewAllCommentClicked,
    TResult Function(_LikeClicked value)? likeClicked,
    TResult Function(_DislikeClicked value)? dislikeClicked,
    required TResult orElse(),
  }) {
    if (dislikeClicked != null) {
      return dislikeClicked(this);
    }
    return orElse();
  }
}

abstract class _DislikeClicked implements BlogDetailsEvent {
  const factory _DislikeClicked(final String blogId) = _$DislikeClickedImpl;

  String get blogId;
  @JsonKey(ignore: true)
  _$$DislikeClickedImplCopyWith<_$DislikeClickedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BlogDetailsState {
  Blog get blog => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get isFetchingComments => throw _privateConstructorUsedError;
  bool get isSubmitingComment => throw _privateConstructorUsedError;
  List<BlogComments> get blogComments => throw _privateConstructorUsedError;
  String get commentMessage => throw _privateConstructorUsedError;
  bool get viewAllComments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlogDetailsStateCopyWith<BlogDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogDetailsStateCopyWith<$Res> {
  factory $BlogDetailsStateCopyWith(
          BlogDetailsState value, $Res Function(BlogDetailsState) then) =
      _$BlogDetailsStateCopyWithImpl<$Res, BlogDetailsState>;
  @useResult
  $Res call(
      {Blog blog,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching,
      bool isFetchingComments,
      bool isSubmitingComment,
      List<BlogComments> blogComments,
      String commentMessage,
      bool viewAllComments});

  $BlogCopyWith<$Res> get blog;
}

/// @nodoc
class _$BlogDetailsStateCopyWithImpl<$Res, $Val extends BlogDetailsState>
    implements $BlogDetailsStateCopyWith<$Res> {
  _$BlogDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blog = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
    Object? isFetchingComments = null,
    Object? isSubmitingComment = null,
    Object? blogComments = null,
    Object? commentMessage = null,
    Object? viewAllComments = null,
  }) {
    return _then(_value.copyWith(
      blog: null == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as Blog,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingComments: null == isFetchingComments
          ? _value.isFetchingComments
          : isFetchingComments // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitingComment: null == isSubmitingComment
          ? _value.isSubmitingComment
          : isSubmitingComment // ignore: cast_nullable_to_non_nullable
              as bool,
      blogComments: null == blogComments
          ? _value.blogComments
          : blogComments // ignore: cast_nullable_to_non_nullable
              as List<BlogComments>,
      commentMessage: null == commentMessage
          ? _value.commentMessage
          : commentMessage // ignore: cast_nullable_to_non_nullable
              as String,
      viewAllComments: null == viewAllComments
          ? _value.viewAllComments
          : viewAllComments // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BlogCopyWith<$Res> get blog {
    return $BlogCopyWith<$Res>(_value.blog, (value) {
      return _then(_value.copyWith(blog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BlogDetailsStateImplCopyWith<$Res>
    implements $BlogDetailsStateCopyWith<$Res> {
  factory _$$BlogDetailsStateImplCopyWith(_$BlogDetailsStateImpl value,
          $Res Function(_$BlogDetailsStateImpl) then) =
      __$$BlogDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Blog blog,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching,
      bool isFetchingComments,
      bool isSubmitingComment,
      List<BlogComments> blogComments,
      String commentMessage,
      bool viewAllComments});

  @override
  $BlogCopyWith<$Res> get blog;
}

/// @nodoc
class __$$BlogDetailsStateImplCopyWithImpl<$Res>
    extends _$BlogDetailsStateCopyWithImpl<$Res, _$BlogDetailsStateImpl>
    implements _$$BlogDetailsStateImplCopyWith<$Res> {
  __$$BlogDetailsStateImplCopyWithImpl(_$BlogDetailsStateImpl _value,
      $Res Function(_$BlogDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? blog = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
    Object? isFetchingComments = null,
    Object? isSubmitingComment = null,
    Object? blogComments = null,
    Object? commentMessage = null,
    Object? viewAllComments = null,
  }) {
    return _then(_$BlogDetailsStateImpl(
      blog: null == blog
          ? _value.blog
          : blog // ignore: cast_nullable_to_non_nullable
              as Blog,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingComments: null == isFetchingComments
          ? _value.isFetchingComments
          : isFetchingComments // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitingComment: null == isSubmitingComment
          ? _value.isSubmitingComment
          : isSubmitingComment // ignore: cast_nullable_to_non_nullable
              as bool,
      blogComments: null == blogComments
          ? _value._blogComments
          : blogComments // ignore: cast_nullable_to_non_nullable
              as List<BlogComments>,
      commentMessage: null == commentMessage
          ? _value.commentMessage
          : commentMessage // ignore: cast_nullable_to_non_nullable
              as String,
      viewAllComments: null == viewAllComments
          ? _value.viewAllComments
          : viewAllComments // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BlogDetailsStateImpl implements _BlogDetailsState {
  const _$BlogDetailsStateImpl(
      {required this.blog,
      required this.apiFailureOrSuccessOption,
      required this.isFetching,
      required this.isFetchingComments,
      required this.isSubmitingComment,
      required final List<BlogComments> blogComments,
      required this.commentMessage,
      required this.viewAllComments})
      : _blogComments = blogComments;

  @override
  final Blog blog;
  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;
  @override
  final bool isFetching;
  @override
  final bool isFetchingComments;
  @override
  final bool isSubmitingComment;
  final List<BlogComments> _blogComments;
  @override
  List<BlogComments> get blogComments {
    if (_blogComments is EqualUnmodifiableListView) return _blogComments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blogComments);
  }

  @override
  final String commentMessage;
  @override
  final bool viewAllComments;

  @override
  String toString() {
    return 'BlogDetailsState(blog: $blog, apiFailureOrSuccessOption: $apiFailureOrSuccessOption, isFetching: $isFetching, isFetchingComments: $isFetchingComments, isSubmitingComment: $isSubmitingComment, blogComments: $blogComments, commentMessage: $commentMessage, viewAllComments: $viewAllComments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogDetailsStateImpl &&
            (identical(other.blog, blog) || other.blog == blog) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.isFetchingComments, isFetchingComments) ||
                other.isFetchingComments == isFetchingComments) &&
            (identical(other.isSubmitingComment, isSubmitingComment) ||
                other.isSubmitingComment == isSubmitingComment) &&
            const DeepCollectionEquality()
                .equals(other._blogComments, _blogComments) &&
            (identical(other.commentMessage, commentMessage) ||
                other.commentMessage == commentMessage) &&
            (identical(other.viewAllComments, viewAllComments) ||
                other.viewAllComments == viewAllComments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      blog,
      apiFailureOrSuccessOption,
      isFetching,
      isFetchingComments,
      isSubmitingComment,
      const DeepCollectionEquality().hash(_blogComments),
      commentMessage,
      viewAllComments);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogDetailsStateImplCopyWith<_$BlogDetailsStateImpl> get copyWith =>
      __$$BlogDetailsStateImplCopyWithImpl<_$BlogDetailsStateImpl>(
          this, _$identity);
}

abstract class _BlogDetailsState implements BlogDetailsState {
  const factory _BlogDetailsState(
      {required final Blog blog,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption,
      required final bool isFetching,
      required final bool isFetchingComments,
      required final bool isSubmitingComment,
      required final List<BlogComments> blogComments,
      required final String commentMessage,
      required final bool viewAllComments}) = _$BlogDetailsStateImpl;

  @override
  Blog get blog;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  bool get isFetching;
  @override
  bool get isFetchingComments;
  @override
  bool get isSubmitingComment;
  @override
  List<BlogComments> get blogComments;
  @override
  String get commentMessage;
  @override
  bool get viewAllComments;
  @override
  @JsonKey(ignore: true)
  _$$BlogDetailsStateImplCopyWith<_$BlogDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
