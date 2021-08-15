import 'package:flutter/material.dart';
import 'package:nepalstock/ui/widgets/bottom_nav_bar.dart';

class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavbar(),
          ),
        ],
      ),
    );
  }
}
