import 'package:get_it/get_it.dart';
import 'package:planit/config.dart';
import 'package:planit/presentation/router/router.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  //============================================================
  //  CORE
  //
  //============================================================
  locator.registerLazySingleton(() => Config());
  locator.registerLazySingleton(() => AppRouter());

  ////////////////////////////////////////////////////////////////
}
