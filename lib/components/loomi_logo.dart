// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class LoomiLogo extends StatelessWidget {
  double height;
  double width;
 
   LoomiLogo({ this.height = 50,this.width = 50 });

   @override
   Widget build(BuildContext context) {
       return Container(
   height: height,
width: width,
decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/loomiLogo.png'),fit: BoxFit.contain)),
);
  }
}