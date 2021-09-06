import 'package:flutter/material.dart';
import 'package:nepalstock/app_language/app_localizations.dart';
import 'package:nepalstock/providers/navigation_state_provider.dart';
import 'package:nepalstock/ui/articles_screen.dart';
import 'package:nepalstock/ui/widgets/text_widget.dart';
import 'package:nepalstock/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class NavigationPage extends StatelessWidget {
  List<Widget> _children = [
    ArticlesScreen(),
    Container(
      color: AppColors.black,
    )
  ];

  @override
  Widget build(BuildContext context) {
    final NavigationStateProvider _navigationStateProvider =
        Provider.of<NavigationStateProvider>(context, listen: false);
    return StreamBuilder(
        stream: _navigationStateProvider.navWidgetStream,
        builder: (context, snapshot) {
          return Scaffold(
              body: _children[_navigationStateProvider.index],
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
                currentIndex: _navigationStateProvider.index,
                type: BottomNavigationBarType.fixed,
                onTap: (num) {
                  _navigationStateProvider.updateNavState(num);
                },
                items: [
                  BottomNavigationBarItem(
                    icon: Container(
                      margin: EdgeInsets.only(
                        bottom: ScreenUtil().setHeight(10),
                      ),
                      child: Icon(Icons.note_add_sharp,
                          size: _navigationStateProvider.index == 0
                              ? 35.sp
                              : 20.sp),
                    ),
                    title: new TextWidget(
                      AppLocalizations.of(context).translate("articles"),
                      style: CustomTextStyles.smallTitle,
                      textColor: _navigationStateProvider.index == 0
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
                          size: _navigationStateProvider.index == 1
                              ? 35.sp
                              : 20.sp),
                    ),
                    title: new TextWidget(
                      AppLocalizations.of(context).translate("profile"),
                      style: CustomTextStyles.smallTitle,
                      textColor: _navigationStateProvider.index == 1
                          ? AppColors.petlyBlueColor
                          : AppColors.black,
                    ),
                  )
                ],
              ));
        });
  }
}
