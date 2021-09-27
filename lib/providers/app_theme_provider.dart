import 'package:flutter/material.dart';
import 'package:nepalstock/utils/app_colors.dart';
import 'package:nepalstock/utils/app_theme.dart';

ThemeProvider currentTheme = ThemeProvider();

class ThemeProvider with ChangeNotifier {
  static bool _isDarkTheme = true;

  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _isDarkTheme = !_isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: AppColors.darkScaffoldBackgroundColor,
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          backgroundColor: AppColors.darkAppBarBackgroundColor,
          foregroundColor: AppColors.darkAppBarForeground,
          iconTheme: IconThemeData(
            color: AppColors.darkAppBarForeground,
          ),
        ),
        textTheme: TextTheme(
          headline5: AppTheme.kDarkHeadline5,
          subtitle1: AppTheme.kDarkSubtitle1,
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: AppColors.darkFillColor,
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                10.0,
              ),
            ),
            backgroundColor: AppColors.darkTextButtonBackground,
            primary: AppColors.darkTextButtonForeground,
            textStyle: AppTheme.kGenericTextButtonTextStyle,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                50.0,
              ),
            ),
            minimumSize: AppTheme.kElevatedButtonMinimumSize,
          ),
        ),
        colorScheme: ColorScheme.dark(
          secondary: AppColors.darkColorSchemeSecondary,
        ));
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.lightScaffoldBackgroundColor,
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        backgroundColor: AppColors.lightAppBarBackgroundColor,
        foregroundColor: AppColors.lightAppBarForeground,
        iconTheme: IconThemeData(
          color: AppColors.lightAppBarForeground,
        ),
      ),
      textTheme: TextTheme(
        headline5: AppTheme.kLightHeadline5,
        subtitle1: AppTheme.kLightSubtitle1,
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: AppColors.darkFillColor,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
          ),
          backgroundColor: AppColors.lightTextButtonBackground,
          primary: AppColors.lightTextButtonForeground,
          textStyle: AppTheme.kGenericTextButtonTextStyle,
        ),
      ),
      colorScheme: ColorScheme.light(
        secondary: AppColors.lightColorSchemeSecondary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              50.0,
            ),
          ),
          minimumSize: AppTheme.kElevatedButtonMinimumSize,
        ),
      ),
    );
  }
}
