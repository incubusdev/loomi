import 'package:dio/dio.dart';
import 'package:loomiproject/models/movie_model.dart';

import 'interface/api_provider_interface.dart';

class ApiLoomiProvider implements ProviderMoviesInterface {
  var url = 'https://untold-strapi.api.stage.loomi.com.br/api/movies/';
  Dio dio = Dio();

  @override
  Future<List<MovieModel>> getMovies({int? idMovie}) async {
    List<MovieModel> list = [];

    List<MovieModel> list2 = [
        MovieModel(name: 'Barbie', synopsis: 'synopsis', currentlyPlaying: true, streamLink: '', genre: 'Musical', poster: 'assets/mockybarbie.png', createdAt: 'createdAt', updatedAt: 'updatedAt', publishedAt: 'publishedAt', endDate: 'endDate') ,  
        MovieModel(name: 'Jhon Wick', synopsis: 'John Wick is a legendary retired hitman, dealing with grief after losing the great love of his life. When a gangster breaks into his house, kills his dog and steals his car, he is forced back into action and begins his revenge.', currentlyPlaying: true, streamLink: '', genre: 'Action', poster: 'assets/mocky5.png', createdAt: 'createdAt', updatedAt: 'updatedAt', publishedAt: 'publishedAt', endDate: 'endDate'),   
    ];
    Response response = await dio.get(url);

    //  var tmp = data['data'];
      if (response.statusCode == 200) {
      List<dynamic> data = response.data['data'];

      for(var movie in data){
        
      Map<String,dynamic> tmp  = movie['attributes'];
      var m = MovieModel.fromMap(tmp);
       list.add(m);


      }

  
      

    }
        for(var movieMock in list2){
                 list.add(movieMock);
            }
    return list;
  }
}
