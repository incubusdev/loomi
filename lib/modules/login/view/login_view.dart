import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:loomiproject/components/loomi_icon_login_types.dart';
import 'package:loomiproject/components/loomi_logo.dart';
import 'package:loomiproject/components/loomi_simple_text.dart';
import 'package:loomiproject/components/loomi_textField.dart';
import 'package:loomiproject/modules/login/blocs/login_controller.dart';
import 'package:loomiproject/routes/routes.dart';
import 'package:loomiproject/utils/loomi_colors.dart';

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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 30),
              LoomiLogo(
                height: 100,
                width: 150,
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LoomiSimpleText(text: 'Already have an account?'),
                  InkWell(
                      child: LoomiSimpleText(
                        text: 'Sign in!?',
                        color: Color.fromARGB(255, 155, 105, 218),
                        fontWeight: FontWeight.bold,
                      ),
                      onTap: () {Get.toNamed(Routes.WELCOMEBACK);}),
                ],
              ),
              SizedBox(height: 40),
              createAnAccountText(),
              SizedBox(height: 8),
              toGetStartedText(),
              SizedBox(height: 40),
              iconsLogin(),
              SizedBox(height: 35),
              dividerSignUPWith(),
              SizedBox(height: 40),
              emailTextField(),
              SizedBox(height: 20),
              passWordTextField(),
              SizedBox(height: 20),
              confirmPassWordTextField(),
              createAccountButtom()
            ],
          ),
        ),
      ),
    );
  }

  Widget createAccountButtom() {
    return Obx(() {
      return Padding(
        padding:
            const EdgeInsets.only(bottom: 60, top: 25, left: 20, right: 20),
        child: LoomiMainButtom(
              textButtom: 'Create Account',
            ontap: () {
              Get.toNamed(Routes.TELLUSMORE);
            },
            onHover: (value) {
              controller.isHoverButtom.value = !value;
            },
            ishover: controller.isHoverButtom.value),
      );
    });
  }

  Row iconsLogin() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      LoomiIconLoginTypes(color: LoomiColors.darkPurple,logo:Brand(Brands.google,size: 5,)),
      SizedBox(width: 15),
      LoomiIconLoginTypes(color: const Color.fromARGB(255, 97, 97, 100),logo: Icon(FontAwesome.apple_brand ,color: Colors.white,size: 40,),padding: 10,),
    ]);
  }

  Center toGetStartedText() {
    return Center(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: LoomiSimpleText(
          text: 'To get started, please complete your account registration',
          fontWeight: FontWeight.w400),
    ));
  }

  Center createAnAccountText() {
    return Center(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: LoomiSimpleText(
        text: 'Create an account',
        fontWeight: FontWeight.w600,
        fontSize: 28,
        color: Colors.white,
      ),
    ));
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
        LoomiSimpleText(
          text: 'Or Sign Up With',
          fontSize: 12,
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
      return LoomiTextField(
        controller: controller.emailTxt,
        hintText: 'Email',
      );
    });
  }

  Obx passWordTextField() {
    return Obx(() {
      controller.icon.value;
      return LoomiTextField(
          controller: controller.passwordTxt,
          hintText: 'Password',
          eyeIcon: true,
          isobscureText: controller.icon.value,
          eyeIconButton: () {
            controller.icon.value = !controller.icon.value;
          });
    });
  }

  Obx confirmPassWordTextField() {
    return Obx(() {
      controller.icon.value;
      return LoomiTextField(
          controller: controller.confirmPasswordTxt,
          hintText: 'Confirm Your Password',
          eyeIcon: true,
          isobscureText: controller.icon.value,
          eyeIconButton: () {
            controller.icon.value = !controller.icon.value;
          });
    });
  }
}
