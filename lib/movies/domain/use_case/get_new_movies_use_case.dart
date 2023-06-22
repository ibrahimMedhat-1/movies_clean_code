import 'package:movies_clean_code/movies/domain/entity/movie_entity.dart';
import 'package:movies_clean_code/movies/domain/repository/base_movies_repository.dart';

class GetNewMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetNewMoviesUseCase(this.baseMoviesRepository);
  Future<List<MovieEntity>> execute() async {
    return await baseMoviesRepository.getNewMovies();
  }
}
