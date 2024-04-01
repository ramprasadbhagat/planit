import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/home/entities/highlight.dart';

part 'highlight_dto.freezed.dart';
part 'highlight_dto.g.dart';

@freezed
class HighlightDto with _$HighlightDto {
  const HighlightDto._();
  factory HighlightDto({
    @JsonKey(name: 'title', defaultValue: '') required String title,
    @JsonKey(name: 'image', defaultValue: '') required String image,
  }) = _HighlightDto;

  factory HighlightDto.fromJson(Map<String, dynamic> json) =>
      _$HighlightDtoFromJson(json);

  Highlight get toDomain => Highlight(title: title, image: image);
}
