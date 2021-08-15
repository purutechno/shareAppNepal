import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesProvider{

  Future<String> getLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('language_code') ?? "en";
  }

  Future<void> setLanguage(String language) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('language_code', language);
  }

}