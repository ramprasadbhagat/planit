import 'package:get_it/get_it.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/auth/login/login_form_bloc.dart';
import 'package:planit/application/banner/banner_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/category/category_bloc.dart';
import 'package:planit/application/highlight/highlight_product_bloc.dart';
import 'package:planit/application/product_detail/product_detail_bloc.dart';
import 'package:planit/application/product_image/product_image_bloc.dart';
import 'package:planit/application/quick_picks/quick_picks_bloc.dart';
import 'package:planit/application/similar_product/similar_product_bloc.dart';
import 'package:planit/application/sub_category/sub_category_bloc.dart';
import 'package:planit/application/wishlist/wishlist_bloc.dart';
import 'package:planit/config.dart';
import 'package:planit/infrastructure/auth/datasources/auth_local.dart';
import 'package:planit/infrastructure/auth/datasources/auth_remote.dart';
import 'package:planit/infrastructure/auth/repository/auth_repository.dart';
import 'package:planit/infrastructure/banner/datasource/banner_local.dart';
import 'package:planit/infrastructure/banner/datasource/banner_remote.dart';
import 'package:planit/infrastructure/banner/repository/banner_repository.dart';
import 'package:planit/infrastructure/cart/datasource/cart_local.dart';
import 'package:planit/infrastructure/cart/datasource/cart_remote.dart';
import 'package:planit/infrastructure/cart/repository/cart_repository.dart';
import 'package:planit/infrastructure/categories/datasource/categories_local.dart';
import 'package:planit/infrastructure/categories/datasource/categories_remote.dart';
import 'package:planit/infrastructure/categories/repository/categories_repository.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/core/http/interceptor/auth_interceptor.dart';
import 'package:planit/infrastructure/highlights/datasource/highlight_local.dart';
import 'package:planit/infrastructure/highlights/datasource/highlight_remote.dart';
import 'package:planit/infrastructure/highlights/repository/highlight_repository.dart';
import 'package:planit/infrastructure/product/datasource/product_local.dart';
import 'package:planit/infrastructure/product/datasource/product_remote.dart';
import 'package:planit/infrastructure/product/repository/product_repository.dart';
import 'package:planit/infrastructure/quick_picks/datasource/quick_picks_local.dart';
import 'package:planit/infrastructure/quick_picks/datasource/quick_picks_remote.dart';
import 'package:planit/infrastructure/quick_picks/repository/quick_picks_repository.dart';
import 'package:planit/infrastructure/similar_product/datasource/similar_product_local.dart';
import 'package:planit/infrastructure/similar_product/datasource/similar_product_remote.dart';
import 'package:planit/infrastructure/similar_product/repository/similar_product_repository.dart';
import 'package:planit/infrastructure/wishlist/datasource/wishlist_local.dart';
import 'package:planit/infrastructure/wishlist/datasource/wishlist_remote.dart';
import 'package:planit/infrastructure/wishlist/repository/wishlist_repository.dart';
import 'package:planit/presentation/router/router.dart';
import 'package:planit/utils/storage_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  //============================================================
  //  CORE
  //============================================================
  locator.registerLazySingleton(() => Config());
  locator.registerLazySingleton(() => AppRouter());
  locator.registerLazySingleton(
    () => AuthInterceptor(
      config: locator<Config>(),
    ),
  );
  locator.registerLazySingleton(
    () => StorageService(),
  );
  locator.registerLazySingleton(
    () => HttpService(
      config: locator<Config>(),
      interceptors: [
        locator<AuthInterceptor>(),
      ],
    ),
  );
  ////////////////////////////////////////////////////////////////

  /////============================================================
  //  Auth
  //============================================================

  locator.registerLazySingleton(
    () => const AuthLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => AuthRemoteDataSource(
      httpService: locator<HttpService>(),
      storageService: locator<StorageService>(),
    ),
  );

  locator.registerLazySingleton(
    () => AuthRepository(
      config: locator<Config>(),
      localDataSource: locator<AuthLocalDataSource>(),
      remoteDataSource: locator<AuthRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => LoginFormBloc(
      authRepository: locator<AuthRepository>(),
    ),
  );
  locator.registerLazySingleton(
    () => AuthBloc(
      authRepository: locator<AuthRepository>(),
    ),
  );
  ////////////////////////////////////////////////////////////////

  /////============================================================
  //  Categories
  //============================================================
  locator.registerLazySingleton(
    () => const CategoriesLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => CategoriesRemoteDataSource(httpService: locator<HttpService>()),
  );

  locator.registerLazySingleton(
    () => CategoriesRepository(
      config: locator<Config>(),
      localDataSource: locator<CategoriesLocalDataSource>(),
      remoteDataSource: locator<CategoriesRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => CategoryBloc(
      repository: locator<CategoriesRepository>(),
    ),
  );

  /////============================================================
  //  Product
  //============================================================
  locator.registerLazySingleton(
    () => const ProductLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => ProductRemoteDataSource(httpService: locator<HttpService>()),
  );

  locator.registerLazySingleton(
    () => ProductRepository(
      config: locator<Config>(),
      localDataSource: locator<ProductLocalDataSource>(),
      remoteDataSource: locator<ProductRemoteDataSource>(),
    ),
  );

  locator.registerFactory(
    () => ProductImageBloc(
      repository: locator<ProductRepository>(),
    ),
  );

  locator.registerFactory(
    () => ProductDetailBloc(
      repository: locator<ProductRepository>(),
    ),
  );

  ////////////////////////////////////////////////////////////////

  /////============================================================
  // Sub Categories
  //============================================================
  locator.registerLazySingleton(
    () => SubCategoryBloc(
      repository: locator<ProductRepository>(),
    ),
  );

  ////////////////////////////////////////////////////////////////

  /////============================================================
  //  Cart
  //============================================================
  locator.registerLazySingleton(
    () => const CartLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => CartRemoteDataSource(httpService: locator<HttpService>()),
  );

  locator.registerLazySingleton(
    () => CartRepository(
      config: locator<Config>(),
      localDataSource: locator<CartLocalDataSource>(),
      remoteDataSource: locator<CartRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => CartBloc(
      repository: locator<CartRepository>(),
    ),
  );
  ////////////////////////////////////////////////////////////////
  /////============================================================
  // Similar Products
  //============================================================
  locator.registerLazySingleton(
    () => const SimilarProductLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => SimilarProductRemoteDataSource(httpService: locator<HttpService>()),
  );

  locator.registerLazySingleton(
    () => SimilarProductRepository(
      config: locator<Config>(),
      localDataSource: locator<SimilarProductLocalDataSource>(),
      remoteDataSource: locator<SimilarProductRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => SimilarProductBloc(
      repository: locator<SimilarProductRepository>(),
    ),
  );
  ////////////////////////////////////////////////////////////////
  /////
  // ============================================================
  // Highlight Products
  //============================================================
  locator.registerLazySingleton(
    () => const HighlightLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => HighlightRemoteDataSource(httpService: locator<HttpService>()),
  );

  locator.registerLazySingleton(
    () => HighlightRepository(
      config: locator<Config>(),
      localDataSource: locator<HighlightLocalDataSource>(),
      remoteDataSource: locator<HighlightRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => HighlightProductBloc(
      repository: locator<HighlightRepository>(),
    ),
  );
  ////////////////////////////////////////////////////////////////
  /////
  ///// Quick Picks
  //============================================================
  locator.registerLazySingleton(
    () => const QuickPicksLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => QuickPicksRemoteDataSource(httpService: locator<HttpService>()),
  );

  locator.registerLazySingleton(
    () => QuickPicksRepository(
      config: locator<Config>(),
      localDataSource: locator<QuickPicksLocalDataSource>(),
      remoteDataSource: locator<QuickPicksRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => QuickPicksBloc(
      repository: locator<QuickPicksRepository>(),
    ),
  );
  ////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////
  /// Banner
  //============================================================
  locator.registerLazySingleton(
    () => const BannersLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => BannersRemoteDataSource(httpService: locator<HttpService>()),
  );

  locator.registerLazySingleton(
    () => BannerRepository(
      config: locator<Config>(),
      localDataSource: locator<BannersLocalDataSource>(),
      remoteDataSource: locator<BannersRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => BannerBloc(
      repository: locator<BannerRepository>(),
    ),
  );
  ////////////////////////////////////////////////////////////////
  ///////////////////////////////////////////////////////////////////
  /// Wishlist
  //============================================================
  locator.registerLazySingleton(
    () => const WishlistLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => WishlistRemoteDataSource(httpService: locator<HttpService>()),
  );

  locator.registerLazySingleton(
    () => WishlistRepository(
      config: locator<Config>(),
      localDataSource: locator<WishlistLocalDataSource>(),
      remoteDataSource: locator<WishlistRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => WishlistBloc(
      repository: locator<WishlistRepository>(),
    ),
  );
}
