// ignore_for_file: must_be_immutable



import 'package:flutter/material.dart';

class LoomiIconLoginTypes extends StatelessWidget {
  Color color;
Function()? ontap;
  Widget logo;
 double? padding;
  LoomiIconLoginTypes({
    Key? key,
    required this.color,
    this.ontap,
    required this.logo,
     this.padding = 8,
  }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return GestureDetector(
        onTap: ontap,
         child: Container(
         height: 80,
         width: 80,
              decoration: BoxDecoration(
         color: color,
         borderRadius: BorderRadius.circular(35)),
           child: Padding(
             padding:  EdgeInsets.all(padding!),
             child: logo,
           ),
         ),
       );
  }
}
