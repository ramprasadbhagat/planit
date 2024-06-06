import 'package:freezed_annotation/freezed_annotation.dart';

part 'price.freezed.dart';

@freezed
class Price with _$Price {
  const Price._();
  factory Price({
    required String price,
    required int quantity,
  }) = _Price;

  factory Price.empty() => Price(
        price: '',
        quantity: 0,
      );
}
