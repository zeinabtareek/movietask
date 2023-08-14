import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../consts/style.dart';
import '../../../../model/MovieModel.dart';

Widget getRating( Movie _movie) {
  return Container(
    margin: K.fixedPadding,
    height: 30.0.h,
    child: Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: 40.0.h,
        decoration: K.boxDecorationPrimaryBg,
        padding: EdgeInsets.symmetric(
          horizontal: 20.0.w,
          vertical: 8.0.h,
        ),
        child: Text("RATING: ${_movie.voteAverage}  / 10",
            style: K.whiteTextStyle),
      ),
    ),
  );
}