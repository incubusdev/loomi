import 'package:get/get.dart';
import 'package:loomiproject/modules/changePassword/blocs/change_password_controller.dart';

class ChangePasswordBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ChangePasswordController());
  }
}