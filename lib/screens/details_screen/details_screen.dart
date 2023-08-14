import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../consts/style.dart';
import '../../model/MovieModel.dart';
import 'componants/movie_details.dart';
import 'componants/poster/poster_rating_widget.dart';
import 'controller/details_controller.dart';

class DetailPage extends StatelessWidget {
  final Movie _movie;
  DetailPage(this._movie);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailsController());

    return Scaffold(
      backgroundColor: K.blackColor,
      body: NestedScrollView(
        controller: controller.scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: K.whiteColor,
                  size: 25.sp,
                ),
                onPressed: () {
                  Get.back();
                },
              ),
              title: Text(
                _movie.title,
                style: K.boldWhiteTextStyle,
              ),
              pinned: true,
            )
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  getMovieDetailsSection(_movie),
                  Positioned(
                      top: 100.h,
                      child: getMoviePosterAndRatingSection(context,_movie))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
