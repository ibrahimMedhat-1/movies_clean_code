import 'package:dartz/dartz.dart';
import 'package:movies_clean_code/movies/domain/entity/movie_entity.dart';

import '../../../core/base_use_case/base_use_case.dart';
import '../../../core/failure/failure.dart';
import '../../data/models/movie_details_model.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<MovieEntity>>> getNowPlayingMovies();

  Future<Either<Failure, List<MovieEntity>>> getPopularMovies();

  Future<Either<Failure, List<MovieEntity>>> getTopRatedMovies();

  Future<Either<Failure, MovieDetailsModel>> getMovieDetails(Parameters parameters);
}
