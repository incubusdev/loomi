import 'package:get/get.dart';
import 'package:loomiproject/modules/instructionsWereSent/blocs/instruction_were_sent_controller.dart';

class InstructionWereSentBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(InstructionWereSentController());
  }
}