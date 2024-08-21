import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/blog/enitities/blog.dart';
import 'package:planit/domain/core/value/value_objects.dart';
part 'blog_dto.freezed.dart';
part 'blog_dto.g.dart';

@freezed
class BlogDto with _$BlogDto {
  const BlogDto._();
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory BlogDto({
    @JsonKey(defaultValue: '') required String id,
    @JsonKey(defaultValue: '') required String userId,
    @JsonKey(defaultValue: '') required String blogTitle,
    @JsonKey(defaultValue: '') required String blogContent,
    @JsonKey(defaultValue: []) required List<String> blogImages,
    @JsonKey(defaultValue: []) required List<String> keyword,
    required DateTime createdAt,
    required DateTime updatedAt,
    @JsonKey(
      readValue: blogTagReadValue,
      defaultValue: [],
    )
    required List<String> blogTag,
    @JsonKey(defaultValue: []) required List<String> hyperlink,
    @JsonKey(defaultValue: 0, name: 'likesCount') required int likesCount,
    @JsonKey(defaultValue: 0, name: 'dislikeCount') required int dislikeCount,
  }) = _BlogDto;

  factory BlogDto.fromJson(Map<String, dynamic> json) =>
      _$BlogDtoFromJson(json);

  Blog get toDomain => Blog(
        id: StringValue(id),
        title: StringValue(blogTitle),
        blogContent: StringValue(blogContent),
        keywords: keyword.map((e) => StringValue(e)).toList(),
        blogImage: blogImages.map((e) => StringValue(e)).toList(),
        blogTag: blogTag,
        createdAt: createdAt,
        updatedAt: updatedAt,
        dislikeCount: IntegerValue(dislikeCount),
        likesCount: IntegerValue(likesCount),
      );
}

dynamic blogTagReadValue(Map json, String key) {
  if (json[key] is List) {
    return json[key];
  } else {
    return [];
  }
}
