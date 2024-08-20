import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/blog/enitities/blogs_response.dart';
import 'package:planit/domain/blog/repository/i_blog_repository.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/core/error/failure_handler.dart';
import 'package:planit/infrastructure/blog/datasource/blog_local.dart';
import 'package:planit/infrastructure/blog/datasource/blog_remote.dart';

class BlogRepository extends IBlogRepository {
  final Config config;
  final BlogLocalDataSource localDataSource;
  final BlogRemoteDataSource remoteDataSource;

  BlogRepository({
    required this.config,
    required this.localDataSource,
    required this.remoteDataSource,
  });
  @override
  Future<Either<ApiFailure, BlogResponse>> fetchBlogs({
    int pageSize = 10,
    int pageNumber = 1,
  }) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final blogResponse = await localDataSource.fetchBlogs();

        return Right(blogResponse);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final blogResponse = await remoteDataSource.fetchBlogs(
        pageNumber: pageNumber,
        pageSize: pageSize,
      );

      return Right(blogResponse);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
