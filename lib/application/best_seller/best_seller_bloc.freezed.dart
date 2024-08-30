// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'best_seller_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BestSellerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProducts value) fetchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProducts value)? fetchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProducts value)? fetchProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestSellerEventCopyWith<$Res> {
  factory $BestSellerEventCopyWith(
          BestSellerEvent value, $Res Function(BestSellerEvent) then) =
      _$BestSellerEventCopyWithImpl<$Res, BestSellerEvent>;
}

/// @nodoc
class _$BestSellerEventCopyWithImpl<$Res, $Val extends BestSellerEvent>
    implements $BestSellerEventCopyWith<$Res> {
  _$BestSellerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchProductsImplCopyWith<$Res> {
  factory _$$FetchProductsImplCopyWith(
          _$FetchProductsImpl value, $Res Function(_$FetchProductsImpl) then) =
      __$$FetchProductsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchProductsImplCopyWithImpl<$Res>
    extends _$BestSellerEventCopyWithImpl<$Res, _$FetchProductsImpl>
    implements _$$FetchProductsImplCopyWith<$Res> {
  __$$FetchProductsImplCopyWithImpl(
      _$FetchProductsImpl _value, $Res Function(_$FetchProductsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchProductsImpl implements _FetchProducts {
  const _$FetchProductsImpl();

  @override
  String toString() {
    return 'BestSellerEvent.fetchProducts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchProductsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchProducts,
  }) {
    return fetchProducts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchProducts,
  }) {
    return fetchProducts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchProducts,
    required TResult orElse(),
  }) {
    if (fetchProducts != null) {
      return fetchProducts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchProducts value) fetchProducts,
  }) {
    return fetchProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchProducts value)? fetchProducts,
  }) {
    return fetchProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchProducts value)? fetchProducts,
    required TResult orElse(),
  }) {
    if (fetchProducts != null) {
      return fetchProducts(this);
    }
    return orElse();
  }
}

abstract class _FetchProducts implements BestSellerEvent {
  const factory _FetchProducts() = _$FetchProductsImpl;
}

/// @nodoc
mixin _$BestSellerState {
  List<BestSellerProduct> get products => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BestSellerStateCopyWith<BestSellerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestSellerStateCopyWith<$Res> {
  factory $BestSellerStateCopyWith(
          BestSellerState value, $Res Function(BestSellerState) then) =
      _$BestSellerStateCopyWithImpl<$Res, BestSellerState>;
  @useResult
  $Res call(
      {List<BestSellerProduct> products,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching});
}

/// @nodoc
class _$BestSellerStateCopyWithImpl<$Res, $Val extends BestSellerState>
    implements $BestSellerStateCopyWith<$Res> {
  _$BestSellerStateCopyWithImpl(this._value, this._then);

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
  }) {
    return _then(_value.copyWith(
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<BestSellerProduct>,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BestSellerStateImplCopyWith<$Res>
    implements $BestSellerStateCopyWith<$Res> {
  factory _$$BestSellerStateImplCopyWith(_$BestSellerStateImpl value,
          $Res Function(_$BestSellerStateImpl) then) =
      __$$BestSellerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BestSellerProduct> products,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching});
}

/// @nodoc
class __$$BestSellerStateImplCopyWithImpl<$Res>
    extends _$BestSellerStateCopyWithImpl<$Res, _$BestSellerStateImpl>
    implements _$$BestSellerStateImplCopyWith<$Res> {
  __$$BestSellerStateImplCopyWithImpl(
      _$BestSellerStateImpl _value, $Res Function(_$BestSellerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
  }) {
    return _then(_$BestSellerStateImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<BestSellerProduct>,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BestSellerStateImpl implements _BestSellerState {
  const _$BestSellerStateImpl(
      {required final List<BestSellerProduct> products,
      required this.apiFailureOrSuccessOption,
      required this.isFetching})
      : _products = products;

  final List<BestSellerProduct> _products;
  @override
  List<BestSellerProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;
  @override
  final bool isFetching;

  @override
  String toString() {
    return 'BestSellerState(products: $products, apiFailureOrSuccessOption: $apiFailureOrSuccessOption, isFetching: $isFetching)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestSellerStateImpl &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      apiFailureOrSuccessOption,
      isFetching);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BestSellerStateImplCopyWith<_$BestSellerStateImpl> get copyWith =>
      __$$BestSellerStateImplCopyWithImpl<_$BestSellerStateImpl>(
          this, _$identity);
}

abstract class _BestSellerState implements BestSellerState {
  const factory _BestSellerState(
      {required final List<BestSellerProduct> products,
      required final Option<Either<ApiFailure, dynamic>>
          apiFailureOrSuccessOption,
      required final bool isFetching}) = _$BestSellerStateImpl;

  @override
  List<BestSellerProduct> get products;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  bool get isFetching;
  @override
  @JsonKey(ignore: true)
  _$$BestSellerStateImplCopyWith<_$BestSellerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
