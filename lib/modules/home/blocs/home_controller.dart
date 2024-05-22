import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loomiproject/models/movie_model.dart';



class HomeController extends GetxController { 


  TextEditingController  questionField = TextEditingController();
  final PageController pageCtrl = PageController();

  RxList<MovieModel> movies = [
  MovieModel(title: 'Barbie', description: 'dasdasd das dsd as dasdasdasd asdas dasdasdasd asda fga s fasdasdasdasdas', image: 'assets/mockybarbie.png', type: 'Musical'),
  MovieModel(title: 'Guardians of Galaxy', description: 'dasdasd das dsd as dasdasdasd asdas dasdasdasd asda fga s fasdasdasdasdas', image: 'assets/mocky2.png', type: 'Adventure'),
  MovieModel(title: 'Pixels', description: 'dasdasd das dsd as dasdasdasd asdas dasdasdasd asda fga s fasdasdasdasdas', image: 'assets/mocky3.png', type: 'Comedy'),
  MovieModel(title: 'Coringa', description: 'dasdasd das dsd as dasdasdasd asdas dasdasdasd asda fga s fasdasdasdasdas', image: 'assets/mocky4.png', type: 'Comedy'),
  MovieModel(title: 'Jhon Wick', description: 'dasdasd das dsd as dasdasdasd asdas dasdasdasd asda fga s fasdasdasdasdas', image: 'assets/mocky5.png', type: 'Comedy'),

  ].obs;

     @override
  void onInit() {
background.value = movies[0].image;
    // TODO: implement onInit
    super.onInit();
  }
  RxString background =''.obs;
  RxInt currentPage = 0.obs;
  //  @override
  // void onInit() {
  //   super.onInit();
  //   pageCtrl.addListener(() {
  //        var page = int.tryParse(pageCtrl.page.toString());
  //     background.value = movies[page!].image;



  //   });
  // }
void onPageChanged(int index) async{
  await Future.delayed(Duration(milliseconds: 100));
  currentPage.value = index;
    background.value = movies[index].image;
    // performActionOnPageChange(index);
  }
}