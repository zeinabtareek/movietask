import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class K{
  static   Color primaryColor= Color(0xff91327d);
  // static   Color darkRed= Color(0xff41050f);
  // static   Color semiDarkRed= Color(0xffdb3243);
  static   Color lightMainColor= Color(0xfff3f3f3);
  static   Color mainColor= Color(0xff8a8a8a);
  static   Color blackColor= Colors.black;
  static   Color whiteColor= Colors.white;
  // static const mainColor=Colors.grey;
  // // static const blackColor=Colors.grey;


  static  final sizedboxH=   SizedBox(
    height: 15.h,
  );
  static  final sizedboxW=   SizedBox(
    width: 20.w,
  );
  static final leftRaduis= BoxDecoration(
    color: primaryColor.withOpacity(.5),
    border: Border.all(color: primaryColor,width: 1),
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10.r),
        bottomLeft: Radius.circular(10.r)),
  );


  static final boxDecorationPrimaryBg= BoxDecoration(
    color:primaryColor,
    border: Border.all(color: mainColor,width: 1),

    borderRadius: BorderRadius.circular(10),
  );
  static final boxDecorationWithWhiteBorder=  BoxDecoration(
      boxShadow: const [
        BoxShadow(
          color: Colors.white38,
          blurRadius: 20.0,
          offset: Offset(0.0, 4.0),
          spreadRadius: 5.0,
        ),
      ],
      border: Border.all(
        color: Colors.white,
        width: 4.0,
      ));
  static final boxDecorationLightGrey= BoxDecoration(
    color: K.blackColor,
    borderRadius: BorderRadius.circular(10.0), // set border radius
    border: Border.all(
      color: K.lightMainColor,
      width: 2.0, // set border width
    ),
  );
  static get appTheme => ThemeData(
      colorScheme: _customColorScheme,
      appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          foregroundColor: blackColor,
          shadowColor: blackColor.withAlpha(50)));

  static final ColorScheme _customColorScheme = ColorScheme(
    primary:primaryColor,
    secondary: primaryColor,
    surface:  mainColor,
    background:  mainColor,
    onError:  blackColor,
    brightness: Brightness.light,
    error: Colors.red,
    onBackground:  blackColor,
    onPrimary: mainColor,
    onSecondary: primaryColor,
    onSurface: primaryColor,
  );
  static final fixedPadding=EdgeInsets.all(15.sp);
  static final secFixedPadding=EdgeInsets.all(20.sp);

  static final bodyText= TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w200,
  ); static final bodyTextWhite= TextStyle(
    fontSize: 13.sp,
    color: whiteColor,
    fontWeight: FontWeight.w200,
  );
  static final boldBlackText=TextStyle(color:  blackColor,fontWeight: FontWeight.w700,fontSize: 30.sp);
  static final blackText=TextStyle(color:  blackColor,fontWeight: FontWeight.w500,fontSize: 16.sp);
  static final semiblackText=TextStyle(color:  blackColor,fontWeight: FontWeight.w500,fontSize: 18.sp);
  static final smallBlackText=TextStyle(color:  blackColor,fontWeight: FontWeight.w500,fontSize: 15.sp);
   static final boldBlackSmallText=TextStyle(color:  blackColor,fontWeight: FontWeight.w600,fontSize: 20.sp);

  static final primaryTextStyle=TextStyle(color:  primaryColor,fontWeight: FontWeight.w500,fontSize: 18.sp);
  static final largeprimaryTextStyle=TextStyle(
    color: K.primaryColor,
    fontSize: 20.0,
    fontWeight: FontWeight.w700,
  );


  static final whiteTextStyle=TextStyle(color:  whiteColor,fontWeight: FontWeight.w400,fontSize: 15.sp);   static final semiBoldWhiteTextStyle=TextStyle(color:  whiteColor,fontWeight: FontWeight.w500,fontSize: 15.sp);

  static final boldWhiteTextStyle=TextStyle(color:  whiteColor,fontWeight: FontWeight.w700,fontSize: 20.sp);
  static final boldLargeWhiteTextStyle=TextStyle(color:  whiteColor,fontWeight: FontWeight.w700,fontSize: 30.sp);
  static final boldWhiteSmallTextStyle=TextStyle(color:  whiteColor,fontWeight: FontWeight.w800,fontSize: 14.sp);


}