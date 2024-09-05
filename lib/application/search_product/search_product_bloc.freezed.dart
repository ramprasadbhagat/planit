// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchKey) fetchProduct,
    required TResult Function() onLoadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String searchKey)? fetchProduct,
    TResult? Function()? onLoadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchKey)? fetchProduct,
    TResult Function()? onLoadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_OnLoadMore value) onLoadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_OnLoadMore value)? onLoadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_OnLoadMore value)? onLoadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductEventCopyWith<$Res> {
  factory $SearchProductEventCopyWith(
          SearchProductEvent value, $Res Function(SearchProductEvent) then) =
      _$SearchProductEventCopyWithImpl<$Res, SearchProductEvent>;
}

/// @nodoc
class _$SearchProductEventCopyWithImpl<$Res, $Val extends SearchProductEvent>
    implements $SearchProductEventCopyWith<$Res> {
  _$SearchProductEventCopyWithImpl(this._value, this._then);

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
    extends _$SearchProductEventCopyWithImpl<$Res, _$InitializedImpl>
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
    return 'SearchProductEvent.initialized()';
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
    required TResult Function(String searchKey) fetchProduct,
    required TResult Function() onLoadMore,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String searchKey)? fetchProduct,
    TResult? Function()? onLoadMore,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchKey)? fetchProduct,
    TResult Function()? onLoadMore,
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
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_OnLoadMore value) onLoadMore,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_OnLoadMore value)? onLoadMore,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_OnLoadMore value)? onLoadMore,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements SearchProductEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$FetchProductImplCopyWith<$Res> {
  factory _$$FetchProductImplCopyWith(
          _$FetchProductImpl value, $Res Function(_$FetchProductImpl) then) =
      __$$FetchProductImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchKey});
}

/// @nodoc
class __$$FetchProductImplCopyWithImpl<$Res>
    extends _$SearchProductEventCopyWithImpl<$Res, _$FetchProductImpl>
    implements _$$FetchProductImplCopyWith<$Res> {
  __$$FetchProductImplCopyWithImpl(
      _$FetchProductImpl _value, $Res Function(_$FetchProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchKey = null,
  }) {
    return _then(_$FetchProductImpl(
      searchKey: null == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FetchProductImpl implements _FetchProduct {
  const _$FetchProductImpl({required this.searchKey});

  @override
  final String searchKey;

  @override
  String toString() {
    return 'SearchProductEvent.fetchProduct(searchKey: $searchKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProductImpl &&
            (identical(other.searchKey, searchKey) ||
                other.searchKey == searchKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchProductImplCopyWith<_$FetchProductImpl> get copyWith =>
      __$$FetchProductImplCopyWithImpl<_$FetchProductImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchKey) fetchProduct,
    required TResult Function() onLoadMore,
  }) {
    return fetchProduct(searchKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String searchKey)? fetchProduct,
    TResult? Function()? onLoadMore,
  }) {
    return fetchProduct?.call(searchKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchKey)? fetchProduct,
    TResult Function()? onLoadMore,
    required TResult orElse(),
  }) {
    if (fetchProduct != null) {
      return fetchProduct(searchKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_OnLoadMore value) onLoadMore,
  }) {
    return fetchProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_OnLoadMore value)? onLoadMore,
  }) {
    return fetchProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_OnLoadMore value)? onLoadMore,
    required TResult orElse(),
  }) {
    if (fetchProduct != null) {
      return fetchProduct(this);
    }
    return orElse();
  }
}

abstract class _FetchProduct implements SearchProductEvent {
  const factory _FetchProduct({required final String searchKey}) =
      _$FetchProductImpl;

  String get searchKey;
  @JsonKey(ignore: true)
  _$$FetchProductImplCopyWith<_$FetchProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnLoadMoreImplCopyWith<$Res> {
  factory _$$OnLoadMoreImplCopyWith(
          _$OnLoadMoreImpl value, $Res Function(_$OnLoadMoreImpl) then) =
      __$$OnLoadMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnLoadMoreImplCopyWithImpl<$Res>
    extends _$SearchProductEventCopyWithImpl<$Res, _$OnLoadMoreImpl>
    implements _$$OnLoadMoreImplCopyWith<$Res> {
  __$$OnLoadMoreImplCopyWithImpl(
      _$OnLoadMoreImpl _value, $Res Function(_$OnLoadMoreImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnLoadMoreImpl implements _OnLoadMore {
  const _$OnLoadMoreImpl();

  @override
  String toString() {
    return 'SearchProductEvent.onLoadMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnLoadMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String searchKey) fetchProduct,
    required TResult Function() onLoadMore,
  }) {
    return onLoadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String searchKey)? fetchProduct,
    TResult? Function()? onLoadMore,
  }) {
    return onLoadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String searchKey)? fetchProduct,
    TResult Function()? onLoadMore,
    required TResult orElse(),
  }) {
    if (onLoadMore != null) {
      return onLoadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_OnLoadMore value) onLoadMore,
  }) {
    return onLoadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_OnLoadMore value)? onLoadMore,
  }) {
    return onLoadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_OnLoadMore value)? onLoadMore,
    required TResult orElse(),
  }) {
    if (onLoadMore != null) {
      return onLoadMore(this);
    }
    return orElse();
  }
}

abstract class _OnLoadMore implements SearchProductEvent {
  const factory _OnLoadMore() = _$OnLoadMoreImpl;
}

/// @nodoc
mixin _$SearchProductState {
  List<Product> get products => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get canLoadMore => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchProductStateCopyWith<SearchProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchProductStateCopyWith<$Res> {
  factory $SearchProductStateCopyWith(
          SearchProductState value, $Res Function(SearchProductState) then) =
      _$SearchProductStateCopyWithImpl<$Res, SearchProductState>;
  @useResult
  $Res call(
      {List<Product> products,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching,
      bool canLoadMore,
      int pageNumber,
      String searchText});
}

/// @nodoc
class _$SearchProductStateCopyWithImpl<$Res, $Val extends SearchProductState>
    implements $SearchProductStateCopyWith<$Res> {
  _$SearchProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
    Object? canLoadMore = null,
    Object? pageNumber = null,
    Object? searchText = null,
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      canLoadMore: null == canLoadMore
          ? _value.canLoadMore
          : canLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchProductStateImplCopyWith<$Res>
    implements $SearchProductStateCopyWith<$Res> {
  factory _$$SearchProductStateImplCopyWith(_$SearchProductStateImpl value,
          $Res Function(_$SearchProductStateImpl) then) =
      __$$SearchProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Product> products,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching,
      bool canLoadMore,
      int pageNumber,
      String searchText});
}

/// @nodoc
class __$$SearchProductStateImplCopyWithImpl<$Res>
    extends _$SearchProductStateCopyWithImpl<$Res, _$SearchProductStateImpl>
    implements _$$SearchProductStateImplCopyWith<$Res> {
  __$$SearchProductStateImplCopyWithImpl(_$SearchProductStateImpl _value,
      $Res Function(_$SearchProductStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
    Object? canLoadMore = null,
    Object? pageNumber = null,
    Object? searchText = null,
  }) {
    return _then(_$SearchProductStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      canLoadMore: null == canLoadMore
          ? _value.canLoadMore
          : canLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchProductStateImpl extends _SearchProductState {
  const _$SearchProductStateImpl(
      {required final List<Product> products,
      required this.apiFailureOrSuccessOption,
      required this.isFetching,
      required this.canLoadMore,
      required this.pageNumber,
      required this.searchText})
      : _products = products,
        super._();

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;
  @override
  final bool isFetching;
  @override
  final bool canLoadMore;
  @override
  final int pageNumber;
  @override
  final String searchText;

  @override
  String toString() {
    return 'SearchProductState(products: $products, apiFailureOrSuccessOption: $apiFailureOrSuccessOption, isFetching: $isFetching, canLoadMore: $canLoadMore, pageNumber: $pageNumber, searchText: $searchText)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchProductStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.canLoadMore, canLoadMore) ||
                other.canLoadMore == canLoadMore) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      apiFailureOrSuccessOption,
      isFetching,
      canLoadMore,
      pageNumber,
      searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchProductStateImplCopyWith<_$SearchProductStateImpl> get copyWith =>
      __$$SearchProductStateImplCopyWithImpl<_$SearchProductStateImpl>(
          this, _$identity);
}

abstract class _SearchProductState extends SearchProductState {
  const factory _SearchProductState(
      {required final List<Product> products,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption,
      required final bool isFetching,
      required final bool canLoadMore,
      required final int pageNumber,
      required final String searchText}) = _$SearchProductStateImpl;
  const _SearchProductState._() : super._();

  @override
  List<Product> get products;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  bool get isFetching;
  @override
  bool get canLoadMore;
  @override
  int get pageNumber;
  @override
  String get searchText;
  @override
  @JsonKey(ignore: true)
  _$$SearchProductStateImplCopyWith<_$SearchProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
