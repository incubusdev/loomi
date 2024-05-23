import 'package:get/get.dart';
import 'package:loomiproject/modules/profile/blocs/profile_controller.dart';

class ProfileBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ProfileController());
  }
}