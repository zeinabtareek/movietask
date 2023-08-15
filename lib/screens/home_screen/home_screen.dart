import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:movietask/consts/app_assets.dart';
import '../../componants/custom_card.dart';
import '../../componants/custom_carousel.dart';
import '../../consts/style.dart';
import '../all_movies_screen/all_movies_screen.dart';
import '../details_screen/details_screen.dart';
import 'componants/custom_movie_cars.dart';
import 'controller/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MovieController());
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.backgroundImage), fit: BoxFit.cover)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 3.0),
        child: Padding(
          padding: K.fixedPadding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                    child: Obx(() => CustomCarousel(
                        list: controller.movies.value,
                        isLoading: controller.isLoading.value))),
                K.sizedboxH,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New releases',
                      style: K.boldWhiteTextStyle,
                    ),
                    GestureDetector(
                      child: Text(
                        'See more',
                        style: K.boldWhiteTextStyle,
                      ),
                      onTap: (){
                        Get.to(AllMoviesScreen(list:controller.movies));
                      },
                    ),
                  ],
                ),
                K.sizedboxH,
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3.h,
                  child: Obx(
                    () => ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.movies.length < 8
                          ? controller.movies.length
                          : 8,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        final movie = controller.movies[index];
                        return CustomMovieCard(movie:movie);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
