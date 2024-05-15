import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:planit/application/auth/auth_bloc.dart';
import 'package:planit/application/auth/login/login_form_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/category/category_bloc.dart';
import 'package:planit/application/highlight/highlight_product_bloc.dart';
import 'package:planit/application/quick_picks/quick_picks_bloc.dart';
import 'package:planit/application/similar_product/similar_product_bloc.dart';
import 'package:planit/application/sub_category/sub_category_bloc.dart';
import 'package:planit/config.dart';
import 'package:planit/locator.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/router/router.dart';
import 'package:planit/presentation/theme/theme_data.dart';
import 'package:planit/utils/storage_service.dart';

Future<void> initialSetup({required Flavor flavor}) async {
  setupLocator();
  final config = locator<Config>();
  final storageService = locator<StorageService>();
  await storageService.init();
  config.appFlavor = flavor;
  WidgetsFlutterBinding.ensureInitialized();
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = locator<AppRouter>();
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginFormBloc>(
          create: (context) => locator<LoginFormBloc>(),
        ),
        BlocProvider<AuthBloc>(
          create: (context) => locator<AuthBloc>(),
        ),
        BlocProvider<CategoryBloc>(
          create: (context) => locator<CategoryBloc>(),
        ),
        BlocProvider<HighlightProductBloc>(
          create: (context) => locator<HighlightProductBloc>(),
        ),
        BlocProvider<QuickPicksBloc>(
          create: (context) => locator<QuickPicksBloc>(),
        ),
        BlocProvider<CartBloc>(
          create: (context) => locator<CartBloc>(),
        ),
        BlocProvider<SubCategoryBloc>(
          create: (context) => locator<SubCategoryBloc>(),
        ),
        BlocProvider<SimilarProductBloc>(
          create: (context) => locator<SimilarProductBloc>(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: locator<Config>().appName,
        theme: appThemeData[AppTheme.light],
        routerConfig: router.config(),
      ),
    );
  }
}
