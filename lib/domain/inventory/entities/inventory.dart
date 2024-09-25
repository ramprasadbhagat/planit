import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:planit/utils/hive_constants.dart';

part 'inventory.freezed.dart';
part 'inventory.g.dart';

@freezed
class Inventory with _$Inventory {
  const Inventory._();
  @HiveType(
    typeId: HiveConstants.inventoryId,
    adapterName: HiveConstants.inventoryAdapter,
  )
  const factory Inventory({
    @HiveField(0) required String itemWeight,
    @HiveField(1) required String attributeItemId,
    @HiveField(2) required double listPrice,
    @HiveField(3) required double finalPrice,
    @HiveField(4) required double discountPercentage,
    @HiveField(5) required int quantity,
  }) = _Inventory;
  bool get isEditable => quantity > 1;
  factory Inventory.empty() => const Inventory(
        itemWeight: '0 gms',
        attributeItemId: '',
        listPrice: 0,
        finalPrice: 0,
        quantity: 0,
        discountPercentage: 0.0,
      );

  bool get isDiscountApplied => discountPercentage > 0;
}
