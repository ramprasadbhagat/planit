part of 'order_bloc.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.initialized() = _Initialized;
  const factory OrderEvent.submitOrder({
    required CartItem cartItem,
    required AddressBook addressBook,
    required String date,
  }) = _SubmitOrder;
}
