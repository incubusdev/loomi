import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:loomiproject/components/loomi_icon_login_types.dart';
import 'package:loomiproject/components/loomi_main_Buttom.dart';
import 'package:loomiproject/components/loomi_simple_text.dart';
import 'package:loomiproject/components/loomi_small_logo.dart';
import 'package:loomiproject/components/loomi_textField.dart';
import 'package:loomiproject/components/loomi_text_buttom.dart';
import 'package:loomiproject/components/loomi_title_text.dart';
import 'package:loomiproject/modules/welcomeBack/blocs/welcome_back_controller.dart';
import 'package:loomiproject/routes/routes.dart';
import 'package:loomiproject/utils/loomi_colors.dart';

class WelcomeBackView extends GetView<WelcomeBackController> {
  const WelcomeBackView({super.key});

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
          welcomeBackText(),
          SizedBox(height: 10),
          lookWhosIsHereText(),
          SizedBox(height: 50),
          textFieldEmail(),
          SizedBox(height: 18),
          textFieldPassword(),
          SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            LoomiTextButtom(
                ontap: () {
                  Get.toNamed(Routes.FORGOTPASSWORD);
                },
                text: 'Forgot password?')
          ]),
          SizedBox(height: 50),
          loginButtom(),
          SizedBox(height: 50),
          dividerSignUPWith(),
          SizedBox(height: 30),
          iconsLogin(),
          SizedBox(height: 20),
          donthaveanyText()
        ],
      )),
    );
  }

  Row donthaveanyText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LoomiSimpleText(
          text: 'Don\'t have an account?',
        ),
        LoomiTextButtom(
            text: 'Sign Up!',
            ontap: () {
              Get.toNamed(Routes.LOGIN);
            }),
      ],
    );
  }

  Widget loginButtom() => Obx((){return LoomiMainButtom(
      textButtom: 'Login', ishover: controller.isHoverButtom.value,onHover: (value) {
          controller.isHoverButtom.value = !value;
        
      },ontap: () {
        Get.offAllNamed(Routes.HOME);
        
      },);});

  Obx textFieldPassword() {
    return Obx(() {
      controller.isHoverButtom.value;
      return LoomiTextField(
        hintText: 'Password',
        eyeIcon: true,
        eyeIconButton: () {
          controller.icon.value = !controller.icon.value;
        },
        isobscureText: controller.icon.value,
      );
    });
  }

  LoomiTextField textFieldEmail() {
    return LoomiTextField(
      hintText: 'Email',
    );
  }

  LoomiSimpleText lookWhosIsHereText() {
    return LoomiSimpleText(
      text: 'Look who is here!',
    );
  }

  LoomiTitleText welcomeBackText() {
    return LoomiTitleText(
      text: 'Welcome Back',
    );
  }

  Center smallLogo() => Center(child: LoomiSmallLogo());

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

  Row iconsLogin() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      LoomiIconLoginTypes(color: LoomiColors.darkPurple,logo:Brand(Brands.google,size: 5,)),
      SizedBox(width: 15),
      LoomiIconLoginTypes(color: const Color.fromARGB(255, 97, 97, 100),logo: Icon(FontAwesome.apple_brand ,color: Colors.white,size: 40,),padding: 10,),
    ]);
  }
}
