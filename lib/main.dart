import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nepalstock/app_language/app_localizations.dart';
import 'package:nepalstock/utils/app_colors.dart';
import 'package:nepalstock/utils/constants.dart';
import 'package:nepalstock/functions/injection.dart';
import 'package:nepalstock/providers/app_language.dart';
import 'package:nepalstock/providers/articles_provider.dart';
import 'package:nepalstock/providers/portfolio_provider.dart';
import 'package:nepalstock/ui/navigation_screen.dart';
import 'package:provider/provider.dart';

void main() {
  setupDependencyInjection();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
        providers: [
          ChangeNotifierProvider.value(value: AppLanguage()),
          ChangeNotifierProvider.value(value: ArticlesProvider()),
          ChangeNotifierProvider.value(value: PortfolioProvider()),
        ],
        child: Consumer<AppLanguage>(builder: (context, model, child) {
          return MaterialApp(
              locale: model.appLocale,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                brightness: Brightness.light,
                primaryColor: AppColors.deepPurple,
                scaffoldBackgroundColor: AppColors.blueColor,
                accentColor: AppColors.deepPurple,
              ),
              localizationsDelegates: [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: Constants.supportedLanguagesCodes
                  .map((e) => Locale(e, ''))
                  .toList(),
              home: ScreenUtilInit(
                  designSize: Size(375, 780), builder: () => NavigationPage()));
        }));
  }
}
