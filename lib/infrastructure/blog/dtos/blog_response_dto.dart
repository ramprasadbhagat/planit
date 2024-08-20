import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/blog/enitities/blogs_response.dart';
import 'package:planit/infrastructure/blog/dtos/blog_dto.dart';
part 'blog_response_dto.freezed.dart';
part 'blog_response_dto.g.dart';

@freezed
class BlogResponseDto with _$BlogResponseDto {
  const BlogResponseDto._();

  const factory BlogResponseDto({
    @JsonKey(defaultValue: []) required List<BlogDto> items,
    @JsonKey(defaultValue: 0) required int totalCount,
  }) = _BlogResponseDto;

  factory BlogResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BlogResponseDtoFromJson(json);

  BlogResponse get toDomain => BlogResponse(
        blogs: items.map((e) => e.toDomain).toList(),
        totalCount: totalCount,
      );
}
