import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:planit/domain/blog/enitities/blogs_response.dart';
import 'package:planit/infrastructure/blog/dtos/blog_response_dto.dart';

class BlogLocalDataSource {
  const BlogLocalDataSource();
  Future<BlogResponse> fetchBlogs() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/blogs.json'),
    );

    return BlogResponseDto.fromJson(res).toDomain;
  }
}
