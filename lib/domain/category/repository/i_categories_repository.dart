import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/category/entities/category.dart';

abstract class ICategoriesRepository {
  Future<Either<ApiFailure, List<Category>>> getCategories();
}
