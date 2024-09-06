import 'package:get_it/get_it.dart';
import 'package:planit/application/add_money/add_money_bloc.dart';
import 'package:planit/application/add_review/add_review_bloc.dart';
import 'package:planit/application/address_book/address_book_bloc.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/auth/login/login_form_bloc.dart';
import 'package:planit/application/auth/otp/otp_bloc.dart';
import 'package:planit/application/banner/banner_bloc.dart';
import 'package:planit/application/best_seller/best_seller_bloc.dart';
import 'package:planit/application/blog/blog_bloc.dart';
import 'package:planit/application/blog_details/blog_details_bloc.dart';
import 'package:planit/application/blog_search/blog_search_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/category/category_bloc.dart';
import 'package:planit/application/coupon/coupon_bloc.dart';
import 'package:planit/application/favourite_recipe/favourite_recipe_bloc.dart';
import 'package:planit/application/highlight/highlight_product_bloc.dart';
import 'package:planit/application/my_complain/complain_bloc.dart';
import 'package:planit/application/order/order_bloc.dart';
import 'package:planit/application/pincode/pincode_bloc.dart';
import 'package:planit/application/product_detail/product_detail_bloc.dart';
import 'package:planit/application/product_image/product_image_bloc.dart';
import 'package:planit/application/quick_picks/quick_picks_bloc.dart';
import 'package:planit/application/recipe/recipe_bloc.dart';
import 'package:planit/application/recipe/recipe_details/recipe_details_bloc.dart';
import 'package:planit/application/search_product/search_product_bloc.dart';
import 'package:planit/application/search_recipes/search_recipes_bloc.dart';
import 'package:planit/application/similar_product/similar_product_bloc.dart';
import 'package:planit/application/sub_category/sub_category_bloc.dart';
import 'package:planit/application/track_order/track_order_bloc.dart';
import 'package:planit/application/user/user_bloc.dart';
import 'package:planit/application/wallet/wallet_bloc.dart';
import 'package:planit/application/wishlist/wishlist_bloc.dart';
import 'package:planit/config.dart';
import 'package:planit/domain/best_seller/repository/best_seller_repository.dart';
import 'package:planit/domain/blog/repository/i_blog_repository.dart';
import 'package:planit/domain/favourite_recipe/repository/i_favourite_recipe.dart';
import 'package:planit/domain/payment/repository/i_payment_repository.dart';
import 'package:planit/domain/recipe/repository/i_recipe_repository.dart';
import 'package:planit/domain/review/repository/i_review_repository.dart';
import 'package:planit/domain/user/repository/i_user_repository.dart';
import 'package:planit/domain/wallet/repository/i_wallet_repository.dart';
import 'package:planit/infrastructure/address_book/datasources/address_book_local.dart';
import 'package:planit/infrastructure/address_book/datasources/address_book_remote.dart';
import 'package:planit/infrastructure/address_book/repository/address_book_repository.dart';
import 'package:planit/infrastructure/auth/datasources/auth_local.dart';
import 'package:planit/infrastructure/auth/datasources/auth_remote.dart';
import 'package:planit/infrastructure/auth/repository/auth_repository.dart';
import 'package:planit/infrastructure/banner/datasource/banner_local.dart';
import 'package:planit/infrastructure/banner/datasource/banner_remote.dart';
import 'package:planit/infrastructure/banner/repository/banner_repository.dart';
import 'package:planit/infrastructure/best_seller/datasource/best_seller_local.dart';
import 'package:planit/infrastructure/best_seller/datasource/best_seller_remote.dart';
import 'package:planit/infrastructure/best_seller/repository/best_seller_repository.dart';
import 'package:planit/infrastructure/blog/datasource/blog_local.dart';
import 'package:planit/infrastructure/blog/datasource/blog_remote.dart';
import 'package:planit/infrastructure/blog/repository/blog_repository.dart';
import 'package:planit/infrastructure/cart/datasource/cart_local.dart';
import 'package:planit/infrastructure/cart/datasource/cart_remote.dart';
import 'package:planit/infrastructure/cart/repository/cart_repository.dart';
import 'package:planit/infrastructure/categories/datasource/categories_local.dart';
import 'package:planit/infrastructure/categories/datasource/categories_remote.dart';
import 'package:planit/infrastructure/categories/repository/categories_repository.dart';
import 'package:planit/infrastructure/core/http/http.dart';
import 'package:planit/infrastructure/core/http/interceptor/auth_interceptor.dart';
import 'package:planit/infrastructure/coupon/datasource/coupon_local.dart';
import 'package:planit/infrastructure/coupon/datasource/coupon_remote.dart';
import 'package:planit/infrastructure/coupon/repository/coupon_repository.dart';
import 'package:planit/infrastructure/favourite_recipe/datasource/favourite_recipe_local.dart';
import 'package:planit/infrastructure/favourite_recipe/datasource/favourite_recipe_remote.dart';
import 'package:planit/infrastructure/favourite_recipe/repository/favourite_recipe_repository.dart';
import 'package:planit/infrastructure/highlights/datasource/highlight_local.dart';
import 'package:planit/infrastructure/highlights/datasource/highlight_remote.dart';
import 'package:planit/infrastructure/highlights/repository/highlight_repository.dart';
import 'package:planit/infrastructure/my_complain/datasource/complain_local.dart';
import 'package:planit/infrastructure/my_complain/datasource/complain_remote.dart';
import 'package:planit/infrastructure/my_complain/repository/complain_repository.dart';
import 'package:planit/infrastructure/order/datasource/order_local.dart';
import 'package:planit/infrastructure/order/datasource/order_remote.dart';
import 'package:planit/infrastructure/order/repository/order_repository.dart';
import 'package:planit/infrastructure/payment/datasource/payment_local.dart';
import 'package:planit/infrastructure/payment/datasource/payment_remote.dart';
import 'package:planit/infrastructure/payment/repository/payment_repository.dart';
import 'package:planit/infrastructure/pincode/datasource/pincode_local.dart';
import 'package:planit/infrastructure/pincode/datasource/pincode_remote.dart';
import 'package:planit/infrastructure/pincode/repository/pincode_repository.dart';
import 'package:planit/infrastructure/product/datasource/product_local.dart';
import 'package:planit/infrastructure/product/datasource/product_remote.dart';
import 'package:planit/infrastructure/product/repository/product_repository.dart';
import 'package:planit/infrastructure/quick_picks/datasource/quick_picks_local.dart';
import 'package:planit/infrastructure/quick_picks/datasource/quick_picks_remote.dart';
import 'package:planit/infrastructure/quick_picks/repository/quick_picks_repository.dart';
import 'package:planit/infrastructure/recipe/datasource/recipe_local.dart';
import 'package:planit/infrastructure/recipe/datasource/recipe_remote.dart';
import 'package:planit/infrastructure/recipe/repository/recipe_repository.dart';
import 'package:planit/infrastructure/review/datasource/review_local.dart';
import 'package:planit/infrastructure/review/datasource/review_remote.dart';
import 'package:planit/infrastructure/review/repository/review_repository.dart';
import 'package:planit/infrastructure/similar_product/datasource/similar_product_local.dart';
import 'package:planit/infrastructure/similar_product/datasource/similar_product_remote.dart';
import 'package:planit/infrastructure/similar_product/repository/similar_product_repository.dart';
import 'package:planit/infrastructure/sub_categories/datasource/sub_category_local.dart';
import 'package:planit/infrastructure/sub_categories/datasource/sub_cetegory_remote.dart';
import 'package:planit/infrastructure/sub_categories/repository/sub_category_repository.dart';
import 'package:planit/infrastructure/track_order/datasource/track_order_local.dart';
import 'package:planit/infrastructure/track_order/datasource/track_order_remote.dart';
import 'package:planit/infrastructure/track_order/repository/track_order_repository.dart';
import 'package:planit/infrastructure/user/datasource/user_local.dart';
import 'package:planit/infrastructure/user/datasource/user_remote.dart';
import 'package:planit/infrastructure/user/repository/user_repository.dart';
import 'package:planit/infrastructure/wallet/datasource/wallet_local.dart';
import 'package:planit/infrastructure/wallet/datasource/wallet_remote.dart';
import 'package:planit/infrastructure/wallet/repository/wallet_repository.dart';
import 'package:planit/infrastructure/wishlist/datasource/wishlist_local.dart';
import 'package:planit/infrastructure/wishlist/datasource/wishlist_remote.dart';
import 'package:planit/infrastructure/wishlist/repository/wishlist_repository.dart';
import 'package:planit/presentation/router/router.dart';
import 'package:planit/utils/storage_service.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

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

  locator.registerLazySingleton(
    () => OtpBloc(
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
    () => const SubCategoryLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => SubCategoryRemoteDataSource(
      httpService: locator<HttpService>(),
    ),
  );

  locator.registerLazySingleton(
    () => SubCategoryRepository(
      config: locator<Config>(),
      localDataSource: locator<SubCategoryLocalDataSource>(),
      remoteDataSource: locator<SubCategoryRemoteDataSource>(),
    ),
  );

  locator.registerLazySingleton(
    () => SubCategoryBloc(
      repository: locator<ProductRepository>(),
      subCategoryRepository: locator<SubCategoryRepository>(),
    ),
  );
  /////============================================================
  // Search Products
  //============================================================
  locator.registerLazySingleton(
    () => SearchProductBloc(
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
    () => CartRemoteDataSource(
      storageService: locator<StorageService>(),
      httpService: locator<HttpService>(),
    ),
  );

  locator.registerLazySingleton(
    () => CartRepository(
      config: locator<Config>(),
      localDataSource: locator<CartLocalDataSource>(),
      remoteDataSource: locator<CartRemoteDataSource>(),
      storageService: locator<StorageService>(),
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
    () => WishlistRemoteDataSource(
      httpService: locator<HttpService>(),
      storageService: locator<StorageService>(),
    ),
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

  /////============================================================
  //  Pincode
  //============================================================
  locator.registerLazySingleton(
    () => const PincodeLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => PincodeRemoteDataSource(
      storageService: locator<StorageService>(),
      httpService: locator<HttpService>(),
    ),
  );

  locator.registerLazySingleton(
    () => PincodeRepository(
      config: locator<Config>(),
      localDataSource: locator<PincodeLocalDataSource>(),
      remoteDataSource: locator<PincodeRemoteDataSource>(),
      storageService: locator<StorageService>(),
    ),
  );
  locator.registerLazySingleton(
    () => PincodeBloc(
      repository: locator<PincodeRepository>(),
    ),
  );
  /////============================================================
  //  AddressBook
  //============================================================
  locator.registerLazySingleton(
    () => const AddressBookLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => AddressBookRemoteDataSource(
      storageService: locator<StorageService>(),
      httpService: locator<HttpService>(),
    ),
  );

  locator.registerLazySingleton(
    () => AddressBookRepository(
      config: locator<Config>(),
      localDataSource: locator<AddressBookLocalDataSource>(),
      remoteDataSource: locator<AddressBookRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => AddressBookBloc(
      repository: locator<AddressBookRepository>(),
    ),
  );
  /////============================================================
  //  Order
  //============================================================

  locator.registerLazySingleton(
    () => const OrderLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => OrderRemoteDataSource(
      storageService: locator<StorageService>(),
      httpService: locator<HttpService>(),
    ),
  );
  locator.registerLazySingleton(
    () => OrderRepository(
      config: locator<Config>(),
      remoteDataSource: locator<OrderRemoteDataSource>(),
      localDataSource: locator<OrderLocalDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => OrderBloc(
      repository: locator<OrderRepository>(),
      paymentRepository: locator<IPaymentRepository>(),
    ),
  );
  /////============================================================
  //  Coupon
  //============================================================

  locator.registerLazySingleton(
    () => const CouponLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => CouponRemoteDataSource(
      storageService: locator<StorageService>(),
      httpService: locator<HttpService>(),
    ),
  );
  locator.registerLazySingleton(
    () => CouponRepository(
      config: locator<Config>(),
      remoteDataSource: locator<CouponRemoteDataSource>(),
      localDataSource: locator<CouponLocalDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => CouponBloc(
      repository: locator<CouponRepository>(),
    ),
  );

  /////============================================================
  //  Track Order
  //============================================================

  locator.registerLazySingleton(
    () => const TrackOrderLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => TrackOrderRemoteDataSource(
      storageService: locator<StorageService>(),
      httpService: locator<HttpService>(),
    ),
  );
  locator.registerLazySingleton(
    () => TrackOrderRepository(
      config: locator<Config>(),
      remoteDataSource: locator<TrackOrderRemoteDataSource>(),
      localDataSource: locator<TrackOrderLocalDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => TrackOrderBloc(
      repository: locator<TrackOrderRepository>(),
    ),
  );

  /////============================================================
  //  User
  //============================================================

  locator.registerLazySingleton(
    () => UserLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => UserRemoteDateSource(
      storageService: locator<StorageService>(),
      httpService: locator<HttpService>(),
    ),
  );

  locator.registerLazySingleton<IUserRepository>(
    () => UserRepository(
      config: locator<Config>(),
      localDataSource: locator<UserLocalDataSource>(),
      remoteDataSource: locator<UserRemoteDateSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => UserProfileBloc(repository: locator<IUserRepository>()),
  );

  /////============================================================
  //  Complain
  //============================================================

  locator.registerLazySingleton(
    () => const ComplainLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => ComplainRemoteDataSource(
      storageService: locator<StorageService>(),
      httpService: locator<HttpService>(),
    ),
  );

  locator.registerLazySingleton(
    () => ComplainRepository(
      config: locator<Config>(),
      localDataSource: locator<ComplainLocalDataSource>(),
      remoteDataSource: locator<ComplainRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => ComplainBloc(repository: locator<ComplainRepository>()),
  );

  /////============================================================
  //  Order Review
  //============================================================

  locator.registerLazySingleton(
    () => const ReviewLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => ReviewRemoteDataSource(
      storageService: locator<StorageService>(),
      httpService: locator<HttpService>(),
    ),
  );

  locator.registerLazySingleton<IReviewRepository>(
    () => ReviewRepository(
      config: locator<Config>(),
      localDataSource: locator<ReviewLocalDataSource>(),
      remoteDataSource: locator<ReviewRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => AddReviewBloc(reviewRepository: locator<IReviewRepository>()),
  );

  /////============================================================
  //  Recipe
  //============================================================

  locator.registerLazySingleton(
    () => const RecipeLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => RecipeRemoteDataSource(
      httpService: locator<HttpService>(),
      storageService: locator<StorageService>(),
    ),
  );

  locator.registerLazySingleton<IRecipeRepository>(
    () => RecipeRepository(
      config: locator<Config>(),
      localDataSource: locator<RecipeLocalDataSource>(),
      remoteDataSource: locator<RecipeRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => RecipeBloc(locator<IRecipeRepository>()),
  );
  locator.registerLazySingleton(
    () => RecipeDetailsBloc(locator<IRecipeRepository>()),
  );

  /////============================================================
  //  Favourite Recipe
  //============================================================

  locator.registerLazySingleton(
    () => const FavouriteRecipeLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => FavouriteRecipeRemoteDataSource(
      httpService: locator<HttpService>(),
      storageService: locator<StorageService>(),
    ),
  );

  locator.registerLazySingleton<IFavouriteRecipeRepository>(
    () => FavouriteRecipeRepository(
      config: locator<Config>(),
      localDataSource: locator<FavouriteRecipeLocalDataSource>(),
      remoteDataSource: locator<FavouriteRecipeRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => FavouriteRecipeBloc(locator<IFavouriteRecipeRepository>()),
  );
  /////============================================================
  //  Search Recipes
  //============================================================
  locator.registerLazySingleton(
    () => SearchRecipesBloc(repository: locator<IRecipeRepository>()),
  );
  /////============================================================
  //  Blogs
  //============================================================

  locator.registerLazySingleton(
    () => const BlogLocalDataSource(),
  );

  locator.registerLazySingleton(
    () => BlogRemoteDataSource(
      storageService: locator<StorageService>(),
      httpService: locator<HttpService>(),
    ),
  );

  locator.registerLazySingleton<IBlogRepository>(
    () => BlogRepository(
      config: locator<Config>(),
      localDataSource: locator<BlogLocalDataSource>(),
      remoteDataSource: locator<BlogRemoteDataSource>(),
    ),
  );
  locator.registerLazySingleton(
    () => BlogBloc(locator<IBlogRepository>()),
  );
  locator.registerLazySingleton(
    () => BlogDetailsBloc(locator<IBlogRepository>()),
  );

  locator.registerLazySingleton(
    () => BlogSearchBloc(locator<IBlogRepository>()),
  );

  /////============================================================
  //  Payment Gateway Integration
  //============================================================

  locator.registerLazySingleton<Razorpay>(
    () => Razorpay(),
  );

  locator.registerLazySingleton(
    () => const PaymentLocalDatasource(),
  );

  locator.registerLazySingleton(
    () => PaymentRemoteDatasource(
      config: locator<Config>(),
      razorpay: locator<Razorpay>(),
      httpService: locator<HttpService>(),
      storageService: locator<StorageService>(),
    ),
  );

  locator.registerLazySingleton<IPaymentRepository>(
    () => PaymentRepository(
      config: locator<Config>(),
      localDatasource: locator<PaymentLocalDatasource>(),
      remoteDatasource: locator<PaymentRemoteDatasource>(),
    ),
  );

  /////============================================================
  //  Favourite Recipe
  //============================================================

  locator.registerLazySingleton(
    () => const WalletLocalDatasource(),
  );

  locator.registerLazySingleton(
    () => WalletRemoteDatasource(
      httpService: locator<HttpService>(),
      storageService: locator<StorageService>(),
    ),
  );

  locator.registerLazySingleton<IWalletRepository>(
    () => WalletRepository(
      config: locator<Config>(),
      localDatasource: locator<WalletLocalDatasource>(),
      remoteDatasource: locator<WalletRemoteDatasource>(),
    ),
  );
  locator.registerLazySingleton(
    () => AddMoneyBloc(
      locator<IWalletRepository>(),
      locator<IPaymentRepository>(),
    ),
  );

  locator.registerLazySingleton(
    () => WalletBloc(
      locator<IWalletRepository>(),
    ),
  );

  /////============================================================
  //  Best Seller
  //============================================================

  locator.registerLazySingleton(
    () => const BestSellerLocalDatasource(),
  );

  locator.registerLazySingleton(
    () => BestSellerRemoteDatasource(
      httpService: locator<HttpService>(),
    ),
  );

  locator.registerLazySingleton<IBestSellerRepository>(
    () => BestSellerRepository(
      config: locator<Config>(),
      localDataSource: locator<BestSellerLocalDatasource>(),
      remoteDataSource: locator<BestSellerRemoteDatasource>(),
    ),
  );
  locator.registerLazySingleton(
    () => BestSellerBloc(
      locator<IBestSellerRepository>(),
    ),
  );
}
