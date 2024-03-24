import 'package:planit/config.dart';
import 'package:planit/locator.dart';
import 'package:flutter/material.dart';
import 'package:planit/presentation/router/router.dart';
import 'package:planit/presentation/theme/theme_data.dart';

Future<void> initialSetup({required Flavor flavor}) async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = locator<AppRouter>();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: locator<Config>().appName,
      theme: appThemeData[AppTheme.light],
      routerConfig: router.config(),
    );
  }
}
