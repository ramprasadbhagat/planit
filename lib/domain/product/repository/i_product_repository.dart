import 'package:dartz/dartz.dart';
import 'package:planit/domain/core/error/api_failures.dart';
import 'package:planit/domain/product/entities/product.dart';
import 'package:planit/domain/product/entities/product_detail.dart';
import 'package:planit/domain/product/entities/product_image.dart';
import 'package:planit/domain/product/entities/product_response.dart';
import 'package:planit/domain/product/value/value_objects.dart';
import 'package:planit/domain/sub_category/entities/sub_category.dart';

abstract class IProductRepository {
  Future<Either<ApiFailure, List<Product>>> getHighlightedProduct();
  Future<Either<ApiFailure, List<Product>>> getQuickPackProduct();
  Future<Either<ApiFailure, List<Product>>> getSubCategoryProduct(
    SubCategory subCategory,
  );
  Future<Either<ApiFailure, ProductResponse>> getSearchProduct({
    required String searchKey,
    required int pageNumber,
  });
  Future<Either<ApiFailure, List<ProductImage>>> getProductImage(
    ProductId productId,
  );
  Future<Either<ApiFailure, ProductDetail>> getProductDetail(
    ProductId productId,
  );
}
