import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_status.freezed.dart';

@freezed
class OrderStatus with _$OrderStatus {
  const factory OrderStatus.processing() = _OrderProcessing;
  const factory OrderStatus.delivered() = _OrderDelivered;
}

extension OrderStatusX on OrderStatus {
  String get getDisplayStatus =>
      when(processing: () => 'Processing', delivered: () => 'Delivered');
}
