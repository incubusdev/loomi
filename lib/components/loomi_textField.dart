// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class LoomiTextField extends StatelessWidget {
  TextEditingController? controller;
  String? hintText;
  bool eyeIcon;
   bool isobscureText;
  Function()? eyeIconButton;
  LoomiTextField({this.controller, this.hintText, this.eyeIcon = false,this.isobscureText = false,this.eyeIconButton});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
height: 50,
        child: TextField(
           obscureText: isobscureText,
          style: TextStyle(color: const Color.fromARGB(255, 121, 123, 127)),
          controller: controller,
          decoration: InputDecoration(
              suffixIcon: Visibility(
                  visible: eyeIcon,
                  child: IconButton(
                    onPressed: eyeIconButton,
                    icon: Icon(Icons.remove_red_eye_outlined,color: isobscureText ? Color.fromARGB(255, 121, 123, 127) : const Color.fromARGB(255, 155, 105, 218),),
                  )),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                      color: const Color.fromARGB(255, 85, 86, 97), width: 2)),
              filled: true,
              fillColor: const Color.fromARGB(255, 35, 37, 44),
              focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 85, 86, 97), width: 2),
                  borderRadius: BorderRadius.circular(10)),
              hintText: hintText,
              hintStyle: TextStyle(
                  color: Color.fromARGB(255, 121, 123, 127), fontSize: 15)),
        ),
      ),
    );
  }
}
