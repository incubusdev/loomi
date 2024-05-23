// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../../../models/movie_model.dart';
import '../provider/interface/api_provider_interface.dart';

class MoviesRepoRest {

  ProviderMoviesInterface moviesRepo;
  MoviesRepoRest({
    required this.moviesRepo,
  });


   Future<List<MovieModel>>  getAllMovies({int? id})async{
      
      var list =  await moviesRepo.getMovies(idMovie: id);
      return list;
     }
  
}
