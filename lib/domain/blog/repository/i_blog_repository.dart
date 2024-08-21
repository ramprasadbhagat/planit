import 'package:dartz/dartz.dart';
import 'package:planit/domain/blog/enitities/blog.dart';
import 'package:planit/domain/blog/enitities/blog_comments.dart';
import 'package:planit/domain/blog/enitities/blogs_response.dart';
import 'package:planit/domain/core/error/api_failures.dart';

abstract class IBlogRepository {
  Future<Either<ApiFailure, BlogResponse>> fetchBlogs({
    int pageSize = 10,
    int pageNumber = 1,
  });
  Future<Either<ApiFailure, Blog>> fetchBlogDetails(String blogId);
  Future<Either<ApiFailure, List<BlogComments>>> fetchComments(String blogId);
  Future<Either<ApiFailure, Unit>> addComment({
    required String blogId,
    required String comment,
  });
}
