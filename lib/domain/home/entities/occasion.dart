import 'package:freezed_annotation/freezed_annotation.dart';

part 'occasion.freezed.dart';

@freezed
class Occasion with _$Occasion {
  factory Occasion({
    required String title,
    required String image,
  }) = _Occasion;
}
