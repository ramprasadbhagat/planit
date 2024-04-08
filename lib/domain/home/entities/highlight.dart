import 'package:freezed_annotation/freezed_annotation.dart';

part 'highlight.freezed.dart';

@freezed
class Highlight with _$Highlight {
  factory Highlight({
    required String title,
    required String image,
    required bool discount,
  }) = _Highlight;
}
