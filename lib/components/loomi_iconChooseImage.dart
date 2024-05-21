// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:loomiproject/utils/loomi_colors.dart';

class LoomiIconChooseImage extends StatelessWidget {
       Function()? onTap;
   LoomiIconChooseImage({ this.onTap });

   @override
   Widget build(BuildContext context) {
       return InkWell(
         onTap: onTap,
         child: Container(
             height: 115,
         width: 115,
         decoration: BoxDecoration(
         color: LoomiColors.darkPurple,
         borderRadius: BorderRadius.circular(30)
         ),child: Icon(Icons.photo_camera_outlined,color: LoomiColors.lightPurple),),
       );
  }
}