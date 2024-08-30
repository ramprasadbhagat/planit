// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BlogSearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchStringChange,
    required TResult Function(String text) search,
    required TResult Function() reset,
    required TResult Function() fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchStringChange,
    TResult? Function(String text)? search,
    TResult? Function()? reset,
    TResult? Function()? fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchStringChange,
    TResult Function(String text)? search,
    TResult Function()? reset,
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_searchStringChange value) searchStringChange,
    required TResult Function(_Search value) search,
    required TResult Function(_Reset value) reset,
    required TResult Function(_FetchMore value) fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_searchStringChange value)? searchStringChange,
    TResult? Function(_Search value)? search,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_FetchMore value)? fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_searchStringChange value)? searchStringChange,
    TResult Function(_Search value)? search,
    TResult Function(_Reset value)? reset,
    TResult Function(_FetchMore value)? fetchMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogSearchEventCopyWith<$Res> {
  factory $BlogSearchEventCopyWith(
          BlogSearchEvent value, $Res Function(BlogSearchEvent) then) =
      _$BlogSearchEventCopyWithImpl<$Res, BlogSearchEvent>;
}

/// @nodoc
class _$BlogSearchEventCopyWithImpl<$Res, $Val extends BlogSearchEvent>
    implements $BlogSearchEventCopyWith<$Res> {
  _$BlogSearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$searchStringChangeImplCopyWith<$Res> {
  factory _$$searchStringChangeImplCopyWith(_$searchStringChangeImpl value,
          $Res Function(_$searchStringChangeImpl) then) =
      __$$searchStringChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$searchStringChangeImplCopyWithImpl<$Res>
    extends _$BlogSearchEventCopyWithImpl<$Res, _$searchStringChangeImpl>
    implements _$$searchStringChangeImplCopyWith<$Res> {
  __$$searchStringChangeImplCopyWithImpl(_$searchStringChangeImpl _value,
      $Res Function(_$searchStringChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$searchStringChangeImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$searchStringChangeImpl implements _searchStringChange {
  const _$searchStringChangeImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'BlogSearchEvent.searchStringChange(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$searchStringChangeImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$searchStringChangeImplCopyWith<_$searchStringChangeImpl> get copyWith =>
      __$$searchStringChangeImplCopyWithImpl<_$searchStringChangeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchStringChange,
    required TResult Function(String text) search,
    required TResult Function() reset,
    required TResult Function() fetchMore,
  }) {
    return searchStringChange(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchStringChange,
    TResult? Function(String text)? search,
    TResult? Function()? reset,
    TResult? Function()? fetchMore,
  }) {
    return searchStringChange?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchStringChange,
    TResult Function(String text)? search,
    TResult Function()? reset,
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) {
    if (searchStringChange != null) {
      return searchStringChange(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_searchStringChange value) searchStringChange,
    required TResult Function(_Search value) search,
    required TResult Function(_Reset value) reset,
    required TResult Function(_FetchMore value) fetchMore,
  }) {
    return searchStringChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_searchStringChange value)? searchStringChange,
    TResult? Function(_Search value)? search,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_FetchMore value)? fetchMore,
  }) {
    return searchStringChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_searchStringChange value)? searchStringChange,
    TResult Function(_Search value)? search,
    TResult Function(_Reset value)? reset,
    TResult Function(_FetchMore value)? fetchMore,
    required TResult orElse(),
  }) {
    if (searchStringChange != null) {
      return searchStringChange(this);
    }
    return orElse();
  }
}

abstract class _searchStringChange implements BlogSearchEvent {
  const factory _searchStringChange(final String text) =
      _$searchStringChangeImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$searchStringChangeImplCopyWith<_$searchStringChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$BlogSearchEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$SearchImpl(
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'BlogSearchEvent.search(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchStringChange,
    required TResult Function(String text) search,
    required TResult Function() reset,
    required TResult Function() fetchMore,
  }) {
    return search(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchStringChange,
    TResult? Function(String text)? search,
    TResult? Function()? reset,
    TResult? Function()? fetchMore,
  }) {
    return search?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchStringChange,
    TResult Function(String text)? search,
    TResult Function()? reset,
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_searchStringChange value) searchStringChange,
    required TResult Function(_Search value) search,
    required TResult Function(_Reset value) reset,
    required TResult Function(_FetchMore value) fetchMore,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_searchStringChange value)? searchStringChange,
    TResult? Function(_Search value)? search,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_FetchMore value)? fetchMore,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_searchStringChange value)? searchStringChange,
    TResult Function(_Search value)? search,
    TResult Function(_Reset value)? reset,
    TResult Function(_FetchMore value)? fetchMore,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements BlogSearchEvent {
  const factory _Search(final String text) = _$SearchImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetImplCopyWith<$Res> {
  factory _$$ResetImplCopyWith(
          _$ResetImpl value, $Res Function(_$ResetImpl) then) =
      __$$ResetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetImplCopyWithImpl<$Res>
    extends _$BlogSearchEventCopyWithImpl<$Res, _$ResetImpl>
    implements _$$ResetImplCopyWith<$Res> {
  __$$ResetImplCopyWithImpl(
      _$ResetImpl _value, $Res Function(_$ResetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetImpl implements _Reset {
  const _$ResetImpl();

  @override
  String toString() {
    return 'BlogSearchEvent.reset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchStringChange,
    required TResult Function(String text) search,
    required TResult Function() reset,
    required TResult Function() fetchMore,
  }) {
    return reset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchStringChange,
    TResult? Function(String text)? search,
    TResult? Function()? reset,
    TResult? Function()? fetchMore,
  }) {
    return reset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchStringChange,
    TResult Function(String text)? search,
    TResult Function()? reset,
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_searchStringChange value) searchStringChange,
    required TResult Function(_Search value) search,
    required TResult Function(_Reset value) reset,
    required TResult Function(_FetchMore value) fetchMore,
  }) {
    return reset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_searchStringChange value)? searchStringChange,
    TResult? Function(_Search value)? search,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_FetchMore value)? fetchMore,
  }) {
    return reset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_searchStringChange value)? searchStringChange,
    TResult Function(_Search value)? search,
    TResult Function(_Reset value)? reset,
    TResult Function(_FetchMore value)? fetchMore,
    required TResult orElse(),
  }) {
    if (reset != null) {
      return reset(this);
    }
    return orElse();
  }
}

abstract class _Reset implements BlogSearchEvent {
  const factory _Reset() = _$ResetImpl;
}

/// @nodoc
abstract class _$$FetchMoreImplCopyWith<$Res> {
  factory _$$FetchMoreImplCopyWith(
          _$FetchMoreImpl value, $Res Function(_$FetchMoreImpl) then) =
      __$$FetchMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchMoreImplCopyWithImpl<$Res>
    extends _$BlogSearchEventCopyWithImpl<$Res, _$FetchMoreImpl>
    implements _$$FetchMoreImplCopyWith<$Res> {
  __$$FetchMoreImplCopyWithImpl(
      _$FetchMoreImpl _value, $Res Function(_$FetchMoreImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchMoreImpl implements _FetchMore {
  const _$FetchMoreImpl();

  @override
  String toString() {
    return 'BlogSearchEvent.fetchMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) searchStringChange,
    required TResult Function(String text) search,
    required TResult Function() reset,
    required TResult Function() fetchMore,
  }) {
    return fetchMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text)? searchStringChange,
    TResult? Function(String text)? search,
    TResult? Function()? reset,
    TResult? Function()? fetchMore,
  }) {
    return fetchMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? searchStringChange,
    TResult Function(String text)? search,
    TResult Function()? reset,
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) {
    if (fetchMore != null) {
      return fetchMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_searchStringChange value) searchStringChange,
    required TResult Function(_Search value) search,
    required TResult Function(_Reset value) reset,
    required TResult Function(_FetchMore value) fetchMore,
  }) {
    return fetchMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_searchStringChange value)? searchStringChange,
    TResult? Function(_Search value)? search,
    TResult? Function(_Reset value)? reset,
    TResult? Function(_FetchMore value)? fetchMore,
  }) {
    return fetchMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_searchStringChange value)? searchStringChange,
    TResult Function(_Search value)? search,
    TResult Function(_Reset value)? reset,
    TResult Function(_FetchMore value)? fetchMore,
    required TResult orElse(),
  }) {
    if (fetchMore != null) {
      return fetchMore(this);
    }
    return orElse();
  }
}

abstract class _FetchMore implements BlogSearchEvent {
  const factory _FetchMore() = _$FetchMoreImpl;
}

/// @nodoc
mixin _$BlogSearchState {
  String get searchText => throw _privateConstructorUsedError;
  List<Blog> get blogs => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get totalItemCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlogSearchStateCopyWith<BlogSearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogSearchStateCopyWith<$Res> {
  factory $BlogSearchStateCopyWith(
          BlogSearchState value, $Res Function(BlogSearchState) then) =
      _$BlogSearchStateCopyWithImpl<$Res, BlogSearchState>;
  @useResult
  $Res call(
      {String searchText,
      List<Blog> blogs,
      bool isLoading,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      int currentPage,
      int totalItemCount});
}

/// @nodoc
class _$BlogSearchStateCopyWithImpl<$Res, $Val extends BlogSearchState>
    implements $BlogSearchStateCopyWith<$Res> {
  _$BlogSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
    Object? blogs = null,
    Object? isLoading = null,
    Object? apiFailureOrSuccessOption = null,
    Object? currentPage = null,
    Object? totalItemCount = null,
  }) {
    return _then(_value.copyWith(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      blogs: null == blogs
          ? _value.blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalItemCount: null == totalItemCount
          ? _value.totalItemCount
          : totalItemCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogSearchStateImplCopyWith<$Res>
    implements $BlogSearchStateCopyWith<$Res> {
  factory _$$BlogSearchStateImplCopyWith(_$BlogSearchStateImpl value,
          $Res Function(_$BlogSearchStateImpl) then) =
      __$$BlogSearchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String searchText,
      List<Blog> blogs,
      bool isLoading,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      int currentPage,
      int totalItemCount});
}

/// @nodoc
class __$$BlogSearchStateImplCopyWithImpl<$Res>
    extends _$BlogSearchStateCopyWithImpl<$Res, _$BlogSearchStateImpl>
    implements _$$BlogSearchStateImplCopyWith<$Res> {
  __$$BlogSearchStateImplCopyWithImpl(
      _$BlogSearchStateImpl _value, $Res Function(_$BlogSearchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
    Object? blogs = null,
    Object? isLoading = null,
    Object? apiFailureOrSuccessOption = null,
    Object? currentPage = null,
    Object? totalItemCount = null,
  }) {
    return _then(_$BlogSearchStateImpl(
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      blogs: null == blogs
          ? _value._blogs
          : blogs // ignore: cast_nullable_to_non_nullable
              as List<Blog>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      totalItemCount: null == totalItemCount
          ? _value.totalItemCount
          : totalItemCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BlogSearchStateImpl implements _BlogSearchState {
  const _$BlogSearchStateImpl(
      {required this.searchText,
      required final List<Blog> blogs,
      required this.isLoading,
      required this.apiFailureOrSuccessOption,
      required this.currentPage,
      required this.totalItemCount})
      : _blogs = blogs;

  @override
  final String searchText;
  final List<Blog> _blogs;
  @override
  List<Blog> get blogs {
    if (_blogs is EqualUnmodifiableListView) return _blogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_blogs);
  }

  @override
  final bool isLoading;
  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;
  @override
  final int currentPage;
  @override
  final int totalItemCount;

  @override
  String toString() {
    return 'BlogSearchState(searchText: $searchText, blogs: $blogs, isLoading: $isLoading, apiFailureOrSuccessOption: $apiFailureOrSuccessOption, currentPage: $currentPage, totalItemCount: $totalItemCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogSearchStateImpl &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            const DeepCollectionEquality().equals(other._blogs, _blogs) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalItemCount, totalItemCount) ||
                other.totalItemCount == totalItemCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      searchText,
      const DeepCollectionEquality().hash(_blogs),
      isLoading,
      apiFailureOrSuccessOption,
      currentPage,
      totalItemCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogSearchStateImplCopyWith<_$BlogSearchStateImpl> get copyWith =>
      __$$BlogSearchStateImplCopyWithImpl<_$BlogSearchStateImpl>(
          this, _$identity);
}

abstract class _BlogSearchState implements BlogSearchState {
  const factory _BlogSearchState(
      {required final String searchText,
      required final List<Blog> blogs,
      required final bool isLoading,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption,
      required final int currentPage,
      required final int totalItemCount}) = _$BlogSearchStateImpl;

  @override
  String get searchText;
  @override
  List<Blog> get blogs;
  @override
  bool get isLoading;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  int get currentPage;
  @override
  int get totalItemCount;
  @override
  @JsonKey(ignore: true)
  _$$BlogSearchStateImplCopyWith<_$BlogSearchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
