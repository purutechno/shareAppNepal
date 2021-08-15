import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF260082);
  static const Color primaryLightColor = Color(0xFF3300AF);

  static const Color welcome = Color(0xFF040328);

  static List<Color> getGradient() {
    return [gradient1, gradient2];
  }


  static const Color gradient1 = Color(0xFF355DEE);
  static const Color gradient2 = Color(0xFF6916CA);

  static const Color primary = Color(0xFF6C3AFC);

  static const Color purpleLight = Color.fromRGBO(38, 0, 130, 0.1);
  static const Color indigo = Color.fromRGBO(41, 38, 110, 0.9);

  static const Color lightGrey = Color(0xFFF4F6F8);

  static const Color disableGrey = Color(0xFFE9EBED);
  static const Color grey = Color(0xFF4E5D6B);

  static const Color iconsColor = Color(0xFFC3CBD2);

  static const Color pink = Color.fromRGBO(255, 67, 90, 1);

  static const Color amountColor = Color.fromARGB(255, 195, 203, 210);

  static const Color error = Color(0xFFFF435A);
  static const Color backgroundInputFocus = Color.fromRGBO(38, 0, 130, 0.04);
  static const Color backgroundInputError = Color.fromRGBO(255, 67, 90, 0.03);
  static const Color labelInputFocus = Color.fromRGBO(51, 0, 175, 0.35);

  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);

  /*OnBoarding*/
  static const Color textColorYellow = Color(0xFFFFC71B);

  /*Widgets*/
  static const Color inputTextBorderColor = Color(0xFFECEBEB);
  static const Color inputTextColor = Color(0xFF979797);
  static const Color primaryTextColor = Color(0xFF616F96);

  static const Color primaryBlue = Color(0xFF2196F3);
  static const Color secondaryBlue = Color(0xFF3300AF);

  static const ligthGreen = Color(0xFFE0F2F1);
  static const secondaryGreen = Color(0xFF009688);
  static const lightgreenText = Color(0xFF01DFB7);

  static const primaryGreen = Color(0xFF14D69C);
  static const petlyBlueColor = Color.fromRGBO(33, 150, 243, 1);
  static const primaryTurcoaz = Color(0xFF07D4F0);
  static const unselectedblueColor = Color.fromRGBO(33, 150, 243, 0.3);
  static const primaryPurple = Color(0xFF982CED);
  static const primaryBurgundy = Color(0xFFD322AC);
  static const cardsPink = Color.fromRGBO(237, 147, 184, 1);
  static const cardsPurple = Color.fromRGBO(177, 113, 206, 1);
  static const cardsYellow = Color.fromRGBO(208, 168, 109, 1);
  static const cardsBlue = Color.fromRGBO(137, 187, 202, 1);
  static const cardsGreen = Color.fromRGBO(126, 203, 148, 1);
  static const primaryYellow = Color(0xFFFBB500);
  static const skyBlue = Color.fromRGBO(0, 255, 209, 1);
  static const red = Color(0xFFDF0136);

  static const dividerGrey = Color(0xFFDCD6D6);
  static const backgroundGrey = Color(0xFFECECEC);
  static const backgroundGrey2 = Color(0xFFE3E3E3);
  static const textGrey = Color(0xFF7B7B7B);

  static const Color ticketCommentCircleGreen = Color(0xFF00A466);
  static const Color hintTextColor = Color(0xFF606D79);

  //Scaffold background colors
  static const Color darkScaffoldBackgroundColor = Colors.black;
  static const Color lightScaffoldBackgroundColor = backgroundGrey;

  //AppBar colors
  static const Color darkAppBarBackgroundColor = Colors.black;
  static const Color lightAppBarBackgroundColor = backgroundGrey;
  static const Color darkAppBarForeground = Colors.white;
  static const Color lightAppBarForeground = Colors.black;

  //TextTheme colors
  static const Color darkHeadline5 = Colors.white;
  static const Color lightHeadline5 = Colors.black;
  static const Color darkSubtitle1 = Colors.white;
  static const Color lightSubtitle1 = Color(0xFF4E5D6B);

  //InputDecorationTheme colors
  static const Color darkFillColor = Color(0xFF202429);
  static const Color lightFillColor = Colors.white;

  //ButtonText colors
  static const Color darkTextButtonForeground = Colors.white;
  static const Color lightTextButtonForeground = Colors.black;
  static const Color darkTextButtonBackground = Color(0xFF202429);
  static const Color lightTextButtonBackground = Colors.white;

  //ColorScheme
  static const Color darkColorSchemeSecondary = Colors.white;
  static const Color lightColorSchemeSecondary = Colors.black;

  //ElevatedButton colors
  static const Color buttonGradientStart = Color(0xFF355DEE);
  static const Color buttonGradientStop = Color(0xFF6916CA);


  static LinearGradient elevatedButtonGradient = LinearGradient(
    colors: [buttonGradientStart, buttonGradientStop],
  );
}