import 'package:flutter/material.dart';

class LoomiSmallLogo extends StatelessWidget {
  const LoomiSmallLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 33,
        width: 33,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/smallLogo.png'),
                fit: BoxFit.contain)));
  }
}
