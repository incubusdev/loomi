import 'package:get/get.dart';
import 'package:loomiproject/modules/playerVideo/blocs/player_video_controller.dart';

class PlayerVideoBindings implements Bindings {
  @override
  void dependencies() {
     Get.put(PlayerVideoController());
  }
}