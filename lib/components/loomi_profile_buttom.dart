// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:loomiproject/components/loomi_simple_text.dart';
import 'package:loomiproject/utils/loomi_colors.dart';

class LoomiProfileButtom extends StatelessWidget {
  String title;
  IconData? icon;
  LoomiProfileButtom({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: Get.width,
        height: 60,
        decoration: BoxDecoration(
            color: LoomiColors.greyButtom,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              SizedBox(
                width: 8,
              ),
              LoomiSimpleText(
                  text: title,
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios_sharp,
                size: 15,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
