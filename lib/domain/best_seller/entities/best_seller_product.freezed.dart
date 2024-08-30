// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'best_seller_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BestSellerProduct {
  ProductId get id => throw _privateConstructorUsedError;
  StringValue get productName => throw _privateConstructorUsedError;
  StringValue get productImage => throw _privateConstructorUsedError;
  bool get isOOS => throw _privateConstructorUsedError;
  StringValue get attributeItemId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BestSellerProductCopyWith<BestSellerProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BestSellerProductCopyWith<$Res> {
  factory $BestSellerProductCopyWith(
          BestSellerProduct value, $Res Function(BestSellerProduct) then) =
      _$BestSellerProductCopyWithImpl<$Res, BestSellerProduct>;
  @useResult
  $Res call(
      {ProductId id,
      StringValue productName,
      StringValue productImage,
      bool isOOS,
      StringValue attributeItemId});
}

/// @nodoc
class _$BestSellerProductCopyWithImpl<$Res, $Val extends BestSellerProduct>
    implements $BestSellerProductCopyWith<$Res> {
  _$BestSellerProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productName = null,
    Object? productImage = null,
    Object? isOOS = null,
    Object? attributeItemId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ProductId,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as StringValue,
      productImage: null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as StringValue,
      isOOS: null == isOOS
          ? _value.isOOS
          : isOOS // ignore: cast_nullable_to_non_nullable
              as bool,
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as StringValue,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BestSellerProductImplCopyWith<$Res>
    implements $BestSellerProductCopyWith<$Res> {
  factory _$$BestSellerProductImplCopyWith(_$BestSellerProductImpl value,
          $Res Function(_$BestSellerProductImpl) then) =
      __$$BestSellerProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductId id,
      StringValue productName,
      StringValue productImage,
      bool isOOS,
      StringValue attributeItemId});
}

/// @nodoc
class __$$BestSellerProductImplCopyWithImpl<$Res>
    extends _$BestSellerProductCopyWithImpl<$Res, _$BestSellerProductImpl>
    implements _$$BestSellerProductImplCopyWith<$Res> {
  __$$BestSellerProductImplCopyWithImpl(_$BestSellerProductImpl _value,
      $Res Function(_$BestSellerProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? productName = null,
    Object? productImage = null,
    Object? isOOS = null,
    Object? attributeItemId = null,
  }) {
    return _then(_$BestSellerProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as ProductId,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as StringValue,
      productImage: null == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as StringValue,
      isOOS: null == isOOS
          ? _value.isOOS
          : isOOS // ignore: cast_nullable_to_non_nullable
              as bool,
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as StringValue,
    ));
  }
}

/// @nodoc

class _$BestSellerProductImpl implements _BestSellerProduct {
  const _$BestSellerProductImpl(
      {required this.id,
      required this.productName,
      required this.productImage,
      required this.isOOS,
      required this.attributeItemId});

  @override
  final ProductId id;
  @override
  final StringValue productName;
  @override
  final StringValue productImage;
  @override
  final bool isOOS;
  @override
  final StringValue attributeItemId;

  @override
  String toString() {
    return 'BestSellerProduct(id: $id, productName: $productName, productImage: $productImage, isOOS: $isOOS, attributeItemId: $attributeItemId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BestSellerProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.isOOS, isOOS) || other.isOOS == isOOS) &&
            (identical(other.attributeItemId, attributeItemId) ||
                other.attributeItemId == attributeItemId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, productName, productImage, isOOS, attributeItemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BestSellerProductImplCopyWith<_$BestSellerProductImpl> get copyWith =>
      __$$BestSellerProductImplCopyWithImpl<_$BestSellerProductImpl>(
          this, _$identity);
}

abstract class _BestSellerProduct implements BestSellerProduct {
  const factory _BestSellerProduct(
      {required final ProductId id,
      required final StringValue productName,
      required final StringValue productImage,
      required final bool isOOS,
      required final StringValue attributeItemId}) = _$BestSellerProductImpl;

  @override
  ProductId get id;
  @override
  StringValue get productName;
  @override
  StringValue get productImage;
  @override
  bool get isOOS;
  @override
  StringValue get attributeItemId;
  @override
  @JsonKey(ignore: true)
  _$$BestSellerProductImplCopyWith<_$BestSellerProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
