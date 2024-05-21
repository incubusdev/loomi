// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class LoomiTitleText extends StatelessWidget {
  FontWeight? fontWeight;
  Color color;
  String text;
  TextAlign textAlign;
  double? fontSize;
  LoomiTitleText({
    Key? key,
    required this.text,
    this.color = Colors.white,
    this.fontWeight = FontWeight.w600,
    this.fontSize = 25,
    this.textAlign = TextAlign.center,
  }) : super(key: key);
          //   child: LoomiSimpleText(
          // text: 'Tell us more!',
          // fontSize: 25,
          // fontWeight: FontWeight.w600,
          // color: Colors.white,
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: TextStyle(
          fontWeight: fontWeight,
          color: color,
          fontSize: fontSize),
    );
  }
}
