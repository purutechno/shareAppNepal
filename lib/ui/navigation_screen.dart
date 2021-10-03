import 'package:flutter/material.dart';
import 'package:nepalstock/providers/navigation_state_provider.dart';
import 'package:nepalstock/ui/articles_screen.dart';
import 'package:nepalstock/ui/widgets/bottom_nav_bar.dart';
import 'package:nepalstock/utils/app_colors.dart';
import 'package:provider/provider.dart';

class NavigationContainer extends StatelessWidget {
  final List<Widget> _children = [
    ArticlesTab(),
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
              body: Stack(children: [
            _children[_navigationStateProvider.bottomNavIndex],
            Align(alignment: Alignment.bottomCenter, child: BottomNavBar())
          ]));
        });
  }
}
