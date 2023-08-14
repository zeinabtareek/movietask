

import 'package:flutter/cupertino.dart';
import 'package:movietask/model/MovieModel.dart';
import 'package:movietask/screens/details_screen/componants/poster/poster_image_widget.dart';
import 'package:movietask/screens/details_screen/componants/poster/raing_widget.dart';

Widget getMoviePosterAndRatingSection(BuildContext context,Movie _movie ) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      getMoviePoster(context,_movie),
      getRating(_movie),
    ],
  );
}
