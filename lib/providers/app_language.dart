import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:nepalstock/storage/shared_prefs.dart';

class AppLanguage extends ChangeNotifier {
  SharedPreferencesProvider _sharedPrefs =
      GetIt.instance.get<SharedPreferencesProvider>();
  Locale? _appLocale;

  Locale get appLocale => _appLocale ?? Locale("en");

  fetchLocale() async {
    var languageCode = await _sharedPrefs.getLanguage();
    changeLanguage(Locale(languageCode));
  }

  void changeLanguage(
    Locale locale,
  ) async {
    if (appLocale == locale) {
      return;
    }
    _appLocale = locale;
    _sharedPrefs.setLanguage(locale.languageCode);
    notifyListeners();
  }
}
