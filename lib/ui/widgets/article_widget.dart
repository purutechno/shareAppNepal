import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nepalstock/models/articles.dart';
import 'package:nepalstock/ui/widgets/text_widget.dart';
import 'package:nepalstock/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticleTiles extends StatelessWidget {
  final Article article;

  ArticleTiles(this.article);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //TODO: Navigate to new one
      },
      child: Container(
        margin:
            EdgeInsets.only(top: 10.h, bottom: 10.h, right: 10.w, left: 10.w),
        child: Stack(
          children: [
            Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 110.w, top: 5.h),
                width: 250.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      article?.title ?? "",
                      maxLines: 2,
                      style: CustomTextStyles.title,
                    ),
                    Container(
                        height: 34.h,
                        width: 93.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.buttonGradientStop,
                                width: 2.sp)),
                        child: Center(
                            child: TextWidget(article?.categories?.first ?? "",
                                style: CustomTextStyles.normal,
                                textColor: AppColors.black)))
                  ],
                )),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                  margin: EdgeInsets.only(top: 5.h),
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColors.buttonGradientStart,
                          width: 1.sp,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(20.sp),
                      image: DecorationImage(
                          image: NetworkImage(article?.imageUrls?.first ?? ""),
                          fit: BoxFit.cover))),
            )
          ],
        ),
      ),
    );
  }
}
