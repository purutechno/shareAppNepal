import 'package:flutter/material.dart';
import 'package:nepalstock/app_language/app_localizations.dart';
import 'package:nepalstock/providers/navigation_state_provider.dart';
import 'package:nepalstock/ui/widgets/text_widget.dart';
import 'package:nepalstock/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final NavigationStateProvider _navigationStateProvider =
        Provider.of<NavigationStateProvider>(context, listen: false);
    final double _totalWidth = MediaQuery.of(context).size.width;
    final Color _activeColor = AppColors.goldYellow;
    final Color _passiveColor = AppColors.white;

    Widget _iconWithTitle(IconData iconData, String title, int majorIndex) {
      return Container(
        height: 50.h,
        width: (_totalWidth / 2) - 15.w,
        child: Icon(iconData,
            color: _navigationStateProvider.bottomNavIndex == majorIndex
                ? _activeColor
                : _passiveColor,
            size: _navigationStateProvider.bottomNavIndex == majorIndex
                ? 20.sp
                : 35.sp),
      );
    }

    return Container(
      margin: EdgeInsets.all(10.sp),
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(10.sp),
        color: AppColors.matteBlack,
        child: SizedBox(
            height: 50.h,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      _navigationStateProvider.updateBottomNavState(0);
                    },
                    child: Hero(
                      tag: "article",
                      child: _iconWithTitle(
                          Icons.article,
                          AppLocalizations.of(context).translate("articles"),
                          0),
                    ),
                  ),
                  Container(width: 1.w, color: _activeColor),
                  InkWell(
                    onTap: () {
                      _navigationStateProvider.updateBottomNavState(1);
                    },
                    child: Hero(
                      tag: "profile",
                      child: _iconWithTitle(Icons.person,
                          AppLocalizations.of(context).translate("profile"), 1),
                    ),
                  ),
                ])),
      ),
    );
  }
}
