// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:loomiproject/components/loomi_simple_text.dart';
import 'package:loomiproject/utils/loomi_colors.dart';

class LoomiRoundedButtom extends StatelessWidget {
    Function()? ontap;
String title;
Color colorBorder;
Color titleBorder;
 double width;
  LoomiRoundedButtom({
    Key? key,
    this.ontap,
    required this.title,
    this.colorBorder = LoomiColors.darkPurple,
    this.titleBorder = LoomiColors.lightPurple,
     this.width = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),border: Border.all(width: width,color: colorBorder)),
        child: Center(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: LoomiSimpleText(text: title,color: titleBorder,),
        )),
      ),
    );
  }
}
