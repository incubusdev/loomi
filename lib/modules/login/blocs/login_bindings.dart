import 'package:get/get.dart';
import 'package:loomiproject/modules/login/blocs/login_controller.dart';

class LoginBindings implements Bindings {
  @override
  void dependencies() {
   
Get.put(LoginController());
    
  }
}