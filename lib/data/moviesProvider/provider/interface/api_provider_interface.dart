


import 'package:loomiproject/models/movie_model.dart';

abstract class ProviderMoviesInterface {
  Future<List<MovieModel>> getMovies({int? idMovie});
  
}