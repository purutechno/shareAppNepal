import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavbar extends StatefulWidget {
  int index;

  BottomNavbar({this.index = 0});

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 80.h,
        child: Container(),
      ),
    );
  }
}
