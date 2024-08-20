import 'package:dartz/dartz.dart';
import 'package:planit/domain/blog/enitities/blogs_response.dart';
import 'package:planit/domain/core/error/api_failures.dart';

abstract class IBlogRepository {
  Future<Either<ApiFailure, BlogResponse>> fetchBlogs({
    int pageSize = 10,
    int pageNumber = 1,
  });
}
