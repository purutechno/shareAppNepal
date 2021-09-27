import 'package:flutter/material.dart';
import 'package:nepalstock/utils/app_colors.dart';

class AppTheme {
  static final TextStyle kGenericHeadline5 = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w500,
  );

  static final kDarkHeadline5 = kGenericHeadline5.copyWith(
    color: AppColors.darkHeadline5,
  );

  static final kLightHeadline5 = kGenericHeadline5.copyWith(
    color: AppColors.lightHeadline5,
  );

  static final TextStyle kGenericSubtitle1 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static final TextStyle kDarkSubtitle1 = kGenericSubtitle1.copyWith(
    color: AppColors.darkSubtitle1,
  );

  static final TextStyle kGenericTextButtonTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static const Size kElevatedButtonMinimumSize = Size(80, 50);

  static final TextStyle kLightSubtitle1 = kGenericSubtitle1.copyWith(
    color: AppColors.lightSubtitle1,
  );
}
