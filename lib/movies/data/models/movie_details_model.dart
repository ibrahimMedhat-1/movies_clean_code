import 'package:movies_clean_code/movies/data/models/genres_model.dart';
import 'package:movies_clean_code/movies/domain/entity/movie_details_entity.dart';

class MovieDetailsModel extends MovieDetails {
  const MovieDetailsModel({
    required super.backdropPath,
    required super.genres,
    required super.id,
    required super.overview,
    required super.releaseDate,
    required super.runtime,
    required super.title,
    required super.voteAverage,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) => MovieDetailsModel(
        backdropPath: json['backdrop_path'],
        genres: List<GenresModel>.from(json['genres'].map((e) => GenresModel.fromJson(e))),
        id: json['id'],
        overview: json['overview'],
        releaseDate: json['release_date'],
        runtime: json['runtime'],
        title: json['title'],
        voteAverage: json['vote_average'],
      );
}
