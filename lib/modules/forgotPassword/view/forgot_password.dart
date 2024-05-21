import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loomiproject/components/loomi_main_Buttom.dart';
import 'package:loomiproject/components/loomi_simple_text.dart';
import 'package:loomiproject/components/loomi_small_logo.dart';
import 'package:loomiproject/components/loomi_textField.dart';
import 'package:loomiproject/components/loomi_text_buttom.dart';
import 'package:loomiproject/components/loomi_title_text.dart';
import 'package:loomiproject/modules/forgotPassword/blocs/forgot_password_controller.dart';
import 'package:loomiproject/routes/routes.dart';
import 'package:loomiproject/utils/loomi_colors.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({super.key});

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
          forgotPasswordText(),
          SizedBox(height: 10),
          entertheemailText(),
          SizedBox(height: 50),
          textFieldEmail(),
          SizedBox(height: 320),
          loginButtom(),
          SizedBox(height: 10),
          backButtom()
        ],
      )),
    );
  }

  LoomiTextButtom backButtom() => LoomiTextButtom(
      ontap: () {
        Get.back();
      },
      text: 'Back');

  Widget loginButtom() => Obx((){return LoomiMainButtom(
        textButtom: 'Send reset instructions',
        ishover: controller.isHoverButtom.value,
        onHover: (value) {
          controller.isHoverButtom.value = !value;
        },
        ontap: () {Get.toNamed(Routes.INSTRUCTIONSWERESENT);},
      );});

  LoomiTextField textFieldEmail() {
    return LoomiTextField(
      hintText: 'Email',
    );
  }

  Widget entertheemailText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: LoomiSimpleText(
        text:
            'Enter the email address you user when you\'ve joined and we\'ll send you instructions to reset yout password',
      ),
    );
  }

  LoomiTitleText forgotPasswordText() {
    return LoomiTitleText(
      text: 'Forgot Password?',
    );
  }

  Center smallLogo() => Center(child: LoomiSmallLogo());
}
