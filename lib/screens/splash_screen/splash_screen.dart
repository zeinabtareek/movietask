import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../consts/app_assets.dart';
import '../../consts/style.dart';
import 'controller/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(SplashController());

    return Scaffold(
      backgroundColor: K.blackColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset(AppAssets.logo,fit: BoxFit.fill,height: MediaQuery.of(context).size.height/2.4,),
            K.sizedboxH,
            SizedBox(
              width: MediaQuery
                  .of(context)
                  .size
                  .width - 100,
              child: RotatedBox(
                quarterTurns: 2,
                child: LinearProgressIndicator(
                  minHeight: 2,
                  color:K. primaryColor,
                  backgroundColor:K. primaryColor.withOpacity(0.5),
                ),
              ),
            )

    ],
        ),
      ),
    );
  }
}
