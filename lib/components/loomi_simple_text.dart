// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class LoomiSimpleText extends StatelessWidget {
  FontWeight? fontWeight;
  Color color;
  String text;
  TextAlign textAlign;
  double? fontSize;
  LoomiSimpleText({
    Key? key,
    required this.text,
    this.color = const Color.fromARGB(255, 121, 123, 127),
    this.fontWeight,
    this.fontSize = 15,
    this.textAlign = TextAlign.center,
  }) : super(key: key);

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
