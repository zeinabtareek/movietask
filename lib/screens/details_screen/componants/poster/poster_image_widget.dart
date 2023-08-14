
import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../consts/style.dart';
import '../../../../model/MovieModel.dart';

Widget getMoviePoster(BuildContext context, Movie _movie) {
  return Container(
    margin: K.fixedPadding,
    decoration: K.boxDecorationWithWhiteBorder,
    width: 120.0.w,
    height: 180.0.h,
    child: GestureDetector(
      child: Image.network(
        _movie.posterUrl,
        fit: BoxFit.cover,
      ),
      onTap: () {
        showImageViewer(context, Image.network(_movie.posterUrl).image,
            swipeDismissible: true, doubleTapZoomable: true);
      },
    ),
  );
}