import 'package:movies_clean_code/movies/domain/entity/movie_entity.dart';
import 'package:movies_clean_code/movies/domain/repository/base_movies_repository.dart';

class GetTopRatedMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetTopRatedMoviesUseCase(this.baseMoviesRepository);
  Future<List<MovieEntity>> execute() async {
    return await baseMoviesRepository.getTopRatedMovies();
  }
}
