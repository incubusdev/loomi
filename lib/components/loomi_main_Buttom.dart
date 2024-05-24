// ignore_for_file: use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

class LoomiMainButtom extends StatelessWidget {
 Function()? ontap;
 Function(bool)? onHover;
 bool ishover;
 String textButtom;
  LoomiMainButtom({
    this.onHover,
    this.ishover = false,
    this.ontap,
    required this.textButtom,
  }); 
   
  @override
  Widget build(BuildContext context) {
    return InkWell(
     borderRadius: BorderRadius.circular(10),
    onTap: ontap,
      onHover: onHover,
   
      child: Container(
        height: 45,
        width: 220,
        decoration: BoxDecoration(
            
            boxShadow: [BoxShadow(blurRadius: ishover?10 :20,color:  Color.fromARGB(87, 199, 171, 120),blurStyle: BlurStyle.outer,)],
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(68, 177, 67, 211),
            border: Border.all(
            width: 1.3, color: const Color.fromARGB(255, 155, 105, 218))),
      child: Center(child: Text(textButtom,style: TextStyle(color:ishover? Color.fromARGB(255, 155, 105, 218): Color.fromARGB(255, 189, 139, 250),fontWeight: FontWeight.bold,fontSize: 16),)),
        
      ),
    );
  }
}





