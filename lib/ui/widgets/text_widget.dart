import 'package:flutter/cupertino.dart';
import 'package:nepalstock/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum CustomTextStyles {
  subtitle,
  normal,
  title,
  smallTitle,
  otherAccountsDesc,
  newTitle
}

class TextWidget extends StatelessWidget {
  String text;
  CustomTextStyles? style;
  double? fontSize;
  FontWeight fontWeight;
  Color? textColor;
  String fontFamily;
  FontStyle fontStyle;
  double letterSpacing;
  TextAlign textAlign;

  TextWidget(
    this.text, {
    this.style,
    this.fontSize,
    this.fontStyle = FontStyle.normal,
    this.fontFamily = 'Roboto',
    this.fontWeight = FontWeight.normal,
    this.textColor = AppColors.black,
    this.letterSpacing = 0.0,
    this.textAlign = TextAlign.start,
  }) {
    getStyle();
  }

  getStyle() {
    switch (style) {
      case CustomTextStyles.subtitle:
        fontSize = 16.sp;
        fontWeight = FontWeight.normal;
        textColor = AppColors.black;
        break;
      case CustomTextStyles.normal:
        fontSize = 12.sp;
        break;
      case CustomTextStyles.title:
        fontSize = 28.sp;
        fontWeight = FontWeight.bold;
        break;
      case CustomTextStyles.smallTitle:
        fontSize = 14.sp;
        fontWeight = FontWeight.w500;
        break;
      case CustomTextStyles.otherAccountsDesc:
        fontSize = 16.sp;
        fontWeight = FontWeight.bold;
        break;
      case CustomTextStyles.newTitle:
        fontSize = 16.sp;
        fontWeight = FontWeight.w700;
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 50,
      textAlign: this.textAlign,
      style: TextStyle(
        fontSize: this.fontSize,
        fontFamily: this.fontFamily,
        fontWeight: this.fontWeight,
        fontStyle: this.fontStyle,
        color: this.textColor,
        letterSpacing: this.letterSpacing,
      ),
    );
  }
}
