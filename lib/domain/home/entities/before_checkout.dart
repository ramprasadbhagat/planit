import 'package:freezed_annotation/freezed_annotation.dart';

part 'before_checkout.freezed.dart';

@freezed
class BeforeCheckout with _$BeforeCheckout {
  factory BeforeCheckout({
    required String title,
    required String image,
    required bool editable,
  }) = _BeforeCheckout;
}
