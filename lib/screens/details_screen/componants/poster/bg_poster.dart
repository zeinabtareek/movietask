


import 'package:flutter/cupertino.dart';
import 'package:movietask/model/MovieModel.dart';

import '../banner.dart';

Widget getMoviePosterBackground(Movie _movie) {
  return Container(
    child: Opacity(
      opacity: 0.6,
      child: ArcBannerImage(
          _movie.posterUrl ?? 'https://www.w3schools.com/css/paris.jpg', 300),
    ),
  );
}
