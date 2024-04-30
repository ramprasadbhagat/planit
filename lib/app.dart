import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:planit/application/cart/cart_bloc.dart';
import 'package:planit/application/category/category_bloc.dart';
import 'package:planit/application/highlight/highlight_product_bloc.dart';
import 'package:planit/application/quick_picks/quick_picks_bloc.dart';
import 'package:planit/application/sub_category/sub_category_bloc.dart';
import 'package:planit/config.dart';
import 'package:planit/locator.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/router/router.dart';
import 'package:planit/presentation/theme/theme_data.dart';

Future<void> initialSetup({required Flavor flavor}) async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  final config = locator<Config>();
  config.appFlavor = flavor;
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = locator<AppRouter>();
    return MultiBlocProvider(
      providers: [
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
