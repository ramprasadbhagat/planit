import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_transformer.dart';
part 'order_status.freezed.dart';

@freezed
class OrderStatus with _$OrderStatus {
  const factory OrderStatus.processing({required String status}) =
      _OrderProcessing;
  const factory OrderStatus.delivered() = _OrderDelivered;
}

extension OrderStatusX on OrderStatus {
  String get getDisplayStatus => when(
        processing: (status) => naIfEmpty(capitalizeFirst(status)),
        delivered: () => 'Delivered',
      );
}
