import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/blog/enitities/blog_comments.dart';
import 'package:planit/domain/core/value/value_objects.dart';
part 'blog_comments_dto.freezed.dart';
part 'blog_comments_dto.g.dart';

@freezed
class BlogCommentsDto with _$BlogCommentsDto {
  const BlogCommentsDto._();
  const factory BlogCommentsDto({
    @JsonKey(defaultValue: '') required String id,
    @JsonKey(defaultValue: '') required String comment,
    @JsonKey(name: 'comment_date') required DateTime commentDate,
    @JsonKey(defaultValue: '') required String userName,
  }) = _BlogCommentsDto;

  factory BlogCommentsDto.fromJson(Map<String, dynamic> json) =>
      _$BlogCommentsDtoFromJson(json);

  BlogComments get toDomain => BlogComments(
        id: StringValue(id),
        comment: StringValue(comment),
        commentDate: commentDate,
        userName: StringValue(userName),
      );
}
