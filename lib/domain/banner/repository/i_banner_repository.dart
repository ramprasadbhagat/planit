import 'package:dartz/dartz.dart';
import 'package:planit/domain/banner/entities/banner.dart';
import 'package:planit/domain/core/error/api_failures.dart';

abstract class IBannerRepository {
  Future<Either<ApiFailure, List<Banner>>> getBanner();
  Future<Either<ApiFailure, List<Banner>>> getCategoryBanner();
}
