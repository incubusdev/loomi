import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loomiproject/models/movie_model.dart';

class PlayerVideoController extends GetxController {
  RxString movieUrl = ''.obs;
  late BetterPlayerController betterPlayerController;
  @override
  void onInit() {
    MovieModel movie = Get.arguments;
    movieUrl.value = movie.streamLink;

    BetterPlayerConfiguration betterPlayerConfiguration =
        BetterPlayerConfiguration(
            autoDetectFullscreenAspectRatio: true,
            autoPlay: true,
            fullScreenByDefault: true,
            aspectRatio: 16 / 9,
            fit: BoxFit.contain,
            autoDetectFullscreenDeviceOrientation: true);
    BetterPlayerDataSource dataSource = BetterPlayerDataSource(
        BetterPlayerDataSourceType.network, movieUrl.value);
    betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
    betterPlayerController.setupDataSource(dataSource);
    super.onInit();
  }
}
