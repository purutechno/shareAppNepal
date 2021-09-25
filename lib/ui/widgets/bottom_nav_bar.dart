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
    final Color _activeColor = AppColors.primaryColor;
    final Color _passiveColor = AppColors.black;

    Widget _iconWithTitle(IconData iconData, String title, int majorIndex) {
      return Container(
        width: _totalWidth / 2,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(iconData,
              color: _navigationStateProvider.bottomNavIndex == majorIndex
                  ? _activeColor
                  : _passiveColor,
              size: _navigationStateProvider.bottomNavIndex == majorIndex
                  ? 35.sp
                  : 20.sp),
          TextWidget(
            title,
            style: CustomTextStyles.smallTitle,
            textColor: _navigationStateProvider.bottomNavIndex == majorIndex
                ? _activeColor
                : _passiveColor,
          )
        ]),
      );
    }

    return Material(
      color: AppColors.white,
      child: Container(
          height: 65.h,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            InkWell(
              onTap: () {
                _navigationStateProvider.updateBottomNavState(0);
              },
              child: _iconWithTitle(Icons.note_add_sharp,
                  AppLocalizations.of(context).translate("articles"), 0),
            ),
            InkWell(
              onTap: () {
                _navigationStateProvider.updateBottomNavState(1);
              },
              child: _iconWithTitle(Icons.account_box,
                  AppLocalizations.of(context).translate("profile"), 1),
            ),
          ])),
    );
  }
}
