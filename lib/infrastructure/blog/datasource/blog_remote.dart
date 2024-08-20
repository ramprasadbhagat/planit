import 'package:dio/dio.dart';
import 'package:planit/domain/blog/enitities/blogs_response.dart';
import 'package:planit/domain/core/error/exception.dart';
import 'package:planit/infrastructure/blog/dtos/blog_response_dto.dart';
import 'package:planit/infrastructure/core/http/http.dart';

class BlogRemoteDataSource {
  final HttpService httpService;

  BlogRemoteDataSource({required this.httpService});
  Future<BlogResponse> fetchBlogs({
    required int pageSize,
    required int pageNumber,
  }) async {
    final res = await httpService.request(
      method: 'GET',
      url: '/blogs/active?pageSize=$pageSize&pageNumber=$pageNumber',
    );
    _exceptionChecker(res: res);

    final blogResponse = BlogResponseDto.fromJson(res.data).toDomain;
    return blogResponse;
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
