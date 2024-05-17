// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class LoomiSimpleText extends StatelessWidget {
  String text;
  double? fontSize;
  LoomiSimpleText({
    Key? key,
    required this.text,
    this.fontSize = 15,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w400,
          color: Color.fromARGB(255, 121, 123, 127),
          fontSize: fontSize),
    );
  }
}
