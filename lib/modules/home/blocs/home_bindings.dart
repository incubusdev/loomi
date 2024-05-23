import 'package:get/get.dart';
import 'package:loomiproject/data/moviesProvider/provider/api_loomi_provider.dart';
import 'package:loomiproject/data/moviesProvider/repository/movies_repo_rest.dart';
import 'package:loomiproject/modules/home/blocs/home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(MoviesRepoRest(moviesRepo: ApiLoomiProvider()));
    Get.put(HomeController());
  }
}