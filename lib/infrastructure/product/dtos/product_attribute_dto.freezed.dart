// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_attribute_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductAttributeDto _$ProductAttributeDtoFromJson(Map<String, dynamic> json) {
  return _ProductAttributeDto.fromJson(json);
}

/// @nodoc
mixin _$ProductAttributeDto {
  @JsonKey(defaultValue: '')
  String get attributeItemId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get attributeItemProductId => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', readValue: parseAttributeItemValue)
  String get attributeItemValue => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', readValue: parseAttributeItemName)
  String get attributeItemName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '', readValue: stringReadValue)
  String get price => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductAttributeDtoCopyWith<ProductAttributeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductAttributeDtoCopyWith<$Res> {
  factory $ProductAttributeDtoCopyWith(
          ProductAttributeDto value, $Res Function(ProductAttributeDto) then) =
      _$ProductAttributeDtoCopyWithImpl<$Res, ProductAttributeDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String attributeItemId,
      @JsonKey(defaultValue: '') String attributeItemProductId,
      @JsonKey(defaultValue: '', readValue: parseAttributeItemValue)
      String attributeItemValue,
      @JsonKey(defaultValue: '', readValue: parseAttributeItemName)
      String attributeItemName,
      @JsonKey(defaultValue: '', readValue: stringReadValue) String price,
      @JsonKey(defaultValue: 0) int quantity});
}

/// @nodoc
class _$ProductAttributeDtoCopyWithImpl<$Res, $Val extends ProductAttributeDto>
    implements $ProductAttributeDtoCopyWith<$Res> {
  _$ProductAttributeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeItemId = null,
    Object? attributeItemProductId = null,
    Object? attributeItemValue = null,
    Object? attributeItemName = null,
    Object? price = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItemProductId: null == attributeItemProductId
          ? _value.attributeItemProductId
          : attributeItemProductId // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItemValue: null == attributeItemValue
          ? _value.attributeItemValue
          : attributeItemValue // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItemName: null == attributeItemName
          ? _value.attributeItemName
          : attributeItemName // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductAttributeDtoImplCopyWith<$Res>
    implements $ProductAttributeDtoCopyWith<$Res> {
  factory _$$ProductAttributeDtoImplCopyWith(_$ProductAttributeDtoImpl value,
          $Res Function(_$ProductAttributeDtoImpl) then) =
      __$$ProductAttributeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String attributeItemId,
      @JsonKey(defaultValue: '') String attributeItemProductId,
      @JsonKey(defaultValue: '', readValue: parseAttributeItemValue)
      String attributeItemValue,
      @JsonKey(defaultValue: '', readValue: parseAttributeItemName)
      String attributeItemName,
      @JsonKey(defaultValue: '', readValue: stringReadValue) String price,
      @JsonKey(defaultValue: 0) int quantity});
}

/// @nodoc
class __$$ProductAttributeDtoImplCopyWithImpl<$Res>
    extends _$ProductAttributeDtoCopyWithImpl<$Res, _$ProductAttributeDtoImpl>
    implements _$$ProductAttributeDtoImplCopyWith<$Res> {
  __$$ProductAttributeDtoImplCopyWithImpl(_$ProductAttributeDtoImpl _value,
      $Res Function(_$ProductAttributeDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeItemId = null,
    Object? attributeItemProductId = null,
    Object? attributeItemValue = null,
    Object? attributeItemName = null,
    Object? price = null,
    Object? quantity = null,
  }) {
    return _then(_$ProductAttributeDtoImpl(
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItemProductId: null == attributeItemProductId
          ? _value.attributeItemProductId
          : attributeItemProductId // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItemValue: null == attributeItemValue
          ? _value.attributeItemValue
          : attributeItemValue // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItemName: null == attributeItemName
          ? _value.attributeItemName
          : attributeItemName // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductAttributeDtoImpl extends _ProductAttributeDto {
  const _$ProductAttributeDtoImpl(
      {@JsonKey(defaultValue: '') required this.attributeItemId,
      @JsonKey(defaultValue: '') required this.attributeItemProductId,
      @JsonKey(defaultValue: '', readValue: parseAttributeItemValue)
      required this.attributeItemValue,
      @JsonKey(defaultValue: '', readValue: parseAttributeItemName)
      required this.attributeItemName,
      @JsonKey(defaultValue: '', readValue: stringReadValue)
      required this.price,
      @JsonKey(defaultValue: 0) required this.quantity})
      : super._();

  factory _$ProductAttributeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductAttributeDtoImplFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String attributeItemId;
  @override
  @JsonKey(defaultValue: '')
  final String attributeItemProductId;
  @override
  @JsonKey(defaultValue: '', readValue: parseAttributeItemValue)
  final String attributeItemValue;
  @override
  @JsonKey(defaultValue: '', readValue: parseAttributeItemName)
  final String attributeItemName;
  @override
  @JsonKey(defaultValue: '', readValue: stringReadValue)
  final String price;
  @override
  @JsonKey(defaultValue: 0)
  final int quantity;

  @override
  String toString() {
    return 'ProductAttributeDto(attributeItemId: $attributeItemId, attributeItemProductId: $attributeItemProductId, attributeItemValue: $attributeItemValue, attributeItemName: $attributeItemName, price: $price, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductAttributeDtoImpl &&
            (identical(other.attributeItemId, attributeItemId) ||
                other.attributeItemId == attributeItemId) &&
            (identical(other.attributeItemProductId, attributeItemProductId) ||
                other.attributeItemProductId == attributeItemProductId) &&
            (identical(other.attributeItemValue, attributeItemValue) ||
                other.attributeItemValue == attributeItemValue) &&
            (identical(other.attributeItemName, attributeItemName) ||
                other.attributeItemName == attributeItemName) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      attributeItemId,
      attributeItemProductId,
      attributeItemValue,
      attributeItemName,
      price,
      quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductAttributeDtoImplCopyWith<_$ProductAttributeDtoImpl> get copyWith =>
      __$$ProductAttributeDtoImplCopyWithImpl<_$ProductAttributeDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductAttributeDtoImplToJson(
      this,
    );
  }
}

abstract class _ProductAttributeDto extends ProductAttributeDto {
  const factory _ProductAttributeDto(
      {@JsonKey(defaultValue: '') required final String attributeItemId,
      @JsonKey(defaultValue: '') required final String attributeItemProductId,
      @JsonKey(defaultValue: '', readValue: parseAttributeItemValue)
      required final String attributeItemValue,
      @JsonKey(defaultValue: '', readValue: parseAttributeItemName)
      required final String attributeItemName,
      @JsonKey(defaultValue: '', readValue: stringReadValue)
      required final String price,
      @JsonKey(defaultValue: 0)
      required final int quantity}) = _$ProductAttributeDtoImpl;
  const _ProductAttributeDto._() : super._();

  factory _ProductAttributeDto.fromJson(Map<String, dynamic> json) =
      _$ProductAttributeDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get attributeItemId;
  @override
  @JsonKey(defaultValue: '')
  String get attributeItemProductId;
  @override
  @JsonKey(defaultValue: '', readValue: parseAttributeItemValue)
  String get attributeItemValue;
  @override
  @JsonKey(defaultValue: '', readValue: parseAttributeItemName)
  String get attributeItemName;
  @override
  @JsonKey(defaultValue: '', readValue: stringReadValue)
  String get price;
  @override
  @JsonKey(defaultValue: 0)
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$ProductAttributeDtoImplCopyWith<_$ProductAttributeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
