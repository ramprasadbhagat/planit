// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Inventory {
  @HiveField(0)
  String get itemWeight => throw _privateConstructorUsedError;
  @HiveField(1)
  String get attributeItemId => throw _privateConstructorUsedError;
  @HiveField(2)
  double get listPrice => throw _privateConstructorUsedError;
  @HiveField(3)
  double get finalPrice => throw _privateConstructorUsedError;
  @HiveField(4)
  double get discountPercentage => throw _privateConstructorUsedError;
  @HiveField(5)
  int get quantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InventoryCopyWith<Inventory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryCopyWith<$Res> {
  factory $InventoryCopyWith(Inventory value, $Res Function(Inventory) then) =
      _$InventoryCopyWithImpl<$Res, Inventory>;
  @useResult
  $Res call(
      {@HiveField(0) String itemWeight,
      @HiveField(1) String attributeItemId,
      @HiveField(2) double listPrice,
      @HiveField(3) double finalPrice,
      @HiveField(4) double discountPercentage,
      @HiveField(5) int quantity});
}

/// @nodoc
class _$InventoryCopyWithImpl<$Res, $Val extends Inventory>
    implements $InventoryCopyWith<$Res> {
  _$InventoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemWeight = null,
    Object? attributeItemId = null,
    Object? listPrice = null,
    Object? finalPrice = null,
    Object? discountPercentage = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      itemWeight: null == itemWeight
          ? _value.itemWeight
          : itemWeight // ignore: cast_nullable_to_non_nullable
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
abstract class _$$InventoryImplCopyWith<$Res>
    implements $InventoryCopyWith<$Res> {
  factory _$$InventoryImplCopyWith(
          _$InventoryImpl value, $Res Function(_$InventoryImpl) then) =
      __$$InventoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String itemWeight,
      @HiveField(1) String attributeItemId,
      @HiveField(2) double listPrice,
      @HiveField(3) double finalPrice,
      @HiveField(4) double discountPercentage,
      @HiveField(5) int quantity});
}

/// @nodoc
class __$$InventoryImplCopyWithImpl<$Res>
    extends _$InventoryCopyWithImpl<$Res, _$InventoryImpl>
    implements _$$InventoryImplCopyWith<$Res> {
  __$$InventoryImplCopyWithImpl(
      _$InventoryImpl _value, $Res Function(_$InventoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemWeight = null,
    Object? attributeItemId = null,
    Object? listPrice = null,
    Object? finalPrice = null,
    Object? discountPercentage = null,
    Object? quantity = null,
  }) {
    return _then(_$InventoryImpl(
      itemWeight: null == itemWeight
          ? _value.itemWeight
          : itemWeight // ignore: cast_nullable_to_non_nullable
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

@HiveType(
    typeId: HiveConstants.inventoryId,
    adapterName: HiveConstants.inventoryAdapter)
class _$InventoryImpl extends _Inventory {
  const _$InventoryImpl(
      {@HiveField(0) required this.itemWeight,
      @HiveField(1) required this.attributeItemId,
      @HiveField(2) required this.listPrice,
      @HiveField(3) required this.finalPrice,
      @HiveField(4) required this.discountPercentage,
      @HiveField(5) required this.quantity})
      : super._();

  @override
  @HiveField(0)
  final String itemWeight;
  @override
  @HiveField(1)
  final String attributeItemId;
  @override
  @HiveField(2)
  final double listPrice;
  @override
  @HiveField(3)
  final double finalPrice;
  @override
  @HiveField(4)
  final double discountPercentage;
  @override
  @HiveField(5)
  final int quantity;

  @override
  String toString() {
    return 'Inventory(itemWeight: $itemWeight, attributeItemId: $attributeItemId, listPrice: $listPrice, finalPrice: $finalPrice, discountPercentage: $discountPercentage, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryImpl &&
            (identical(other.itemWeight, itemWeight) ||
                other.itemWeight == itemWeight) &&
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

  @override
  int get hashCode => Object.hash(runtimeType, itemWeight, attributeItemId,
      listPrice, finalPrice, discountPercentage, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryImplCopyWith<_$InventoryImpl> get copyWith =>
      __$$InventoryImplCopyWithImpl<_$InventoryImpl>(this, _$identity);
}

abstract class _Inventory extends Inventory {
  const factory _Inventory(
      {@HiveField(0) required final String itemWeight,
      @HiveField(1) required final String attributeItemId,
      @HiveField(2) required final double listPrice,
      @HiveField(3) required final double finalPrice,
      @HiveField(4) required final double discountPercentage,
      @HiveField(5) required final int quantity}) = _$InventoryImpl;
  const _Inventory._() : super._();

  @override
  @HiveField(0)
  String get itemWeight;
  @override
  @HiveField(1)
  String get attributeItemId;
  @override
  @HiveField(2)
  double get listPrice;
  @override
  @HiveField(3)
  double get finalPrice;
  @override
  @HiveField(4)
  double get discountPercentage;
  @override
  @HiveField(5)
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$InventoryImplCopyWith<_$InventoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
