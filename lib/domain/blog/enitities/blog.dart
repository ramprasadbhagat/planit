import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/core/value/value_objects.dart';
part 'blog.freezed.dart';

@freezed
class Blog with _$Blog {
  const factory Blog({
    required StringValue id,
    required StringValue title,
    required StringValue blogContent,
    required List<StringValue> keywords,
    required List<StringValue> blogImage,
    required List<String> blogTag,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Blog;
}
