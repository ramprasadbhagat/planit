import 'package:dio/dio.dart';
import 'package:planit/domain/blog/enitities/blog.dart';
import 'package:planit/domain/blog/enitities/blog_comments.dart';
import 'package:planit/domain/blog/enitities/blogs_response.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/infrastructure/blog/dtos/blog_comments_dto.dart';
import 'package:planit/infrastructure/blog/dtos/blog_dto.dart';
import 'package:planit/infrastructure/blog/dtos/blog_response_dto.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/utils/storage_service.dart';

class BlogRemoteDataSource {
  final HttpService httpService;
  final StorageService storageService;
  BlogRemoteDataSource({
    required this.httpService,
    required this.storageService,
  });
  Future<BlogResponse> fetchBlogs({
    required int pageSize,
    required int pageNumber,
  }) async {
    final res = await httpService.request(
      method: 'GET',
      url: '/blogs?pageSize=$pageSize&pageNumber=$pageNumber',
    );
    _exceptionChecker(res: res);

    final blogResponse = BlogResponseDto.fromJson(res.data).toDomain;
    return blogResponse;
  }

  Future<Blog> fetchBlogDetails({
    required String blogId,
  }) async {
    final userId = storageService.getUserId();

    final res = await httpService.request(
      method: 'GET',
      url: '/blogs/details?blog_id=$blogId&user_id=$userId',
    );
    _exceptionChecker(res: res);

    final blog = BlogDto.fromJson(res.data).toDomain;
    return blog;
  }

  Future<List<BlogComments>> fetchBlogComments({
    required String blogId,
  }) async {
    final res = await httpService.request(
      method: 'GET',
      url: '/blogComment/blog/$blogId',
    );
    _exceptionChecker(res: res);

    final blogcomments = (res.data['items'] as List)
        .map((e) => BlogCommentsDto.fromJson(e).toDomain)
        .toList();
    return blogcomments;
  }

  Future<void> addComment({
    required String blogId,
    required String comment,
  }) async {
    final userId = storageService.getUserId();
    final res = await httpService.request(
      method: 'POST',
      url: '/blogComment',
      data: {
        'blog_id': blogId,
        'user_id': userId,
        'comment': comment,
      },
    );
    _exceptionChecker(res: res);
  }

  void _exceptionChecker({required Response<dynamic> res}) {
    if (res.data['errors'] != null && res.data['errors'].isNotEmpty) {
      throw ServerException(message: res.data['errors']);
    } else if (res.statusCode != 200) {
      throw ServerException(
        code: res.statusCode ?? 0,
        message: res.statusMessage ?? '',
      );
    }
  }
}
