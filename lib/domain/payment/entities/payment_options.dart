import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_options.freezed.dart';

@freezed
class PaymentOptions with _$PaymentOptions {
  const factory PaymentOptions({
    required String name,
    required String description,
    required double amount,
    required PrefillData prefill,
  }) = _PaymentOptions;
}

@freezed
class PrefillData with _$PrefillData {
  const factory PrefillData({
    required String contact,
    String? email,
  }) = _PrefillData;
}
