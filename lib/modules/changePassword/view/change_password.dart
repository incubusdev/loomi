import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loomiproject/components/loomi_main_Buttom.dart';
import 'package:loomiproject/components/loomi_textField.dart';
import 'package:loomiproject/components/loomi_title_text.dart';
import 'package:loomiproject/utils/loomi_colors.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: LoomiColors.backGround,
        //  appBar: AppBar(title: const Text(''),),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            editProfileButtomAndBackButtom(),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: LoomiTitleText(text: 'Change',fontSize: 30,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: LoomiTitleText(text: 'Password',fontSize: 30,),
            ),
            SizedBox(
              height: 60,
            ),
LoomiTextField(hintText: 'Current password',eyeIcon: true,),
            SizedBox(
              height: 60,
            ),
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 30),
             child: Divider(thickness: 0.2,),
           ),
            SizedBox(
              height: 50,
            ),
LoomiTextField(hintText: 'New password',eyeIcon: true,),
            SizedBox(
              height: 25,
            ),
LoomiTextField(hintText: 'Confirm new password',eyeIcon: true,),
            SizedBox(
              height: 120,
            ),
Center(child: LoomiMainButtom(textButtom: 'Update Password'))
          ],
        ));
  }

  Widget editProfileButtomAndBackButtom() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: LoomiColors.lightPurple,
                size: 30,
              )),
        ],
      ),
    );
  }
}
