import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController{


  ScrollController ?scrollController;


  @override
  void onInit() {
    scrollController = ScrollController();

    super.onInit();
  }
  @override
  void dispose() {
     scrollController!.dispose();
    super.dispose();
  }
}