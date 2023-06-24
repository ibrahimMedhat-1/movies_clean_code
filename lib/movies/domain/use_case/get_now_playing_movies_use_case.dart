import 'package:dartz/dartz.dart';
import 'package:movies_clean_code/movies/domain/entity/movie_entity.dart';
import 'package:movies_clean_code/movies/domain/repository/base_movies_repository.dart';

import '../../../core/failure/failure.dart';

class GetNowPlayingMoviesUseCase {
  final BaseMoviesRepository baseMoviesRepository;

  GetNowPlayingMoviesUseCase(this.baseMoviesRepository);
  Future<Either<Failure, List<MovieEntity>>> execute() async {
    return await baseMoviesRepository.getNowPlayingMovies();
  }
}
