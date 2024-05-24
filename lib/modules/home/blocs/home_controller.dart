import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loomiproject/data/moviesProvider/repository/movies_repo_rest.dart';
import 'package:loomiproject/models/movie_model.dart';



class HomeController extends GetxController { 


   RxBool isHoverButtom =  true.obs;
   RxBool isHoverButtom2 =  true.obs;
  TextEditingController  questionField = TextEditingController();
  final PageController pageCtrl = PageController();
  RxList<MovieModel> movies = RxList();
  MoviesRepoRest moviesRepoRest = Get.find();
  RxBool isLoading = true.obs;
  

     @override
  void onInit() async{
isLoading.value = true;
background.value = 'assets/DnD.png';
     await getMovieList();
isLoading.value = false;
  
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
    background.value = movies[index].poster;
    // performActionOnPageChange(index);
  }

  Future<void>getMovieList()async{


    var response = await  moviesRepoRest.getAllMovies();

       movies.addAll(response);

  }
}