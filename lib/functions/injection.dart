import 'package:get_it/get_it.dart';
import 'package:nepalstock/functions/articles_fun.dart';
import 'package:nepalstock/functions/permission_handler.dart';
import 'package:nepalstock/functions/profile_fun.dart';
import 'package:nepalstock/storage/shared_prefs.dart';

GetIt inject = GetIt.instance;

void setupDependencyInjection() {
  inject.registerLazySingleton(() => SharedPreferencesProvider());
  inject.registerLazySingleton(() => PermissionHandler());
  inject.registerLazySingleton(() => ArticlesFun());
  inject.registerLazySingleton(() => ProfileFun());
}
