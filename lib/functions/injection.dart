import 'package:get_it/get_it.dart';
import 'package:nepalstock/storage/shared_prefs.dart';

GetIt inject = GetIt.instance;

void setupDependencyInjection() {
  inject.registerLazySingleton(() => SharedPreferencesProvider());
}
