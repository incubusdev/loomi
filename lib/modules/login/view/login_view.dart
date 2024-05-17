import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loomiproject/components/loomi_simple_text.dart';
import 'package:loomiproject/components/loomi_textField.dart';
import 'package:loomiproject/modules/login/blocs/login_controller.dart';

import '../../../components/loomi_main_Buttom.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 20, 24),
      //  appBar: AppBar(title: const Text(''),),
      body: Container(
// height: Get.height,
        color: const Color.fromARGB(255, 19, 20, 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
         Center(child: LoomiSimpleText(text: 'To get started, please complete your account registration',)),
            SizedBox(height: 60),
              Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
           Container(height: 120,width: 120, color: Colors.grey,),
            SizedBox(width: 15),
           Container(height: 120,width: 120, color: Colors.grey,),
]),
            SizedBox(height: 60),
            dividerSignUPWith(),
            SizedBox(height: 60),
            emailTextField(),
            SizedBox(height: 25),
            passWordTextField(),
            SizedBox(height: 25),
            confirmPassWordTextField(),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 60, top: 25, left: 20, right: 20),
              child: LoomiMainButtom(),
            )
          ],
        ),
      ),
    );
  }

  Row dividerSignUPWith() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                      width: Get.width * .25,
                      child: const Divider(
                        thickness: 0.5,
                        color: Color.fromARGB(255, 121, 123, 127),
                      )),
                ),
              ),
              SizedBox(width: 25),
              const Text(
                'Or Sign Up With',
                style: TextStyle(
                    color: Color.fromARGB(255, 121, 123, 127),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(width: 25),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                      // width: Get.width * .25,
                      child: const Divider(
                        thickness: 0.5,
                        color: Color.fromARGB(255, 121, 123, 127),
                      )),
                ),
              ),
            ],
          );
  }

  Obx emailTextField() {
    return Obx(() {
      controller.icon.value;
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: LoomiTextField(
          controller: controller.emailTxt,
          hintText: 'Email',
        ),
      );
    });
  }

  Obx passWordTextField() {
    return Obx(() {
      controller.icon.value;
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: LoomiTextField(
            controller: controller.passwordTxt,
            hintText: 'Password',
            eyeIcon: true,
            isobscureText: controller.icon.value,
            eyeIconButton: () {
              controller.icon.value = !controller.icon.value;
            }),
      );
    });
  }

  Obx confirmPassWordTextField() {
    return Obx(() {
      controller.icon.value;
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: LoomiTextField(
            controller: controller.confirmPasswordTxt,
            hintText: 'Confirm Your Password',
            eyeIcon: true,
            isobscureText: controller.icon.value,
            eyeIconButton: () {
              controller.icon.value = !controller.icon.value;
            }),
      );
    });
  }
}
