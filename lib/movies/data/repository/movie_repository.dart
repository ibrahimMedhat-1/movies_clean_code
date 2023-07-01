import 'package:dartz/dartz.dart';
import 'package:movies_clean_code/core/error_exception/error_exception.dart';
import 'package:movies_clean_code/core/failure/failure.dart';
import 'package:movies_clean_code/movies/domain/entity/movie_entity.dart';
import 'package:movies_clean_code/movies/domain/repository/base_movies_repository.dart';

import '../data_source/movie_remote_data_source.dart';
import '../models/movie_details_model.dart';

class MovieRepository extends BaseMoviesRepository {
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;

  MovieRepository(this.baseMovieRemoteDataSource);

  @override
  Future<Either<Failure, List<MovieEntity>>> getPopularMovies() async {
    final result = await baseMovieRemoteDataSource.getPopularMovies();
    try {
      return Right(result);
    } on ServerErrorException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getTopRatedMovies() async {
    final result = await baseMovieRemoteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerErrorException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<MovieEntity>>> getNowPlayingMovies() async {
    final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
    try {
      return Right(result);
    } on ServerErrorException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, MovieDetailsModel>> getMovieDetails(parameters) async {
    final result = await baseMovieRemoteDataSource.getMovieDetails(parameters);
    try {
      return Right(result);
    } on ServerErrorException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
}
