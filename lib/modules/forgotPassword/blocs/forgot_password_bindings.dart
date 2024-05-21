import 'package:get/get.dart';
import 'package:loomiproject/modules/forgotPassword/blocs/forgot_password_controller.dart';

class ForgotPasswordBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ForgotPasswordController());
  }
}