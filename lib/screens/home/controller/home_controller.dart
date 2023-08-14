import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../helper/connectivity.dart';

class HomeController extends  GetxController{
  final connection = Get.put(ConnectionStatusSingleton());

  final currentIndex = 0.obs;




  changeTabIndex(int index, BuildContext context) {
    currentIndex.value = index;
    update();
  }

}