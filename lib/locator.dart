import 'package:get_it/get_it.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/category/category_bloc.dart';
import 'package:planit/application/highlight/highlight_product_bloc.dart';
import 'package:planit/application/quick_picks/quick_picks_bloc.dart';
import 'package:planit/application/sub_category/sub_category_bloc.dart';
import 'package:planit/config.dart';
import 'package:planit/infrastructure/cart/datasource/cart_local.dart';
import 'package:planit/infrastructure/cart/datasource/cart_remote.dart';
import 'package:planit/infrastructure/cart/repository/cart_repository.dart';
import 'package:planit/infrastructure/categories/datasource/categories_local.dart';
import 'package:planit/infrastructure/categories/datasource/categories_remote.dart';
import 'package:planit/infrastructure/categories/repository/categories_repository.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/core/http/interceptor/auth_interceptor.dart';
import 'package:planit/infrastructure/product/datasource/product_local.dart';
import 'package:planit/infrastructure/product/datasource/product_remote.dart';
import 'package:planit/infrastructure/product/repository/product_repository.dart';
import 'package:planit/presentation/router/router.dart';

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
    () => HttpService(
      config: locator<Config>(),
      interceptors: [
        locator<AuthInterceptor>(),
      ],
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
  locator.registerLazySingleton(
    () => HighlightProductBloc(
      repository: locator<ProductRepository>(),
    ),
  );
  locator.registerLazySingleton(
    () => QuickPicksBloc(
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
}
