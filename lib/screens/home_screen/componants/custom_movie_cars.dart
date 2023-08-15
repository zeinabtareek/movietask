
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../componants/custom_card.dart';
import '../../../consts/style.dart';
import '../../../model/MovieModel.dart';
import '../../details_screen/details_screen.dart';

class CustomMovieCard extends StatelessWidget {
  Movie movie;
    CustomMovieCard({Key? key,required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          width: 180.w,
          margin:
          EdgeInsets.only(right: 10, top: 5, bottom: 5),
          decoration: K.boxDecorationLightGrey,
          child: Column(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: CustomCard(
                  image: movie.posterUrl,
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    crossAxisAlignment:
                    CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: K.blackColor,
                        padding:
                        EdgeInsets.only(right: 13.0),
                        child: Text(
                          '\t${movie.title}', style: K.whiteTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ))
            ],
          )),
      onTap: () {
        Get.to(DetailPage(movie));
      },
    );
  }
}
