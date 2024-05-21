import 'package:get/get.dart';
import 'package:loomiproject/modules/tellUsMore/blocs/tell_us_more_controller.dart';

class TellUsMoreBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(TellUsMoreController());
  }
}