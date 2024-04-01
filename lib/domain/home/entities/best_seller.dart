import 'package:freezed_annotation/freezed_annotation.dart';

part 'best_seller.freezed.dart';

@freezed
class BestSeller with _$BestSeller {
  factory BestSeller({
    required String title,
    required String image,
  }) = _BestSeller;
}
