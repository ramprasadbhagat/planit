import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_method.freezed.dart';

@freezed
class PaymentMethod with _$PaymentMethod {
  const factory PaymentMethod.card() = _Card;
  const factory PaymentMethod.razorpay() = _Razorpay;
  const factory PaymentMethod.wallet() = _Wallet;
  const factory PaymentMethod.cod() = _Cod;
}
