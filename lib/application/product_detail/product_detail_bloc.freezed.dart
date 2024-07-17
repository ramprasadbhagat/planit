// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(ProductId productId) fetch,
    required TResult Function(ProductAttribute productAttribute)
        changeSelectedAttribute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(ProductId productId)? fetch,
    TResult? Function(ProductAttribute productAttribute)?
        changeSelectedAttribute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(ProductId productId)? fetch,
    TResult Function(ProductAttribute productAttribute)?
        changeSelectedAttribute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_ChangeSelectedAttribute value)
        changeSelectedAttribute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_ChangeSelectedAttribute value)? changeSelectedAttribute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeSelectedAttribute value)? changeSelectedAttribute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailEventCopyWith<$Res> {
  factory $ProductDetailEventCopyWith(
          ProductDetailEvent value, $Res Function(ProductDetailEvent) then) =
      _$ProductDetailEventCopyWithImpl<$Res, ProductDetailEvent>;
}

/// @nodoc
class _$ProductDetailEventCopyWithImpl<$Res, $Val extends ProductDetailEvent>
    implements $ProductDetailEventCopyWith<$Res> {
  _$ProductDetailEventCopyWithImpl(this._value, this._then);

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
    extends _$ProductDetailEventCopyWithImpl<$Res, _$InitializedImpl>
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
    return 'ProductDetailEvent.initialized()';
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
    required TResult Function(ProductId productId) fetch,
    required TResult Function(ProductAttribute productAttribute)
        changeSelectedAttribute,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(ProductId productId)? fetch,
    TResult? Function(ProductAttribute productAttribute)?
        changeSelectedAttribute,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(ProductId productId)? fetch,
    TResult Function(ProductAttribute productAttribute)?
        changeSelectedAttribute,
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
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_ChangeSelectedAttribute value)
        changeSelectedAttribute,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_ChangeSelectedAttribute value)? changeSelectedAttribute,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeSelectedAttribute value)? changeSelectedAttribute,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ProductDetailEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductId productId});
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$ProductDetailEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
  }) {
    return _then(_$FetchImpl(
      null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as ProductId,
    ));
  }
}

/// @nodoc

class _$FetchImpl implements _Fetch {
  const _$FetchImpl(this.productId);

  @override
  final ProductId productId;

  @override
  String toString() {
    return 'ProductDetailEvent.fetch(productId: $productId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      __$$FetchImplCopyWithImpl<_$FetchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(ProductId productId) fetch,
    required TResult Function(ProductAttribute productAttribute)
        changeSelectedAttribute,
  }) {
    return fetch(productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(ProductId productId)? fetch,
    TResult? Function(ProductAttribute productAttribute)?
        changeSelectedAttribute,
  }) {
    return fetch?.call(productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(ProductId productId)? fetch,
    TResult Function(ProductAttribute productAttribute)?
        changeSelectedAttribute,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_ChangeSelectedAttribute value)
        changeSelectedAttribute,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_ChangeSelectedAttribute value)? changeSelectedAttribute,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeSelectedAttribute value)? changeSelectedAttribute,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class _Fetch implements ProductDetailEvent {
  const factory _Fetch(final ProductId productId) = _$FetchImpl;

  ProductId get productId;
  @JsonKey(ignore: true)
  _$$FetchImplCopyWith<_$FetchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeSelectedAttributeImplCopyWith<$Res> {
  factory _$$ChangeSelectedAttributeImplCopyWith(
          _$ChangeSelectedAttributeImpl value,
          $Res Function(_$ChangeSelectedAttributeImpl) then) =
      __$$ChangeSelectedAttributeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductAttribute productAttribute});

  $ProductAttributeCopyWith<$Res> get productAttribute;
}

/// @nodoc
class __$$ChangeSelectedAttributeImplCopyWithImpl<$Res>
    extends _$ProductDetailEventCopyWithImpl<$Res,
        _$ChangeSelectedAttributeImpl>
    implements _$$ChangeSelectedAttributeImplCopyWith<$Res> {
  __$$ChangeSelectedAttributeImplCopyWithImpl(
      _$ChangeSelectedAttributeImpl _value,
      $Res Function(_$ChangeSelectedAttributeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productAttribute = null,
  }) {
    return _then(_$ChangeSelectedAttributeImpl(
      null == productAttribute
          ? _value.productAttribute
          : productAttribute // ignore: cast_nullable_to_non_nullable
              as ProductAttribute,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductAttributeCopyWith<$Res> get productAttribute {
    return $ProductAttributeCopyWith<$Res>(_value.productAttribute, (value) {
      return _then(_value.copyWith(productAttribute: value));
    });
  }
}

/// @nodoc

class _$ChangeSelectedAttributeImpl implements _ChangeSelectedAttribute {
  const _$ChangeSelectedAttributeImpl(this.productAttribute);

  @override
  final ProductAttribute productAttribute;

  @override
  String toString() {
    return 'ProductDetailEvent.changeSelectedAttribute(productAttribute: $productAttribute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeSelectedAttributeImpl &&
            (identical(other.productAttribute, productAttribute) ||
                other.productAttribute == productAttribute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productAttribute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeSelectedAttributeImplCopyWith<_$ChangeSelectedAttributeImpl>
      get copyWith => __$$ChangeSelectedAttributeImplCopyWithImpl<
          _$ChangeSelectedAttributeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(ProductId productId) fetch,
    required TResult Function(ProductAttribute productAttribute)
        changeSelectedAttribute,
  }) {
    return changeSelectedAttribute(productAttribute);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(ProductId productId)? fetch,
    TResult? Function(ProductAttribute productAttribute)?
        changeSelectedAttribute,
  }) {
    return changeSelectedAttribute?.call(productAttribute);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(ProductId productId)? fetch,
    TResult Function(ProductAttribute productAttribute)?
        changeSelectedAttribute,
    required TResult orElse(),
  }) {
    if (changeSelectedAttribute != null) {
      return changeSelectedAttribute(productAttribute);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_Fetch value) fetch,
    required TResult Function(_ChangeSelectedAttribute value)
        changeSelectedAttribute,
  }) {
    return changeSelectedAttribute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_Fetch value)? fetch,
    TResult? Function(_ChangeSelectedAttribute value)? changeSelectedAttribute,
  }) {
    return changeSelectedAttribute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_Fetch value)? fetch,
    TResult Function(_ChangeSelectedAttribute value)? changeSelectedAttribute,
    required TResult orElse(),
  }) {
    if (changeSelectedAttribute != null) {
      return changeSelectedAttribute(this);
    }
    return orElse();
  }
}

abstract class _ChangeSelectedAttribute implements ProductDetailEvent {
  const factory _ChangeSelectedAttribute(
      final ProductAttribute productAttribute) = _$ChangeSelectedAttributeImpl;

  ProductAttribute get productAttribute;
  @JsonKey(ignore: true)
  _$$ChangeSelectedAttributeImplCopyWith<_$ChangeSelectedAttributeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductDetailState {
  ProductDetail get product => throw _privateConstructorUsedError;
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  ProductAttribute get selectedProductAttribute =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailStateCopyWith<ProductDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailStateCopyWith<$Res> {
  factory $ProductDetailStateCopyWith(
          ProductDetailState value, $Res Function(ProductDetailState) then) =
      _$ProductDetailStateCopyWithImpl<$Res, ProductDetailState>;
  @useResult
  $Res call(
      {ProductDetail product,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching,
      ProductAttribute selectedProductAttribute});

  $ProductDetailCopyWith<$Res> get product;
  $ProductAttributeCopyWith<$Res> get selectedProductAttribute;
}

/// @nodoc
class _$ProductDetailStateCopyWithImpl<$Res, $Val extends ProductDetailState>
    implements $ProductDetailStateCopyWith<$Res> {
  _$ProductDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
    Object? selectedProductAttribute = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDetail,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedProductAttribute: null == selectedProductAttribute
          ? _value.selectedProductAttribute
          : selectedProductAttribute // ignore: cast_nullable_to_non_nullable
              as ProductAttribute,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDetailCopyWith<$Res> get product {
    return $ProductDetailCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductAttributeCopyWith<$Res> get selectedProductAttribute {
    return $ProductAttributeCopyWith<$Res>(_value.selectedProductAttribute,
        (value) {
      return _then(_value.copyWith(selectedProductAttribute: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailStateImplCopyWith<$Res>
    implements $ProductDetailStateCopyWith<$Res> {
  factory _$$ProductDetailStateImplCopyWith(_$ProductDetailStateImpl value,
          $Res Function(_$ProductDetailStateImpl) then) =
      __$$ProductDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductDetail product,
      Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption,
      bool isFetching,
      ProductAttribute selectedProductAttribute});

  @override
  $ProductDetailCopyWith<$Res> get product;
  @override
  $ProductAttributeCopyWith<$Res> get selectedProductAttribute;
}

/// @nodoc
class __$$ProductDetailStateImplCopyWithImpl<$Res>
    extends _$ProductDetailStateCopyWithImpl<$Res, _$ProductDetailStateImpl>
    implements _$$ProductDetailStateImplCopyWith<$Res> {
  __$$ProductDetailStateImplCopyWithImpl(_$ProductDetailStateImpl _value,
      $Res Function(_$ProductDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? apiFailureOrSuccessOption = null,
    Object? isFetching = null,
    Object? selectedProductAttribute = null,
  }) {
    return _then(_$ProductDetailStateImpl(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDetail,
      apiFailureOrSuccessOption: null == apiFailureOrSuccessOption
          ? _value.apiFailureOrSuccessOption
          : apiFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, dynamic>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedProductAttribute: null == selectedProductAttribute
          ? _value.selectedProductAttribute
          : selectedProductAttribute // ignore: cast_nullable_to_non_nullable
              as ProductAttribute,
    ));
  }
}

/// @nodoc

class _$ProductDetailStateImpl implements _ProductDetailState {
  const _$ProductDetailStateImpl(
      {required this.product,
      required this.apiFailureOrSuccessOption,
      required this.isFetching,
      required this.selectedProductAttribute});

  @override
  final ProductDetail product;
  @override
  final Option<Either<ApiFailure, dynamic>> apiFailureOrSuccessOption;
  @override
  final bool isFetching;
  @override
  final ProductAttribute selectedProductAttribute;

  @override
  String toString() {
    return 'ProductDetailState(product: $product, apiFailureOrSuccessOption: $apiFailureOrSuccessOption, isFetching: $isFetching, selectedProductAttribute: $selectedProductAttribute)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailStateImpl &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.apiFailureOrSuccessOption,
                    apiFailureOrSuccessOption) ||
                other.apiFailureOrSuccessOption == apiFailureOrSuccessOption) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(
                    other.selectedProductAttribute, selectedProductAttribute) ||
                other.selectedProductAttribute == selectedProductAttribute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product,
      apiFailureOrSuccessOption, isFetching, selectedProductAttribute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailStateImplCopyWith<_$ProductDetailStateImpl> get copyWith =>
      __$$ProductDetailStateImplCopyWithImpl<_$ProductDetailStateImpl>(
          this, _$identity);
}

abstract class _ProductDetailState implements ProductDetailState {
  const factory _ProductDetailState(
          {required final ProductDetail product,
          required final Option<Either<ApiFailure, dynamic>>
              apiFailureOrSuccessOption,
          required final bool isFetching,
          required final ProductAttribute selectedProductAttribute}) =
      _$ProductDetailStateImpl;

  @override
  ProductDetail get product;
  @override
  Option<Either<ApiFailure, dynamic>> get apiFailureOrSuccessOption;
  @override
  bool get isFetching;
  @override
  ProductAttribute get selectedProductAttribute;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailStateImplCopyWith<_$ProductDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
