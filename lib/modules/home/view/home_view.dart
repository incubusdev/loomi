import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:loomiproject/components/loomi_main_Buttom.dart';
import 'package:loomiproject/components/loomi_simple_text.dart';
import 'package:loomiproject/components/loomi_skeleton_movie.dart';
import 'package:loomiproject/components/loomi_small_logo.dart';
import 'package:loomiproject/components/loomi_title_text.dart';
import 'package:loomiproject/models/movie_model.dart';
import 'package:loomiproject/modules/home/blocs/home_controller.dart';
import 'package:loomiproject/routes/routes.dart';
import 'package:loomiproject/utils/loomi_colors.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
// controller.isLoading.value  = true;
    return Scaffold(body: Obx(() {
      controller.isLoading.value;
      return Stack(
        alignment: Alignment.center,
        children: [
          background(),
          Visibility(
            visible: !controller.isLoading.value,
            replacement: Padding(
              padding: const EdgeInsets.only(top: 120),
              child: LoomiSkeletonMovie(),
            ),
            child: PageView.builder(
                onPageChanged: controller.onPageChanged,
                controller: controller.pageCtrl,
                itemCount: controller.movies.length,
                itemBuilder: (context, index) {
                  MovieModel movie = controller.movies[index];
                  return Stack(
                    alignment: Alignment.center,
                    children: [
                      movieImage(movie),
                      Container(
                        color: Color.fromARGB(20, 0, 0, 0),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Container(
                              width: Get.width,
                              height: Get.height * .65,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                    Color.fromARGB(0, 0, 0, 0),
                                    Color.fromARGB(94, 0, 0, 0),
                                    Color.fromARGB(167, 0, 0, 0),
                                  ],
                                      begin: Alignment.topCenter,
                                      end: Alignment.center)))),
                      Container(
                        width: Get.width,
                        color: Color.fromARGB(54, 0, 0, 0),
                      ),
                      typeMovie(movie),
                      titleMovie(movie),
                      descriptionMovie(movie),
                      nowShowingText(),
                      watchButtom(movie),
                      divider(),
                      iconRateMovie(),
                      iconGiftToSomeone(),
                      movieAvailableTime(),
                    ],
                  );
                }),
          ),
          Positioned(top: 50, child: iconAndCircleAvatar()),
        ],
      );
    }));
  }

  Obx background() {
    return Obx(() {
      controller.background.value;
      return AnimatedSwitcher(
          duration: Duration(seconds: 1),
          child: Container(
              key: ValueKey<int>(controller.currentPage.value),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(controller.isLoading.value
                      ? 'assets/skeletonbackgound.png'
                      : controller.background.value),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),
                  child: Container(
                    color: Colors.black.withOpacity(0.5),
                  ))));
    });
  }

  Widget movieImage(MovieModel movie) {
    return Positioned(
      bottom: 50,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              // color: Colors.amber,
              image: DecorationImage(
                  image: AssetImage(
                      movie.poster == '' ? 'assets/DnD.png' : movie.poster),
                  fit: BoxFit.cover)),
          // color: Colors.amber,

          height: 630,
          width: 350),
    );
  }

  Positioned typeMovie(MovieModel movie) {
    return Positioned(
        bottom: 455,
        // left: 50,
        child: Container(
            width: 300,
            child: Text(
              movie.genre,
              style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 235, 235, 235),
                  fontWeight: FontWeight.w400),
            ).animate().fadeIn(delay: Duration(milliseconds: 350))));
  }

  Positioned titleMovie(MovieModel movie) {
    return Positioned(
        bottom: 405,
        // left: 50,
        child: Container(
            // color: Colors.amber,
            height: 55,
            width: 300,
            child: FittedBox(
              alignment: Alignment.topLeft,
              child: Text(
                textAlign: TextAlign.start,
                movie.name,
                style: TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 235, 235, 235),
                    fontWeight: FontWeight.w600),
              ).animate().fadeIn(delay: Duration(milliseconds: 500)).slideX(),
            )));
  }

  Positioned descriptionMovie(MovieModel movie) {
    return Positioned(
        bottom: 220,
        // left: 50,
        child: Container(
            // color: Colors.amber,
            height: 160,
            width: 300,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    maxLines: 7,
                    movie.synopsis,
                    style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 16,
                        color: Color.fromARGB(255, 196, 196, 196),
                        fontWeight: FontWeight.w300),
                  ).animate().fadeIn(delay: Duration(milliseconds: 1000)),
                ],
              ),
            )));
  }

  Positioned nowShowingText() {
    return Positioned(
        top: 90,
        child: Container(
            alignment: Alignment.topLeft,
            width: 350,
            child: LoomiTitleText(
              text: 'Now Showing',
              fontSize: 22,
            )));
  }

  Widget watchButtom(MovieModel movie) {
    return Obx((){
controller.isHoverButtom.value;
return Positioned(
        bottom: 150,
        child: Container(
            color: Colors.transparent,
            alignment: Alignment.center,
            width: 350,
            child: LoomiMainButtom(
              ishover: controller.isHoverButtom.value,
              onHover: (value) {
                controller.isHoverButtom.value = !value;
              },
              ontap: () {
                Get.toNamed(Routes.PLAYERVIDEO, arguments: movie);
              },
              textButtom: 'Watch',
            ).animate().fadeIn(delay: Duration(milliseconds: 1300))));});
  }
  Widget loginButtom() => Obx((){return LoomiMainButtom(
      textButtom: 'Login', ishover: controller.isHoverButtom.value,onHover: (value) {
          controller.isHoverButtom.value = !value;
        
      },ontap: () {
        Get.toNamed(Routes.HOME);
        
      },);});

  Positioned divider() {
    return Positioned(
        bottom: 110,
        child: Container(
            alignment: Alignment.center,
            width: 350,
            child: Divider(
              thickness: 0.3,
            )));
  }

  Row iconAndCircleAvatar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 100,
          alignment: Alignment.topRight,
        ),
        Container(
                alignment: Alignment.center,
                width: 100,
                child: LoomiSmallLogo())
            .animate()
            .flip(),
        Container(
            alignment: Alignment.topRight,
            width: 100,
            child: InkWell(
              onTap: () {
                Get.toNamed(Routes.PROFILE);
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.png'),
                backgroundColor: Colors.black,
                radius: 20,
              ),
            )),
      ],
    );
  }

  Positioned iconRateMovie() {
    return Positioned(
        bottom: 55,
        child: Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Container(
              alignment: Alignment.topLeft,
              width: 350,
              child: Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.thumb_up_alt_outlined,
                      size: 20,
                    ),
                    onPressed: () {},
                    color: Colors.white,
                  ),
                  LoomiSimpleText(
                    text: 'Rate',
                    fontSize: 12,
                  )
                ],
              )),
        ).animate().slideX(delay: Duration(milliseconds: 1350),begin: -1));
  }

  Positioned iconGiftToSomeone() {
    return Positioned(
        bottom: 55,
        child: Padding(
          padding: const EdgeInsets.only(left: 170),
          child: Container(
              alignment: Alignment.topLeft,
              width: 350,
              child: Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.send_rounded,
                      size: 20,
                    ),
                    onPressed: () {},
                    color: Colors.white,
                  ),
                  LoomiSimpleText(
                    text: 'Gift to someone?',
                    fontSize: 12,
                  )
                ],
              )),
        ).animate().slideX(delay: Duration(milliseconds: 1300),begin: -1));
  }

  Positioned movieAvailableTime() {
    return Positioned(
        bottom: 55,
        child: Padding(
          padding: const EdgeInsets.only(right: 35),
          child: Container(
              alignment: Alignment.topRight,
              width: 350,
              child: Column(
                children: [
                  LoomiSimpleText(
                    text: 'Available until',
                    fontWeight: FontWeight.w400,
                  ),
                  LoomiSimpleText(
                    text: 'Fev 29, 2023',
                    color: LoomiColors.lightPurple,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              )),
        ).animate().slideX(delay: Duration(milliseconds: 1250),begin: -1));
  }
}
