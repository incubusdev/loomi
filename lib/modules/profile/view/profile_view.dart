import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loomiproject/components/Loomi_history_thumb.dart';
import 'package:loomiproject/components/Loomi_rounded_buttom.dart';
import 'package:loomiproject/components/Loomi_subscription_buttom.dart';
import 'package:loomiproject/components/loomi_profile_buttom.dart';
import 'package:loomiproject/components/loomi_simple_text.dart';
import 'package:loomiproject/components/loomi_title_text.dart';
import 'package:loomiproject/routes/routes.dart';
import 'package:loomiproject/utils/loomi_colors.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LoomiColors.backGround,
      //  appBar: AppBar(title: const Text(''),),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: editProfileButtomAndBackButtom(),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  avatar(),
                  SizedBox(
                    width: 15,
                  ),
                  name(),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            changePassWordButtom(),
            SizedBox(
              height: 10,
            ),
            deleteAccountButtom(),
            SizedBox(
              height: 20,
            ),
            subscripstionsText('Subscriptions'),
            SizedBox(
              height: 12,
            ),
            LoomiSubscriptionButtom(),
            SizedBox(
              height: 20,
            ),
            subscripstionsText('History'),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                //  width: 300,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                       crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      LoomiHistoryThumb(
                          ano: '2024',
                          name: 'Barbie',
                          image: 'assets/mockybarbie.png'),
                      LoomiHistoryThumb(
                          ano: '2024', name: 'Pixels', image: 'assets/mocky3.png'),
                    ],
                  ),
                ),
              ),
            ),SizedBox(height: 25,),
            Center(
              child: Container(
                 width: 110,
                child: LoomiRoundedButtom(
                  title: 'Log out',
                  colorBorder: Colors.white,
                  titleBorder: Colors.white,
                  width: 0.5,
                  ontap: () {Get.offAllNamed(Routes.WELCOMEBACK);},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding subscripstionsText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: LoomiTitleText(
        text: text,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
    );
  }

  Row editProfileButtomAndBackButtom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        LoomiRoundedButtom(
          title: 'Edit Profile',
          ontap: () {},
        ),
      ],
    );
  }

  Column name() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LoomiSimpleText(text: 'Hello,'),
        Container(
            height: 75,
            width: Get.width * .5,
            //  color: Colors.amber,
            child: LoomiTitleText(
              fontSize: 28,
              text: 'Gabriel Ramos',
              textAlign: TextAlign.start,
            )),
      ],
    );
  }

  CircleAvatar avatar() {
    return CircleAvatar(
        radius: 60,
        backgroundColor: Colors.black,
        backgroundImage: AssetImage('assets/avatar.png'));
  }

  LoomiProfileButtom deleteAccountButtom() {
    return LoomiProfileButtom(
      icon: Icons.delete_outline,
      title: 'Delete my account',
    );
  }

  LoomiProfileButtom changePassWordButtom() {
    return LoomiProfileButtom(
      icon: Icons.shield_outlined,
      title: 'Change Password',
ontap: () {
  Get.toNamed(Routes.CHANGEPASSWORD);
},
    );
  }
}
