
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componants/custom_botto0m_nav_bar.dart';
import '../../consts/app_assets.dart';
import '../../consts/style.dart';
import '../../data.dart';
import 'controller/home_controller.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: K.boldWhiteTextStyle,
        ),
        centerTitle: false,
      ),
      backgroundColor: K.blackColor,
      body: Obx(
        () => controller.connection.connectivity.value == 1
            ? bodyScreens.elementAt(controller.currentIndex.value)
            :  Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppAssets.no_connection,
                        height: 300.h,
                        width: 300.w,
                        color: K.primaryColor,
                      ),
                      Text(
                        'No Connection'.tr,
                        style: K.primaryTextStyle
                      ),
                    ],
                  ),

              ),
      ),
      bottomNavigationBar: Obx(
        () => CustomBottomNavBar(
          onTap: (v) {
            controller.changeTabIndex(v, context);
          },
          currentIndex: controller.currentIndex.value,
          bottomNavBarData: bottomNavBarData,
        ),
      ),
    );
  }
}
