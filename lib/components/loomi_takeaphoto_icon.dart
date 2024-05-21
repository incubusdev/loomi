// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:loomiproject/components/loomi_simple_text.dart';

import 'package:loomiproject/utils/loomi_colors.dart';

class LoomiTakeaphotoIcon extends StatelessWidget {
 Color backgroundColor;
 Color borderColor;
 Color  iconColor;
IconData icon;
String text;
  
  LoomiTakeaphotoIcon({
 
     this.backgroundColor = LoomiColors.darkPurple,
     this.borderColor = LoomiColors.lightPurple,
     this.iconColor = LoomiColors.lightPurple,
     this.icon = Icons.photo_camera_outlined,
     this.text = 'Take a photo',
  });

   @override
   Widget build(BuildContext context) {
       return Container(
         height: 130,
           width: 130,
           decoration: BoxDecoration(
 border: Border.all(color: borderColor,width: 1.5),
color: backgroundColor,
borderRadius: BorderRadius.circular(20)),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Icon(icon,color:iconColor,size: 25,),
SizedBox(height: 5,),
Container(
width: 80,
child: LoomiSimpleText(text: text,fontSize: 14,color: Color.fromARGB(255, 196, 196, 196),)),
 ]),
       );
  }
}
