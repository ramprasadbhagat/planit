// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_recipes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchRecipesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchKey, bool forceRefresh) fetchProduct,
    required TResult Function() fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String searchKey, bool forceRefresh)? fetchProduct,
    TResult? Function()? fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchKey, bool forceRefresh)? fetchProduct,
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_FetchRecipes value) fetchProduct,
    required TResult Function(_FetchMore value) fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_FetchRecipes value)? fetchProduct,
    TResult? Function(_FetchMore value)? fetchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_FetchRecipes value)? fetchProduct,
    TResult Function(_FetchMore value)? fetchMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRecipesEventCopyWith<$Res> {
  factory $SearchRecipesEventCopyWith(
          SearchRecipesEvent value, $Res Function(SearchRecipesEvent) then) =
      _$SearchRecipesEventCopyWithImpl<$Res, SearchRecipesEvent>;
}

/// @nodoc
class _$SearchRecipesEventCopyWithImpl<$Res, $Val extends SearchRecipesEvent>
    implements $SearchRecipesEventCopyWith<$Res> {
  _$SearchRecipesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$SearchRecipesEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl();

  @override
  String toString() {
    return 'SearchRecipesEvent.initialized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchKey, bool forceRefresh) fetchProduct,
    required TResult Function() fetchMore,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String searchKey, bool forceRefresh)? fetchProduct,
    TResult? Function()? fetchMore,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchKey, bool forceRefresh)? fetchProduct,
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_FetchRecipes value) fetchProduct,
    required TResult Function(_FetchMore value) fetchMore,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_FetchRecipes value)? fetchProduct,
    TResult? Function(_FetchMore value)? fetchMore,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_FetchRecipes value)? fetchProduct,
    TResult Function(_FetchMore value)? fetchMore,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements SearchRecipesEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$FetchRecipesImplCopyWith<$Res> {
  factory _$$FetchRecipesImplCopyWith(
          _$FetchRecipesImpl value, $Res Function(_$FetchRecipesImpl) then) =
      __$$FetchRecipesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchKey, bool forceRefresh});
}

/// @nodoc
class __$$FetchRecipesImplCopyWithImpl<$Res>
    extends _$SearchRecipesEventCopyWithImpl<$Res, _$FetchRecipesImpl>
    implements _$$FetchRecipesImplCopyWith<$Res> {
  __$$FetchRecipesImplCopyWithImpl(
      _$FetchRecipesImpl _value, $Res Function(_$FetchRecipesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchKey = null,
    Object? forceRefresh = null,
  }) {
    return _then(_$FetchRecipesImpl(
      searchKey: null == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String,
      forceRefresh: null == forceRefresh
          ? _value.forceRefresh
          : forceRefresh // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FetchRecipesImpl implements _FetchRecipes {
  const _$FetchRecipesImpl(
      {required this.searchKey, this.forceRefresh = false});

  @override
  final String searchKey;
  @override
  @JsonKey()
  final bool forceRefresh;

  @override
  String toString() {
    return 'SearchRecipesEvent.fetchProduct(searchKey: $searchKey, forceRefresh: $forceRefresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRecipesImpl &&
            (identical(other.searchKey, searchKey) ||
                other.searchKey == searchKey) &&
            (identical(other.forceRefresh, forceRefresh) ||
                other.forceRefresh == forceRefresh));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchKey, forceRefresh);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchRecipesImplCopyWith<_$FetchRecipesImpl> get copyWith =>
      __$$FetchRecipesImplCopyWithImpl<_$FetchRecipesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchKey, bool forceRefresh) fetchProduct,
    required TResult Function() fetchMore,
  }) {
    return fetchProduct(searchKey, forceRefresh);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String searchKey, bool forceRefresh)? fetchProduct,
    TResult? Function()? fetchMore,
  }) {
    return fetchProduct?.call(searchKey, forceRefresh);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchKey, bool forceRefresh)? fetchProduct,
    TResult Function()? fetchMore,
    required TResult orElse(),
  }) {
    if (fetchProduct != null) {
      return fetchProduct(searchKey, forceRefresh);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_FetchRecipes value) fetchProduct,
    required TResult Function(_FetchMore value) fetchMore,
  }) {
    return fetchProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_FetchRecipes value)? fetchProduct,
    TResult? Function(_FetchMore value)? fetchMore,
  }) {
    return fetchProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_FetchRecipes value)? fetchProduct,
    TResult Function(_FetchMore value)? fetchMore,
    required TResult orElse(),
  }) {
    if (fetchProduct != null) {
      return fetchProduct(this);
    }
    return orElse();
  }
}

abstract class _FetchRecipes implements SearchRecipesEvent {
  const factory _FetchRecipes(
      {required final String searchKey,
      final bool forceRefresh}) = _$FetchRecipesImpl;

  String get searchKey;
  bool get forceRefresh;
  @JsonKey(ignore: true)
  _$$FetchRecipesImplCopyWith<_$FetchRecipesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchMoreImplCopyWith<$Res> {
  factory _$$FetchMoreImplCopyWith(
          _$FetchMoreImpl value, $Res Function(_$FetchMoreImpl) then) =
      __$$FetchMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchMoreImplCopyWithImpl<$Res>
    extends _$SearchRecipesEventCopyWithImpl<$Res, _$FetchMoreImpl>
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
    return 'SearchRecipesEvent.fetchMore()';
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
    required TResult Function() initialized,
    required TResult Function(String searchKey, bool forceRefresh) fetchProduct,
    required TResult Function() fetchMore,
  }) {
    return fetchMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String searchKey, bool forceRefresh)? fetchProduct,
    TResult? Function()? fetchMore,
  }) {
    return fetchMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchKey, bool forceRefresh)? fetchProduct,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_FetchRecipes value) fetchProduct,
    required TResult Function(_FetchMore value) fetchMore,
  }) {
    return fetchMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_FetchRecipes value)? fetchProduct,
    TResult? Function(_FetchMore value)? fetchMore,
  }) {
    return fetchMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_FetchRecipes value)? fetchProduct,
    TResult Function(_FetchMore value)? fetchMore,
    required TResult orElse(),
  }) {
    if (fetchMore != null) {
      return fetchMore(this);
    }
    return orElse();
  }
}

abstract class _FetchMore implements SearchRecipesEvent {
  const factory _FetchMore() = _$FetchMoreImpl;
}

/// @nodoc
mixin _$SearchRecipesState {
  List<Recipe> get recipes => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  int get totalItemCount => throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchRecipesStateCopyWith<SearchRecipesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRecipesStateCopyWith<$Res> {
  factory $SearchRecipesStateCopyWith(
          SearchRecipesState value, $Res Function(SearchRecipesState) then) =
      _$SearchRecipesStateCopyWithImpl<$Res, SearchRecipesState>;
  @useResult
  $Res call(
      {List<Recipe> recipes,
      bool isFetching,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      int currentPage,
      int totalItemCount,
      String searchText});
}

/// @nodoc
class _$SearchRecipesStateCopyWithImpl<$Res, $Val extends SearchRecipesState>
    implements $SearchRecipesStateCopyWith<$Res> {
  _$SearchRecipesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? isFetching = null,
    Object? apiFailureOrSuccessOption = null,
    Object? currentPage = null,
    Object? totalItemCount = null,
    Object? searchText = null,
  }) {
    return _then(_value.copyWith(
      recipes: null == recipes
          ? _value.recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
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
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchRecipesStateImplCopyWith<$Res>
    implements $SearchRecipesStateCopyWith<$Res> {
  factory _$$SearchRecipesStateImplCopyWith(_$SearchRecipesStateImpl value,
          $Res Function(_$SearchRecipesStateImpl) then) =
      __$$SearchRecipesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Recipe> recipes,
      bool isFetching,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      int currentPage,
      int totalItemCount,
      String searchText});
}

/// @nodoc
class __$$SearchRecipesStateImplCopyWithImpl<$Res>
    extends _$SearchRecipesStateCopyWithImpl<$Res, _$SearchRecipesStateImpl>
    implements _$$SearchRecipesStateImplCopyWith<$Res> {
  __$$SearchRecipesStateImplCopyWithImpl(_$SearchRecipesStateImpl _value,
      $Res Function(_$SearchRecipesStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipes = null,
    Object? isFetching = null,
    Object? apiFailureOrSuccessOption = null,
    Object? currentPage = null,
    Object? totalItemCount = null,
    Object? searchText = null,
  }) {
    return _then(_$SearchRecipesStateImpl(
      recipes: null == recipes
          ? _value._recipes
          : recipes // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
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
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchRecipesStateImpl extends _SearchRecipesState {
  const _$SearchRecipesStateImpl(
      {required final List<Recipe> recipes,
      required this.isFetching,
      required this.apiFailureOrSuccessOption,
      required this.currentPage,
      required this.totalItemCount,
      required this.searchText})
      : _recipes = recipes,
        super._();

  final List<Recipe> _recipes;
  @override
  List<Recipe> get recipes {
    if (_recipes is EqualUnmodifiableListView) return _recipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipes);
  }

  @override
  final bool isFetching;
  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;
  @override
  final int currentPage;
  @override
  final int totalItemCount;
  @override
  final String searchText;

  @override
  String toString() {
    return 'SearchRecipesState(recipes: $recipes, isFetching: $isFetching, apiFailureOrSuccessOption: $apiFailureOrSuccessOption, currentPage: $currentPage, totalItemCount: $totalItemCount, searchText: $searchText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRecipesStateImpl &&
            const DeepCollectionEquality().equals(other._recipes, _recipes) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.totalItemCount, totalItemCount) ||
                other.totalItemCount == totalItemCount) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_recipes),
      isFetching,
      apiFailureOrSuccessOption,
      currentPage,
      totalItemCount,
      searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRecipesStateImplCopyWith<_$SearchRecipesStateImpl> get copyWith =>
      __$$SearchRecipesStateImplCopyWithImpl<_$SearchRecipesStateImpl>(
          this, _$identity);
}

abstract class _SearchRecipesState extends SearchRecipesState {
  const factory _SearchRecipesState(
      {required final List<Recipe> recipes,
      required final bool isFetching,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption,
      required final int currentPage,
      required final int totalItemCount,
      required final String searchText}) = _$SearchRecipesStateImpl;
  const _SearchRecipesState._() : super._();

  @override
  List<Recipe> get recipes;
  @override
  bool get isFetching;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  int get currentPage;
  @override
  int get totalItemCount;
  @override
  String get searchText;
  @override
  @JsonKey(ignore: true)
  _$$SearchRecipesStateImplCopyWith<_$SearchRecipesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
