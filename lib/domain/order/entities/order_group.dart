import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/order/entities/order.dart';

part 'order_group.freezed.dart';

@freezed
class OrderGroup with _$OrderGroup {
  factory OrderGroup({
    required String displayName,
    required List<Order> order,
  }) = _OrderGroup;

  factory OrderGroup.empty() => OrderGroup(
        order: <Order>[],
        displayName: '',
      );
}
