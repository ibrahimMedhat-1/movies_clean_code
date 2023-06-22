import 'package:movies_clean_code/movies/domain/entity/movie_entity.dart';

abstract class BaseMoviesRepository {
  Future<List<MovieEntity>> getNewMovies();

  Future<List<MovieEntity>> getPopularMovies();

  Future<List<MovieEntity>> getTopRatedMovies();
}
