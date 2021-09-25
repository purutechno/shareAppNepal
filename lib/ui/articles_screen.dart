import 'package:flutter/material.dart';
import 'package:nepalstock/models/articles.dart';
import 'package:nepalstock/providers/navigation_state_provider.dart';
import 'package:nepalstock/ui/widgets/article_widget.dart';
import 'package:nepalstock/ui/widgets/top_nav_bar.dart';
import 'package:nepalstock/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ArticlesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _safeAreaHeight = MediaQuery.of(context).padding.top;
    final NavigationStateProvider _navigationStateProvider =
        Provider.of<NavigationStateProvider>(context, listen: false);
    return Scaffold(
        backgroundColor: AppColors.white,
        body: SafeArea(
            child: Stack(children: [
          SingleChildScrollView(
              child: Column(children: [
            SizedBox(height: _safeAreaHeight + 5.h),
            for (int a = 0; a < 10; a++)
              ArticleTiles(Article(categories: [
                Categories.analysis
              ], imageUrls: [
                "https://www.investopaper.com/wp-content/uploads/2020/06/nepal-stock-exchange-nepse-1.jpg"
              ], ltp: "Rs.5000", title: "Stock Rocketed")),
            SizedBox(height: 75.h)
          ])),
          Align(
              alignment: Alignment.topCenter,
              child: StreamBuilder(
                stream: _navigationStateProvider.navWidgetStream,
                builder: (context, snapshot) {
                  return TopNavigationBar();
                },
              ))
        ])));
  }
}
