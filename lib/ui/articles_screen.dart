import 'package:flutter/material.dart';
import 'package:nepalstock/models/articles.dart';
import 'package:nepalstock/ui/widgets/text_widget.dart';
import 'package:nepalstock/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArticlesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int a = 0; a < 10; a++)
                showArticlesListItem(Article(categories: [
                  Categories.analysis
                ], imageUrls: [
                  "https://www.investopaper.com/wp-content/uploads/2020/06/nepal-stock-exchange-nepse-1.jpg"
                ], ltp: "Rs.5000", title: "Stock Rocketed"))
            ],
          ),
        ),
      ),
    );
  }

  showArticlesListItem(Article? article) {
    return InkWell(
      onTap: () {
        //TODO: Navigate to new one
      },
      child: Container(
        margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
        child: Stack(
          children: [
            Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 5.h, left: 27.w),
                height: 44.h,
                width: 240.w,
                child: TextWidget(
                  article?.title ?? "",
                  style: CustomTextStyles.normal,
                )),
            Container(
                margin: EdgeInsets.only(top: 5.h, left: 287.w),
                alignment: Alignment.topLeft,
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: AppColors.black,
                        width: 1.sp,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(20.sp),
                    image: DecorationImage(
                        image: NetworkImage(article?.imageUrls?.first ?? ""),
                        fit: BoxFit.cover))),
            Container(
                margin: EdgeInsets.only(top: 54.h, left: 27.w),
                alignment: Alignment.topLeft,
                height: 34.h,
                width: 93.w,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.black, width: 1.sp),
                    borderRadius: BorderRadius.all(Radius.circular(100.w))),
                child: Center(
                    child: TextWidget(
                  article?.categories?.first ?? "",
                  style: CustomTextStyles.normal,
                  textColor: AppColors.black,
                ))),
          ],
        ),
      ),
    );
  }
}
