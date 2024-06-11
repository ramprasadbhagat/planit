import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/sub_category/entities/sub_category.dart';

abstract class ISubCategoryRepository {
  Future<Either<ApiFailure, List<SubCategory>>> getShopByCategory();
  Future<Either<ApiFailure, List<SubCategory>>> getShopByOcassion();
}
