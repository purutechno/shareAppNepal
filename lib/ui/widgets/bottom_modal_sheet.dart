import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowModalSheet{
/*  showModalClicker(context,
      {Function onClickerPressed, Function chooseClicker}) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.h), topRight: Radius.circular(30.h)),
        ),
        builder: (BuildContext bc) {
          return Container(
            height: 427.h,
            margin: EdgeInsets.only(left: 20.w, right: 20.w),
            decoration: boxDecorationStuff,
            child: Padding(
              padding: EdgeInsets.only(top: 2.h, left: 2.w, right: 2.w),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.h),
                        topRight: Radius.circular(30.h)),
                    color: AppColors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 32.h),
                      TextWidget(
                          AppLocalizations.of(context)
                              .translate("clicker_image_title")
                              .toUpperCase(),
                          styles: TextStyles.size14_400_openSans),
                      SizedBox(height: 24.h),
                      SizedBox(
                        height: 164.h,
                        width: 164.h,
                        child: FloatingActionButton(
                          backgroundColor: AppColors.neutral500,
                          splashColor: AppColors.white,
                          onPressed: onClickerPressed,
                          child: Padding(
                              padding: EdgeInsets.all(10.sp),
                              child: SvgPicture.asset(
                                  "assets/images/clicker.svg",
                                  height: 130.h,
                                  semanticsLabel: AppLocalizations.of(context)
                                      .translate("clicker_image_title"))),
                        ),
                      ),
                      Container(
                        height: 40.h,
                        width: 291.w,
                        margin: EdgeInsets.only(
                            left: 20.w, right: 20.w, top: 40.h, bottom: 16.h),
                        child: _activityWidgets.customActionButton(
                            context,
                            AppLocalizations.of(context)
                                .translate("change_clicker")
                                .toUpperCase(),
                            chooseClicker,
                            buttonColor: AppColors.netural100,
                            showIcon: false,
                            styles: TextStyles.size14_700,
                            textColor: AppColors.neutral900),
                      ),
                      Container(
                        height: 40.h,
                        width: 291.w,
                        margin: EdgeInsets.symmetric(horizontal: 20.w),
                        child: _activityWidgets.customActionButton(
                            context,
                            AppLocalizations.of(context)
                                .translate("close_icon")
                                .toUpperCase(),
                                () => Routers.pop(context),
                            buttonColor: AppColors.nextButtonColor,
                            showIcon: false,
                            styles: TextStyles.size14_700,
                            textColor: AppColors.whiteColor),
                      ),
                    ],
                  )),
            ),
          );
        });
  }*/
}