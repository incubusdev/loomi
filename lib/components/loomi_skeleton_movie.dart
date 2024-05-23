import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class LoomiSkeletonMovie extends StatelessWidget {

  const LoomiSkeletonMovie({ super.key });

   @override
   Widget build(BuildContext context) {
       return Container(
              decoration: BoxDecoration(
              // color: Colors.amber,
              gradient: LinearGradient(

                  begin: Alignment.topCenter,
end: Alignment.bottomCenter,
               colors: 
[
             Color.fromARGB(255, 122, 121, 124),
             Color.fromARGB(255, 104, 89, 120),
              Color.fromARGB(255, 85, 55, 115)


]),
              borderRadius: BorderRadius.circular(30),
              // color: Colors.amber,
              ),
          height: 630,
          width: 350,
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
mainAxisAlignment: MainAxisAlignment.center,
children: [
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
      child: Container(height: 18,width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: const Color.fromARGB(255, 109, 96, 123)),).animate(onPlay: (controller) => controller.repeat(),).shimmer(duration: Duration(milliseconds: 900)) ,
    ),    
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
      child: Container(height: 30,width: 260,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: const Color.fromARGB(255, 109, 96, 123)),).animate(onPlay: (controller) => controller.repeat(),).shimmer(duration: Duration(milliseconds: 800)) ,
    ),    
SizedBox(height: 30,),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
      child: Container(height: 10,width: 260,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: const Color.fromARGB(255, 109, 96, 123)),).animate(onPlay: (controller) => controller.repeat(),).shimmer(duration: Duration(milliseconds: 400)) ,
    ),    
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
      child: Container(height: 10,width: 260,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: const Color.fromARGB(255, 109, 96, 123)),).animate(onPlay: (controller) => controller.repeat(),).shimmer(duration: Duration(milliseconds: 1000)) ,
    ),    
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
      child: Container(height: 10,width: 260,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: const Color.fromARGB(255, 109, 96, 123)),).animate(onPlay: (controller) => controller.repeat(),).shimmer(duration: Duration(milliseconds: 800)) ,
    ),    
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
      child: Container(height: 10,width: 260,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: const Color.fromARGB(255, 109, 96, 123)),).animate(onPlay: (controller) => controller.repeat(),).shimmer(duration: Duration(milliseconds: 600)) ,
    ), 
SizedBox(height: 30,),   
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
      child: Container(height: 10,width: 190,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: const Color.fromARGB(255, 109, 96, 123)),).animate(onPlay: (controller) => controller.repeat(),).shimmer(duration: Duration(milliseconds: 1000)) ,
    ), 
SizedBox(height: 30,),   
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 3),
      child: Container(height: 30,width: 190,decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: const Color.fromARGB(255, 109, 96, 123)),).animate(onPlay: (controller) => controller.repeat(),).shimmer(duration: Duration(milliseconds: 800)) ,
    ), 
SizedBox(height: 50,),   
Divider(thickness: 0.2,)
]),
);
  }
}