import 'package:flutter/material.dart';
import 'package:nepalstock/app_language/app_localizations.dart';
import 'package:nepalstock/ui/articles_screen.dart';
import 'package:nepalstock/ui/widgets/text_widget.dart';
import 'package:nepalstock/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  List<Widget> _children = [
    ArticlesScreen(),
    Container(
      color: AppColors.white,
    )
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.white,
        selectedLabelStyle:
            TextStyle(fontWeight: FontWeight.w500, fontSize: 12.sp),
        unselectedLabelStyle: TextStyle(
          fontSize: 12.sp,
        ),
        showUnselectedLabels: true,
        unselectedItemColor: AppColors.black,
        selectedItemColor: AppColors.petlyBlueColor,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: onTapped,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(
                bottom: ScreenUtil().setHeight(10),
              ),
              child: Icon(Icons.note_add_sharp,
                  size: _currentIndex == 0 ? 35.sp : 20.sp),
            ),
            title: new TextWidget(
              AppLocalizations.of(context).translate("articles"),
              style: CustomTextStyles.smallTitle,
              textColor: _currentIndex == 0
                  ? AppColors.petlyBlueColor
                  : AppColors.black,
            ),
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: EdgeInsets.only(
                bottom: ScreenUtil().setHeight(10),
              ),
              child: Icon(Icons.account_box,
                  size: _currentIndex == 1 ? 35.sp : 20.sp),
            ),
            title: new TextWidget(
              AppLocalizations.of(context).translate("profile"),
              style: CustomTextStyles.smallTitle,
              textColor: _currentIndex == 1
                  ? AppColors.petlyBlueColor
                  : AppColors.black,
            ),
          )
        ],
      ),
    );
  }

  void onTapped(int index) {
    _currentIndex = index;
    setState(() {});
  }
}
