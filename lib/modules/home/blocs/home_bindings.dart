import 'package:get/get.dart';
import 'package:loomiproject/modules/home/blocs/home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}