import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../consts/style.dart';
import '../model/MovieModel.dart';
import '../screens/details_screen/details_screen.dart';
import 'custom_card.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';

class CustomCarousel extends StatelessWidget {
  final List<Movie> list;
  final bool isLoading;

  const CustomCarousel({Key? key, required this.list, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    if (list.isEmpty || isLoading) {
      return  Container(
        height: MediaQuery.of(context).size.height/4,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Color(0x00000000),
              K.blackColor,
            ],
          ),
        ),
        child: CupertinoActivityIndicator(color: K.whiteColor,),
      ); // Show a loading indicator
    } else {
      return CarouselSlider.builder(
        itemCount: list.length,
        itemBuilder: (BuildContext context, int itemIndex, int) {
          final movies = list.reversed.toList();
          final movie = movies[itemIndex];

          return GestureDetector(
            child: Card(
              elevation: 10,
              color: K.blackColor.withOpacity(0.5),
              child: Stack(
                children: [
                  Positioned.fill(
                    child:  CustomCard(
                        image: movie.posterUrl,


                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.center,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0x00000000),
                          K.blackColor,
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 300.w,
                    // height: 300.h,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        K.sizedboxH,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 30.h,
                              width: MediaQuery.of(context).size.width / 4.w,
                              decoration: K.leftRaduis,
                              child: Center(
                                child: Text(
                                  movie.adult == true ? 'For Adults' : 'For All',
                                  style: K.whiteTextStyle,
                                ),
                              ),
                            )
                          ],
                        ),
                        Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            K.sizedboxW,
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2.8.w,
                              child: Text(
                                movie.title,
                                style: K.boldWhiteTextStyle,
                              ),
                            ),
                          ],
                        ),
                        K.sizedboxH,
                        K.sizedboxH,
                      ],
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Get.to(DetailPage(movie));
            },
          );
        },
        options: CarouselOptions(
          height: 280.0,
          viewportFraction: .6,
          aspectRatio: .5,
          autoPlay: true,
          enlargeCenterPage: true,
        ),
      );
    }
  }
}

