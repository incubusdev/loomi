import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loomiproject/components/loomi_iconChooseImage.dart';
import 'package:loomiproject/components/loomi_main_Buttom.dart';
import 'package:loomiproject/components/loomi_simple_text.dart';
import 'package:loomiproject/components/loomi_small_logo.dart';
import 'package:loomiproject/components/loomi_takeaphoto_icon.dart';
import 'package:loomiproject/components/loomi_textField.dart';
import 'package:loomiproject/components/loomi_text_buttom.dart';
import 'package:loomiproject/modules/tellUsMore/blocs/tell_us_more_controller.dart';
import 'package:loomiproject/utils/loomi_colors.dart';

class TellUsMoreView extends GetView<TellUsMoreController> {
  const TellUsMoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 19, 20, 24),
      //  appBar: AppBar(title: const Text(''),),
      body: Container(
        color: const Color.fromARGB(255, 19, 20, 24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(height: 50),
          LoomiSmallLogo(

          ),
          SizedBox(height: 50),
          tellusmoreText(),
          SizedBox(height: 10),
          completeYourProfileText(),
          SizedBox(height: 60),
          chooseImage(context),
          SizedBox(height: 60),
          textFieldYourName(),
          SizedBox(height: 60),
          Obx(() {
            return continueButtom();
          }),
          SizedBox(height: 10),
          backButtom()
        ]),
      ),
    );
  }

  LoomiTextButtom backButtom() {
    return LoomiTextButtom(
            ontap: () {
              Get.back();
            },
            text: 'Back');
  }

  LoomiMainButtom continueButtom() {
    return LoomiMainButtom(
            textButtom: 'Continue',
            ishover: controller.isHoverButtom.value,
            ontap: () {},
            onHover: (value) {
              controller.isHoverButtom.value = !value;
            },
          );
  }

  LoomiTextField textFieldYourName() {
    return LoomiTextField(
          hintText: 'Your name',
        );
  }

  Center completeYourProfileText() => Center(child: LoomiSimpleText(text: 'Complete your profile'));

  Center tellusmoreText() {
    return Center(
            child: LoomiSimpleText(
          text: 'Tell us more!',
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ));
  }

  Row chooseImage(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LoomiIconChooseImage(onTap: () {
          showModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) {
                return Container(
                  height: 210,
                  decoration: const BoxDecoration(
                      color: LoomiColors.backGround,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25))),
                  child: Column(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
LoomiSimpleText(text: 'CHOOSE IMAGE',color: Colors.white,fontWeight: FontWeight.w600,fontSize: 12,),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                         LoomiTakeaphotoIcon(),
                          SizedBox(width: 18),
                         LoomiTakeaphotoIcon(backgroundColor: Color.fromARGB(255, 37, 37, 37),iconColor: Colors.white,icon: Icons.photo,borderColor: LoomiColors.grey,text: 'Choose from gallery'),
                      ]),
                    ],
                  ),
                );
              });
        }),
        SizedBox(width: 20),
        Container(
// height: 80,
          width: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LoomiSimpleText(
                  text: 'CHOOSE IMAGE',
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  textAlign: TextAlign.start),
              LoomiSimpleText(
                text: 'A square .jpg, .gif or .png image 200x200 or larguer',
                fontSize: 12,
                textAlign: TextAlign.start,
                color: Colors.white,
              )
            ],
          ),
        )
      ],
    );
  }
}
