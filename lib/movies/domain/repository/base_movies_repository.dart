import 'package:dartz/dartz.dart';
import 'package:movies_clean_code/movies/domain/entity/movie_entity.dart';

import '../../../core/failure/failure.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<MovieEntity>>> getNowPlayingMovies();

  Future<Either<Failure, List<MovieEntity>>> getPopularMovies();

  Future<Either<Failure, List<MovieEntity>>> getTopRatedMovies();
}
