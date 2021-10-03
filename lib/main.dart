import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nepalstock/app_language/app_localizations.dart';
import 'package:nepalstock/providers/app_theme_provider.dart';
import 'package:nepalstock/providers/navigation_state_provider.dart';
import 'package:nepalstock/providers/profile_provider.dart';
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

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AppLanguage()),
          ChangeNotifierProvider(create: (_) => ArticlesProvider()),
          ChangeNotifierProvider(create: (_) => PortfolioProvider()),
          ChangeNotifierProvider(create: (_) => NavigationStateProvider()),
          ChangeNotifierProvider(create: (_) => ProfileProvider())
        ],
        child: Consumer<AppLanguage>(builder: (context, model, child) {
          return MaterialApp(
              locale: model.appLocale,
              debugShowCheckedModeBanner: false,
              theme: ThemeProvider.lightTheme,
              darkTheme: ThemeProvider.darkTheme,
              themeMode: currentTheme.currentTheme,
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
                  designSize: Size(375, 780),
                  builder: () => NavigationContainer()));
        }));
  }
}
