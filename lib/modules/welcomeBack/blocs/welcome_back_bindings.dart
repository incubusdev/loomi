import 'package:get/get.dart';
import 'package:loomiproject/modules/welcomeBack/blocs/welcome_back_controller.dart';

class WelcomeBackBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(WelcomeBackController());
    
  }
}