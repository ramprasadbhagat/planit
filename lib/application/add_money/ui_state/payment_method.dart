import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_method.freezed.dart';

@freezed
class PaymentMethod with _$PaymentMethod {
  const PaymentMethod._();

  const factory PaymentMethod.razorpay() = _Razorpay;
  const factory PaymentMethod.wallet() = _Wallet;
  const factory PaymentMethod.cod() = _Cod;

  String get paymentType => when(
        razorpay: () => 'online',
        wallet: () => 'wallet',
        cod: () => 'cash',
      );
}
