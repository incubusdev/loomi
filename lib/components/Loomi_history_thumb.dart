// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:loomiproject/components/loomi_simple_text.dart';

class LoomiHistoryThumb extends StatelessWidget {
 String image;
 String name;
 String ano;

  LoomiHistoryThumb({
    Key? key,
    required this.image,
    required this.name,
    required this.ano,
  }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Padding(
         padding: const EdgeInsets.symmetric(horizontal: 6),
         child: Stack(
         alignment: Alignment.bottomLeft,
           children: [
             Container( 
                     height: 100,
                     width: 180,
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover)),
              ),
         Container(
           height: 100,
          width: 180,
         decoration: BoxDecoration(gradient: LinearGradient(colors: [
         const Color.fromARGB(0, 0, 0, 0),
         Color.fromARGB(101, 0, 0, 0),
         Color.fromARGB(155, 0, 0, 0),
         ],begin: Alignment.topCenter,end: Alignment.center)),
         ),
         Column(mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
                   child: Row(
                     children: [
                       LoomiSimpleText(text: name,textAlign: TextAlign.start,color: Colors.white,),
                         Text( ' - ',style: TextStyle(color: Colors.white)),
                       LoomiSimpleText(text: ano,textAlign: TextAlign.start,color: Colors.white,),
                     ],
                   ),
                 ),
               ],
             ),
           ],
         ),
       );
  }
}
