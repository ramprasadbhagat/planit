import 'package:dartz/dartz.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/blog/enitities/blog.dart';
import 'package:planit/domain/blog/enitities/blog_comments.dart';
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

  @override
  Future<Either<ApiFailure, Blog>> fetchBlogDetails(String blogId) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final blog = await localDataSource.fetchBlogDetails();

        return Right(blog);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final blog = await remoteDataSource.fetchBlogDetails(blogId: blogId);

      return Right(blog);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, List<BlogComments>>> fetchComments(
    String blogId,
  ) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        final blogComments = await localDataSource.fetchBlogComments();

        return Right(blogComments);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      final blogComments =
          await remoteDataSource.fetchBlogComments(blogId: blogId);

      return Right(blogComments);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> addComment({
    required String blogId,
    required String comment,
  }) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        await localDataSource.addComment();

        return const Right(unit);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      await remoteDataSource.addComment(blogId: blogId, comment: comment);

      return const Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> dislikeBlog({required String blogId}) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        await localDataSource.addComment();

        return const Right(unit);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      await remoteDataSource.addLike(blogId: blogId, like: false);

      return const Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }

  @override
  Future<Either<ApiFailure, Unit>> likeBlog({required String blogId}) async {
    if (config.appFlavor == Flavor.mock) {
      try {
        await localDataSource.addComment();

        return const Right(unit);
      } catch (e) {
        return Left(FailureHandler.handleFailure(e));
      }
    }
    try {
      await remoteDataSource.addLike(blogId: blogId, like: true);

      return const Right(unit);
    } catch (e) {
      return Left(FailureHandler.handleFailure(e));
    }
  }
}
