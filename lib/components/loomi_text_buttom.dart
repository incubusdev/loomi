// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:loomiproject/utils/loomi_colors.dart';

class LoomiTextButtom extends StatelessWidget {
 Function() ontap;
String text;
 LoomiTextButtom({ required this.ontap ,required this.text});

   @override
   Widget build(BuildContext context) {
       return TextButton(onPressed: ontap, child: Text(text,style: TextStyle(color: LoomiColors.lightPurple, fontWeight: FontWeight.bold,fontSize: 16),));
  }
}