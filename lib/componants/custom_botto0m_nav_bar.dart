import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../consts/style.dart';

class CustomBottomNavBar extends StatelessWidget {
  CustomBottomNavBar({
    super.key,
    required this.onTap,
    required this.currentIndex,
    required this.bottomNavBarData,
  });

  void Function(int)? onTap;
  final int currentIndex;
  final List bottomNavBarData;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: K.blackColor,
      elevation: 0,
      unselectedIconTheme: IconThemeData(color: K.mainColor.withOpacity(.5)),
      selectedIconTheme:   IconThemeData(color:  K.whiteColor),
      unselectedLabelStyle: TextStyle(color: K.mainColor.withOpacity(.5)),
      selectedLabelStyle:   TextStyle(color: K.whiteColor),
      fixedColor: K.primaryColor,
      type: BottomNavigationBarType.fixed,
      onTap: onTap,
      currentIndex: currentIndex,
      items: [
        for (int i = 0; i < bottomNavBarData.length; i++)
          BottomNavigationBarItem(
            icon: Image.asset(
              bottomNavBarData[i]['icon'],
              height: 30.h,
            ),
            label: bottomNavBarData[i]['label'],
            activeIcon: Image.asset(
              bottomNavBarData[i]['active'],
              height: 30.h,
              color: K.primaryColor,
            ),
          ),
      ],
    );
  }
}
