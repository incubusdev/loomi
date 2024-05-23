import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loomiproject/components/loomi_simple_text.dart';
import 'package:loomiproject/components/loomi_title_text.dart';
import 'package:loomiproject/utils/loomi_colors.dart';

class LoomiSubscriptionButtom extends StatelessWidget {
  const LoomiSubscriptionButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
          width: Get.width,
          height: 80,
          decoration: BoxDecoration(
              color: LoomiColors.greyButtom,
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      color: LoomiColors.purple,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                          child: Image.asset(
                        'assets/smallLogo.png',
                        height: 30,
                        width: 30,
                      )),
                    ],
                  ),
                ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LoomiTitleText(text: 'STREAM Premium', fontSize: 15),
                  LoomiSimpleText(text: 'Jan 22, 2024', fontSize: 12),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: LoomiSimpleText(
                    text: 'Coming soon',
                    color: LoomiColors.lightPurple,
                    fontSize: 12),
              ),
            ],
          )),
    );
  }
}
