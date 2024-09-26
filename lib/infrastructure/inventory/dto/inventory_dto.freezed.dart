// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InventoryDto _$InventoryDtoFromJson(Map<String, dynamic> json) {
  return _InventoryDto.fromJson(json);
}

/// @nodoc
mixin _$InventoryDto {
  @JsonKey(defaultValue: '')
  String get attributeName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get attributeItemName => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get attributeItemId => throw _privateConstructorUsedError;
  @JsonKey(
      defaultValue: 0, readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
  double get listPrice => throw _privateConstructorUsedError;
  @JsonKey(
      defaultValue: 0, readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
  double get finalPrice => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  double get discountPercentage => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0)
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InventoryDtoCopyWith<InventoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryDtoCopyWith<$Res> {
  factory $InventoryDtoCopyWith(
          InventoryDto value, $Res Function(InventoryDto) then) =
      _$InventoryDtoCopyWithImpl<$Res, InventoryDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String attributeName,
      @JsonKey(defaultValue: '') String attributeItemName,
      @JsonKey(defaultValue: '') String attributeItemId,
      @JsonKey(
          defaultValue: 0,
          readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
      double listPrice,
      @JsonKey(
          defaultValue: 0,
          readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
      double finalPrice,
      @JsonKey(defaultValue: 0) double discountPercentage,
      @JsonKey(defaultValue: 0) int quantity});
}

/// @nodoc
class _$InventoryDtoCopyWithImpl<$Res, $Val extends InventoryDto>
    implements $InventoryDtoCopyWith<$Res> {
  _$InventoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeName = null,
    Object? attributeItemName = null,
    Object? attributeItemId = null,
    Object? listPrice = null,
    Object? finalPrice = null,
    Object? discountPercentage = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      attributeName: null == attributeName
          ? _value.attributeName
          : attributeName // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItemName: null == attributeItemName
          ? _value.attributeItemName
          : attributeItemName // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as String,
      listPrice: null == listPrice
          ? _value.listPrice
          : listPrice // ignore: cast_nullable_to_non_nullable
              as double,
      finalPrice: null == finalPrice
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InventoryDtoImplCopyWith<$Res>
    implements $InventoryDtoCopyWith<$Res> {
  factory _$$InventoryDtoImplCopyWith(
          _$InventoryDtoImpl value, $Res Function(_$InventoryDtoImpl) then) =
      __$$InventoryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String attributeName,
      @JsonKey(defaultValue: '') String attributeItemName,
      @JsonKey(defaultValue: '') String attributeItemId,
      @JsonKey(
          defaultValue: 0,
          readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
      double listPrice,
      @JsonKey(
          defaultValue: 0,
          readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
      double finalPrice,
      @JsonKey(defaultValue: 0) double discountPercentage,
      @JsonKey(defaultValue: 0) int quantity});
}

/// @nodoc
class __$$InventoryDtoImplCopyWithImpl<$Res>
    extends _$InventoryDtoCopyWithImpl<$Res, _$InventoryDtoImpl>
    implements _$$InventoryDtoImplCopyWith<$Res> {
  __$$InventoryDtoImplCopyWithImpl(
      _$InventoryDtoImpl _value, $Res Function(_$InventoryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attributeName = null,
    Object? attributeItemName = null,
    Object? attributeItemId = null,
    Object? listPrice = null,
    Object? finalPrice = null,
    Object? discountPercentage = null,
    Object? quantity = null,
  }) {
    return _then(_$InventoryDtoImpl(
      attributeName: null == attributeName
          ? _value.attributeName
          : attributeName // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItemName: null == attributeItemName
          ? _value.attributeItemName
          : attributeItemName // ignore: cast_nullable_to_non_nullable
              as String,
      attributeItemId: null == attributeItemId
          ? _value.attributeItemId
          : attributeItemId // ignore: cast_nullable_to_non_nullable
              as String,
      listPrice: null == listPrice
          ? _value.listPrice
          : listPrice // ignore: cast_nullable_to_non_nullable
              as double,
      finalPrice: null == finalPrice
          ? _value.finalPrice
          : finalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      discountPercentage: null == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InventoryDtoImpl extends _InventoryDto {
  const _$InventoryDtoImpl(
      {@JsonKey(defaultValue: '') required this.attributeName,
      @JsonKey(defaultValue: '') required this.attributeItemName,
      @JsonKey(defaultValue: '') required this.attributeItemId,
      @JsonKey(
          defaultValue: 0,
          readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
      required this.listPrice,
      @JsonKey(
          defaultValue: 0,
          readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
      required this.finalPrice,
      @JsonKey(defaultValue: 0) required this.discountPercentage,
      @JsonKey(defaultValue: 0) required this.quantity})
      : super._();

  factory _$InventoryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InventoryDtoImplFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String attributeName;
  @override
  @JsonKey(defaultValue: '')
  final String attributeItemName;
  @override
  @JsonKey(defaultValue: '')
  final String attributeItemId;
  @override
  @JsonKey(
      defaultValue: 0, readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
  final double listPrice;
  @override
  @JsonKey(
      defaultValue: 0, readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
  final double finalPrice;
  @override
  @JsonKey(defaultValue: 0)
  final double discountPercentage;
  @override
  @JsonKey(defaultValue: 0)
  final int quantity;

  @override
  String toString() {
    return 'InventoryDto(attributeName: $attributeName, attributeItemName: $attributeItemName, attributeItemId: $attributeItemId, listPrice: $listPrice, finalPrice: $finalPrice, discountPercentage: $discountPercentage, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryDtoImpl &&
            (identical(other.attributeName, attributeName) ||
                other.attributeName == attributeName) &&
            (identical(other.attributeItemName, attributeItemName) ||
                other.attributeItemName == attributeItemName) &&
            (identical(other.attributeItemId, attributeItemId) ||
                other.attributeItemId == attributeItemId) &&
            (identical(other.listPrice, listPrice) ||
                other.listPrice == listPrice) &&
            (identical(other.finalPrice, finalPrice) ||
                other.finalPrice == finalPrice) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, attributeName, attributeItemName,
      attributeItemId, listPrice, finalPrice, discountPercentage, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryDtoImplCopyWith<_$InventoryDtoImpl> get copyWith =>
      __$$InventoryDtoImplCopyWithImpl<_$InventoryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InventoryDtoImplToJson(
      this,
    );
  }
}

abstract class _InventoryDto extends InventoryDto {
  const factory _InventoryDto(
          {@JsonKey(defaultValue: '') required final String attributeName,
          @JsonKey(defaultValue: '') required final String attributeItemName,
          @JsonKey(defaultValue: '') required final String attributeItemId,
          @JsonKey(
              defaultValue: 0,
              readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
          required final double listPrice,
          @JsonKey(
              defaultValue: 0,
              readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
          required final double finalPrice,
          @JsonKey(defaultValue: 0) required final double discountPercentage,
          @JsonKey(defaultValue: 0) required final int quantity}) =
      _$InventoryDtoImpl;
  const _InventoryDto._() : super._();

  factory _InventoryDto.fromJson(Map<String, dynamic> json) =
      _$InventoryDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get attributeName;
  @override
  @JsonKey(defaultValue: '')
  String get attributeItemName;
  @override
  @JsonKey(defaultValue: '')
  String get attributeItemId;
  @override
  @JsonKey(
      defaultValue: 0, readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
  double get listPrice;
  @override
  @JsonKey(
      defaultValue: 0, readValue: JsonReadValueHelper.roundToTwoDecimalPlaces)
  double get finalPrice;
  @override
  @JsonKey(defaultValue: 0)
  double get discountPercentage;
  @override
  @JsonKey(defaultValue: 0)
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$InventoryDtoImplCopyWith<_$InventoryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
