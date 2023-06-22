import 'package:movies_clean_code/movies/domain/entity/movie_entity.dart';

class MovieModel extends MovieEntity {
  MovieModel({
    required super.id,
    required super.title,
    required super.backdropPath,
    required super.genreIds,
    required super.overview,
    required super.voteAverage,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json["id"],
        title: json["title"],
        backdropPath: json["backdrop_path"],
        genreIds: List<int>.from(json["genreIds"].map((e) => e)),
        overview: json["overview"],
        voteAverage: json["voteAverage"],
      );
}
