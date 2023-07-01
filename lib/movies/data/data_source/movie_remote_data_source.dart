import 'package:dio/dio.dart';
import 'package:movies_clean_code/core/base_use_case/base_use_case.dart';
import 'package:movies_clean_code/core/error_exception/error_exception.dart';
import 'package:movies_clean_code/core/network/api_constance.dart';
import 'package:movies_clean_code/core/network/error_message_model.dart';
import 'package:movies_clean_code/movies/data/models/movie_model.dart';

import '../models/movie_details_model.dart';

abstract class BaseMovieRemoteDataSource {
  Future<List<MovieModel>> getNowPlayingMovies();

  Future<List<MovieModel>> getPopularMovies();

  Future<List<MovieModel>> getTopRatedMovies();

  Future<MovieDetailsModel> getMovieDetails(Parameters parameters);
}

class MovieRemoteDataSource extends BaseMovieRemoteDataSource {
  @override
  Future<List<MovieModel>> getNowPlayingMovies() async {
    final response = await Dio().get(ApiConstance.playingNowPath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List).map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerErrorException(errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getPopularMovies() async {
    final response = await Dio().get(ApiConstance.popularMoviePath);
    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List).map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerErrorException(errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MovieModel>> getTopRatedMovies() async {
    final response = await Dio().get(ApiConstance.topRatedMoviePath);

    if (response.statusCode == 200) {
      return List<MovieModel>.from((response.data['results'] as List).map((e) => MovieModel.fromJson(e)));
    } else {
      throw ServerErrorException(errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<MovieDetailsModel> getMovieDetails(Parameters parameters) async {
    final response = await Dio().get(ApiConstance.movieDetailsPath(parameters.id));

    if (response.statusCode == 200) {
      return MovieDetailsModel.fromJson(response.data);
    } else {
      throw ServerErrorException(errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
