// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class LoomiMainButtom extends StatelessWidget {
   
  @override
  Widget build(BuildContext context) {
    return InkWell(
    onTap: () {
      
    },
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
            
            boxShadow: [BoxShadow(blurRadius: 8,color: Color.fromARGB(158, 156, 105, 218),spreadRadius: 0.5,)],
            borderRadius: BorderRadius.circular(10),
            color: Color.fromARGB(255, 53, 31, 57),
            border: Border.all(
            width: 1.3, color: const Color.fromARGB(255, 155, 105, 218))),
      child: Center(child: Text('Create Account',style: TextStyle(color: Color.fromARGB(255, 155, 105, 218),fontWeight: FontWeight.bold,fontSize: 20),)),
        
      ),
    );
  }
}
