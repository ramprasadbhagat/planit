import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/blog/enitities/blogs_filter_tag.dart';
part 'blog_filter_tag_dto.freezed.dart';
part 'blog_filter_tag_dto.g.dart';

@freezed
class BlogFilterTagDto with _$BlogFilterTagDto {
  const BlogFilterTagDto._();

  const factory BlogFilterTagDto({
    @JsonKey(name: 'id', defaultValue: '') required String id,
    @JsonKey(name: 'tagName', defaultValue: '') required String tagName,
    @JsonKey(
        name: 'is_active', defaultValue: false, readValue: convertStringToBool)
    required bool isActive,
    @JsonKey(
        name: 'is_deleted', defaultValue: false, readValue: convertStringToBool)
    required bool isDeleted,
    @JsonKey(name: 'is_created', defaultValue: '') required String isCreated,
  }) = _BlogFilterTagDto;

  factory BlogFilterTagDto.fromJson(Map<String, dynamic> json) =>
      _$BlogFilterTagDtoFromJson(json);

  BlogsFilterTag get toDomain => BlogsFilterTag(
        id: id,
        tagName: tagName,
        isActive: isActive,
        isCreated: isCreated,
        isDeleted: isDeleted,
      );
}

bool convertStringToBool(Map json, String key) {
  if (json[key] is String) {
    return bool.tryParse(json[key]) ?? false;
  }
  return false;
}
