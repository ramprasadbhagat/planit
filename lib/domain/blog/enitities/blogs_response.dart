import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:planit/domain/blog/enitities/blog.dart';
part 'blogs_response.freezed.dart';

@freezed
class BlogResponse with _$BlogResponse {
  const factory BlogResponse({
    required List<Blog> blogs,
    required int totalCount,
  }) = _BlogResponse;
}
