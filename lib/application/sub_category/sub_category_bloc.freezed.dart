// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubCategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(SubCategory subCategory) select,
    required TResult Function() fetchProduct,
    required TResult Function() loadMoreProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(SubCategory subCategory)? select,
    TResult? Function()? fetchProduct,
    TResult? Function()? loadMoreProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(SubCategory subCategory)? select,
    TResult Function()? fetchProduct,
    TResult Function()? loadMoreProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Select value) select,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_LoadMoreProduct value) loadMoreProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Select value)? select,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_LoadMoreProduct value)? loadMoreProduct,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Select value)? select,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_LoadMoreProduct value)? loadMoreProduct,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryEventCopyWith<$Res> {
  factory $SubCategoryEventCopyWith(
          SubCategoryEvent value, $Res Function(SubCategoryEvent) then) =
      _$SubCategoryEventCopyWithImpl<$Res, SubCategoryEvent>;
}

/// @nodoc
class _$SubCategoryEventCopyWithImpl<$Res, $Val extends SubCategoryEvent>
    implements $SubCategoryEventCopyWith<$Res> {
  _$SubCategoryEventCopyWithImpl(this._value, this._then);

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
    extends _$SubCategoryEventCopyWithImpl<$Res, _$InitializedImpl>
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
    return 'SubCategoryEvent.initialized()';
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
    required TResult Function(SubCategory subCategory) select,
    required TResult Function() fetchProduct,
    required TResult Function() loadMoreProduct,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(SubCategory subCategory)? select,
    TResult? Function()? fetchProduct,
    TResult? Function()? loadMoreProduct,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(SubCategory subCategory)? select,
    TResult Function()? fetchProduct,
    TResult Function()? loadMoreProduct,
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
    required TResult Function(_Select value) select,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_LoadMoreProduct value) loadMoreProduct,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Select value)? select,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_LoadMoreProduct value)? loadMoreProduct,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Select value)? select,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_LoadMoreProduct value)? loadMoreProduct,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements SubCategoryEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$SelectImplCopyWith<$Res> {
  factory _$$SelectImplCopyWith(
          _$SelectImpl value, $Res Function(_$SelectImpl) then) =
      __$$SelectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SubCategory subCategory});

  $SubCategoryCopyWith<$Res> get subCategory;
}

/// @nodoc
class __$$SelectImplCopyWithImpl<$Res>
    extends _$SubCategoryEventCopyWithImpl<$Res, _$SelectImpl>
    implements _$$SelectImplCopyWith<$Res> {
  __$$SelectImplCopyWithImpl(
      _$SelectImpl _value, $Res Function(_$SelectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategory = null,
  }) {
    return _then(_$SelectImpl(
      null == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SubCategoryCopyWith<$Res> get subCategory {
    return $SubCategoryCopyWith<$Res>(_value.subCategory, (value) {
      return _then(_value.copyWith(subCategory: value));
    });
  }
}

/// @nodoc

class _$SelectImpl implements _Select {
  const _$SelectImpl(this.subCategory);

  @override
  final SubCategory subCategory;

  @override
  String toString() {
    return 'SubCategoryEvent.select(subCategory: $subCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectImpl &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      __$$SelectImplCopyWithImpl<_$SelectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(SubCategory subCategory) select,
    required TResult Function() fetchProduct,
    required TResult Function() loadMoreProduct,
  }) {
    return select(subCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(SubCategory subCategory)? select,
    TResult? Function()? fetchProduct,
    TResult? Function()? loadMoreProduct,
  }) {
    return select?.call(subCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(SubCategory subCategory)? select,
    TResult Function()? fetchProduct,
    TResult Function()? loadMoreProduct,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(subCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Select value) select,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_LoadMoreProduct value) loadMoreProduct,
  }) {
    return select(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Select value)? select,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_LoadMoreProduct value)? loadMoreProduct,
  }) {
    return select?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Select value)? select,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_LoadMoreProduct value)? loadMoreProduct,
    required TResult orElse(),
  }) {
    if (select != null) {
      return select(this);
    }
    return orElse();
  }
}

abstract class _Select implements SubCategoryEvent {
  const factory _Select(final SubCategory subCategory) = _$SelectImpl;

  SubCategory get subCategory;
  @JsonKey(ignore: true)
  _$$SelectImplCopyWith<_$SelectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FetchProductImplCopyWith<$Res> {
  factory _$$FetchProductImplCopyWith(
          _$FetchProductImpl value, $Res Function(_$FetchProductImpl) then) =
      __$$FetchProductImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchProductImplCopyWithImpl<$Res>
    extends _$SubCategoryEventCopyWithImpl<$Res, _$FetchProductImpl>
    implements _$$FetchProductImplCopyWith<$Res> {
  __$$FetchProductImplCopyWithImpl(
      _$FetchProductImpl _value, $Res Function(_$FetchProductImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchProductImpl implements _FetchProduct {
  const _$FetchProductImpl();

  @override
  String toString() {
    return 'SubCategoryEvent.fetchProduct()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchProductImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(SubCategory subCategory) select,
    required TResult Function() fetchProduct,
    required TResult Function() loadMoreProduct,
  }) {
    return fetchProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(SubCategory subCategory)? select,
    TResult? Function()? fetchProduct,
    TResult? Function()? loadMoreProduct,
  }) {
    return fetchProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(SubCategory subCategory)? select,
    TResult Function()? fetchProduct,
    TResult Function()? loadMoreProduct,
    required TResult orElse(),
  }) {
    if (fetchProduct != null) {
      return fetchProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Select value) select,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_LoadMoreProduct value) loadMoreProduct,
  }) {
    return fetchProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Select value)? select,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_LoadMoreProduct value)? loadMoreProduct,
  }) {
    return fetchProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Select value)? select,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_LoadMoreProduct value)? loadMoreProduct,
    required TResult orElse(),
  }) {
    if (fetchProduct != null) {
      return fetchProduct(this);
    }
    return orElse();
  }
}

abstract class _FetchProduct implements SubCategoryEvent {
  const factory _FetchProduct() = _$FetchProductImpl;
}

/// @nodoc
abstract class _$$LoadMoreProductImplCopyWith<$Res> {
  factory _$$LoadMoreProductImplCopyWith(_$LoadMoreProductImpl value,
          $Res Function(_$LoadMoreProductImpl) then) =
      __$$LoadMoreProductImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreProductImplCopyWithImpl<$Res>
    extends _$SubCategoryEventCopyWithImpl<$Res, _$LoadMoreProductImpl>
    implements _$$LoadMoreProductImplCopyWith<$Res> {
  __$$LoadMoreProductImplCopyWithImpl(
      _$LoadMoreProductImpl _value, $Res Function(_$LoadMoreProductImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMoreProductImpl implements _LoadMoreProduct {
  const _$LoadMoreProductImpl();

  @override
  String toString() {
    return 'SubCategoryEvent.loadMoreProduct()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreProductImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(SubCategory subCategory) select,
    required TResult Function() fetchProduct,
    required TResult Function() loadMoreProduct,
  }) {
    return loadMoreProduct();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(SubCategory subCategory)? select,
    TResult? Function()? fetchProduct,
    TResult? Function()? loadMoreProduct,
  }) {
    return loadMoreProduct?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(SubCategory subCategory)? select,
    TResult Function()? fetchProduct,
    TResult Function()? loadMoreProduct,
    required TResult orElse(),
  }) {
    if (loadMoreProduct != null) {
      return loadMoreProduct();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Select value) select,
    required TResult Function(_FetchProduct value) fetchProduct,
    required TResult Function(_LoadMoreProduct value) loadMoreProduct,
  }) {
    return loadMoreProduct(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Select value)? select,
    TResult? Function(_FetchProduct value)? fetchProduct,
    TResult? Function(_LoadMoreProduct value)? loadMoreProduct,
  }) {
    return loadMoreProduct?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Select value)? select,
    TResult Function(_FetchProduct value)? fetchProduct,
    TResult Function(_LoadMoreProduct value)? loadMoreProduct,
    required TResult orElse(),
  }) {
    if (loadMoreProduct != null) {
      return loadMoreProduct(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreProduct implements SubCategoryEvent {
  const factory _LoadMoreProduct() = _$LoadMoreProductImpl;
}

/// @nodoc
mixin _$SubCategoryState {
  SubCategory get selectedSubCategory => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get canLoadMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubCategoryStateCopyWith<SubCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryStateCopyWith<$Res> {
  factory $SubCategoryStateCopyWith(
          SubCategoryState value, $Res Function(SubCategoryState) then) =
      _$SubCategoryStateCopyWithImpl<$Res, SubCategoryState>;
  @useResult
  $Res call(
      {SubCategory selectedSubCategory,
      List<Product> products,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching,
      bool canLoadMore});

  $SubCategoryCopyWith<$Res> get selectedSubCategory;
}

/// @nodoc
class _$SubCategoryStateCopyWithImpl<$Res, $Val extends SubCategoryState>
    implements $SubCategoryStateCopyWith<$Res> {
  _$SubCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSubCategory = null,
    Object? products = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
    Object? canLoadMore = null,
  }) {
    return _then(_value.copyWith(
      selectedSubCategory: null == selectedSubCategory
          ? _value.selectedSubCategory
          : selectedSubCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory,
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
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubCategoryCopyWith<$Res> get selectedSubCategory {
    return $SubCategoryCopyWith<$Res>(_value.selectedSubCategory, (value) {
      return _then(_value.copyWith(selectedSubCategory: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SubCategoryStateImplCopyWith<$Res>
    implements $SubCategoryStateCopyWith<$Res> {
  factory _$$SubCategoryStateImplCopyWith(_$SubCategoryStateImpl value,
          $Res Function(_$SubCategoryStateImpl) then) =
      __$$SubCategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SubCategory selectedSubCategory,
      List<Product> products,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching,
      bool canLoadMore});

  @override
  $SubCategoryCopyWith<$Res> get selectedSubCategory;
}

/// @nodoc
class __$$SubCategoryStateImplCopyWithImpl<$Res>
    extends _$SubCategoryStateCopyWithImpl<$Res, _$SubCategoryStateImpl>
    implements _$$SubCategoryStateImplCopyWith<$Res> {
  __$$SubCategoryStateImplCopyWithImpl(_$SubCategoryStateImpl _value,
      $Res Function(_$SubCategoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSubCategory = null,
    Object? products = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
    Object? canLoadMore = null,
  }) {
    return _then(_$SubCategoryStateImpl(
      selectedSubCategory: null == selectedSubCategory
          ? _value.selectedSubCategory
          : selectedSubCategory // ignore: cast_nullable_to_non_nullable
              as SubCategory,
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
    ));
  }
}

/// @nodoc

class _$SubCategoryStateImpl extends _SubCategoryState {
  const _$SubCategoryStateImpl(
      {required this.selectedSubCategory,
      required final List<Product> products,
      required this.apiFailureOrSuccessOption,
      required this.isFetching,
      required this.canLoadMore})
      : _products = products,
        super._();

  @override
  final SubCategory selectedSubCategory;
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
  String toString() {
    return 'SubCategoryState(selectedSubCategory: $selectedSubCategory, products: $products, apiFailureOrSuccessOption: $apiFailureOrSuccessOption, isFetching: $isFetching, canLoadMore: $canLoadMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryStateImpl &&
            (identical(other.selectedSubCategory, selectedSubCategory) ||
                other.selectedSubCategory == selectedSubCategory) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.canLoadMore, canLoadMore) ||
                other.canLoadMore == canLoadMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      selectedSubCategory,
      const DeepCollectionEquality().hash(_products),
      apiFailureOrSuccessOption,
      isFetching,
      canLoadMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCategoryStateImplCopyWith<_$SubCategoryStateImpl> get copyWith =>
      __$$SubCategoryStateImplCopyWithImpl<_$SubCategoryStateImpl>(
          this, _$identity);
}

abstract class _SubCategoryState extends SubCategoryState {
  const factory _SubCategoryState(
      {required final SubCategory selectedSubCategory,
      required final List<Product> products,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption,
      required final bool isFetching,
      required final bool canLoadMore}) = _$SubCategoryStateImpl;
  const _SubCategoryState._() : super._();

  @override
  SubCategory get selectedSubCategory;
  @override
  List<Product> get products;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  bool get isFetching;
  @override
  bool get canLoadMore;
  @override
  @JsonKey(ignore: true)
  _$$SubCategoryStateImplCopyWith<_$SubCategoryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
