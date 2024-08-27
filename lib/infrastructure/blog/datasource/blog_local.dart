import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:planit/domain/blog/enitities/blog.dart';
import 'package:planit/domain/blog/enitities/blog_comments.dart';
import 'package:planit/domain/blog/enitities/blogs_response.dart';
import 'package:planit/infrastructure/blog/dtos/blog_comments_dto.dart';
import 'package:planit/infrastructure/blog/dtos/blog_dto.dart';
import 'package:planit/infrastructure/blog/dtos/blog_response_dto.dart';

class BlogLocalDataSource {
  const BlogLocalDataSource();
  Future<BlogResponse> fetchBlogs() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/blogs.json'),
    );

    return BlogResponseDto.fromJson(res).toDomain;
  }

  Future<Blog> fetchBlogDetails() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/blog.json'),
    );

    return BlogDto.fromJson(res).toDomain;
  }

  Future<List<BlogComments>> fetchBlogComments() async {
    final res = json.decode(
      await rootBundle.loadString('assets/json/blog_comments.json'),
    );

    return (res['items'] as List)
        .map((e) => BlogCommentsDto.fromJson(e).toDomain)
        .toList();
  }

  Future<void> addComment() async {
    await Future.delayed(const Duration(seconds: 2));
  }
}
