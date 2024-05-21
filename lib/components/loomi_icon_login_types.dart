// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class LoomiIconLoginTypes extends StatelessWidget {
  Color color;
  Widget logo;
 double padding;
  LoomiIconLoginTypes({ this.color = const Color.fromARGB(255, 53, 31, 67),required this.logo,this.padding = 20});

   @override
   Widget build(BuildContext context) {
       return Container(
height: 80,
width: 80,
     decoration: BoxDecoration(
color: color,
borderRadius: BorderRadius.circular(35)),
  child: Padding(
    padding:  EdgeInsets.all(padding),
    child: logo,
  ),
);
  }
}