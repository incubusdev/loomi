import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loomiproject/data/mockyTest/movielist.dart';
import 'package:loomiproject/models/movie_model.dart';

class HomeView extends StatelessWidget {

  const HomeView({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text(''),),
           body: Obx(() {
return  PageView.builder(
             itemCount: Movielist.movieLists.length,
             itemBuilder: (context,index){
            MovieModel  item  = Movielist.movieLists[index];
                return Image.asset(item.image);
});})
       );
  }
}