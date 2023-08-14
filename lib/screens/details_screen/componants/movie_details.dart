
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../consts/style.dart';
import '../../../model/MovieModel.dart';
import 'poster/bg_poster.dart';

Widget getMovieDetailsSection(Movie _movie ) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      getMoviePosterBackground(_movie),
      Padding(
        padding: K.fixedPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
            K.sizedboxH,
            Text(
              _movie.title,
              style: TextStyle(
                color: K.primaryColor,
                fontSize: 25.0.sp,
                fontWeight: FontWeight.w900,
              ),
            ),
            K.sizedboxH,
            Text(
              'Release date: ${_movie.releaseDate??''}',
              style: K.whiteTextStyle,
            ),
            Text('Overview:', style: K.largeprimaryTextStyle),
            K.sizedboxH,
            Text(
              _movie.overview,
              style: TextStyle(
                color: K.whiteColor.withOpacity(1),
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

