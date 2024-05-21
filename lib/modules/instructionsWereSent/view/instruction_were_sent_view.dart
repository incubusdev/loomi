import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loomiproject/components/loomi_main_Buttom.dart';
import 'package:loomiproject/components/loomi_simple_text.dart';
import 'package:loomiproject/components/loomi_small_logo.dart';
import 'package:loomiproject/components/loomi_title_text.dart';
import 'package:loomiproject/modules/instructionsWereSent/blocs/instruction_were_sent_controller.dart';
import 'package:loomiproject/routes/routes.dart';
import 'package:loomiproject/utils/loomi_colors.dart';

class InstructionsWereSentView extends GetView<InstructionWereSentController> {
  const InstructionsWereSentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LoomiColors.backGround,
      //  appBar: AppBar(title: const Text(''),),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 85),
          smallLogo(),
          SizedBox(height: 50),
          instructionsWereSentText(),
          SizedBox(height: 10),
          ifthiswasText(),
          SizedBox(height: 50),
          SizedBox(height: 320),
          loginButtom(),
          SizedBox(height: 10),
        ],
      )),
    );
  }

  Widget loginButtom() => Obx((){return LoomiMainButtom(
        textButtom: 'Login',
        ishover: controller.isHoverButtom.value,
        onHover: (value) {
          controller.isHoverButtom.value = !value;
        },ontap: () {
         Get.toNamed(Routes.WELCOMEBACK);
          
        },
      );});

  Widget ifthiswasText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: LoomiSimpleText(
        text:
            'If this was a valid email, instructions to reset your password will be sent to you. Please check your email.',
      ),
    );
  }

  Widget instructionsWereSentText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: LoomiTitleText(
        text: 'The instructions werw sent!',
      ),
    );
  }

  Center smallLogo() => Center(child: LoomiSmallLogo());
}
