import 'package:freezed_annotation/freezed_annotation.dart';
part 'blogs_filter_tag.freezed.dart';

@freezed
class BlogsFilterTag with _$BlogsFilterTag {
  const factory BlogsFilterTag({
    required String id,
    required String tagName,
    required bool isActive,
    required bool isDeleted,
    required String isCreated,
  }) = _BlogsFilterTag;

  factory BlogsFilterTag.empty() => const BlogsFilterTag(
        id: '',
        isActive: false,
        isCreated: '',
        isDeleted: false,
        tagName: '',
      );
}
