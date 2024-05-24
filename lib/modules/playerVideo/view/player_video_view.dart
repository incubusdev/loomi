import 'package:better_player_plus/better_player_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:loomiproject/modules/playerVideo/blocs/player_video_controller.dart';

class PlayerVideoView extends GetView<PlayerVideoController> {
 const PlayerVideoView({ super.key });
 
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.black,

      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: BetterPlayer(controller: controller.betterPlayerController)
        ),
      ),
    );
  }}