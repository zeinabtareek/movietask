
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movietask/helper/dio/dio_helper.dart';
  import 'package:movietask/screens/splash_screen/splash_screen.dart';
import 'consts/style.dart';
Future<void> main() async {
  await DioUtilNew.getInstance();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(460, 847),
      builder: (BuildContext, Widget) {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
        return GetMaterialApp(
          theme: K.appTheme,
          fallbackLocale: Locale('ar'),
          debugShowCheckedModeBanner: false,
          home: SplashScreen()
          // home: SplashScreen()
        );
      },
    );
  }
}





















