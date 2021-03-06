import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nepalstock/app_language/app_localizations.dart';
import 'package:nepalstock/providers/navigation_state_provider.dart';
import 'package:nepalstock/ui/widgets/text_widget.dart';
import 'package:nepalstock/utils/app_colors.dart';
import 'package:provider/provider.dart';

class TopNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final NavigationStateProvider _navigationStateProvider =
        Provider.of<NavigationStateProvider>(context, listen: false);
    final double _totalWidth = MediaQuery.of(context).size.width;
    final double _safeAreaHeight = MediaQuery.of(context).padding.top;
    final Color _activeColor = AppColors.goldYellow;
    final Color _passiveColor = AppColors.white;
    return Container(
        height: 40.h + _safeAreaHeight,
        margin:
            EdgeInsets.only(top: _safeAreaHeight + 5.w, left: 5.w, right: 5.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.sp),
            color: AppColors.matteBlackLight),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          InkWell(
              onTap: () {
                _navigationStateProvider.updateTopNavState(0);
              },
              child: Container(
                width: (_totalWidth / 2) - 10.w,
                alignment: Alignment.center,
                child: TextWidget(
                  AppLocalizations.of(context).translate("english"),
                  style: _navigationStateProvider.topNavIndex == 0
                      ? CustomTextStyles.normal
                      : CustomTextStyles.smallTitle,
                  textColor: _navigationStateProvider.topNavIndex == 0
                      ? _activeColor
                      : _passiveColor,
                ),
              )),
          InkWell(
            onTap: () {
              _navigationStateProvider.updateTopNavState(1);
            },
            child: Container(
              alignment: Alignment.center,
              width: _totalWidth / 2,
              child: TextWidget(
                AppLocalizations.of(context).translate("nepali"),
                style: _navigationStateProvider.topNavIndex == 1
                    ? CustomTextStyles.normal
                    : CustomTextStyles.smallTitle,
                textColor: _navigationStateProvider.topNavIndex == 1
                    ? _activeColor
                    : _passiveColor,
              ),
            ),
          )
        ]));
  }
}
