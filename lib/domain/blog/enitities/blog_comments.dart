import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
part 'blog_comments.freezed.dart';

@freezed
class BlogComments with _$BlogComments {
  const factory BlogComments({
    required StringValue id,
    required StringValue comment,
    required DateTime commentDate,
    required StringValue userName,
  }) = _BlogComments;
}
