import 'package:dartz/dartz.dart';
import 'package:movies_clean_code/core/base_use_case/base_use_case.dart';
import 'package:movies_clean_code/core/failure/failure.dart';
import 'package:movies_clean_code/movies/domain/repository/base_movies_repository.dart';

import '../../data/models/movie_details_model.dart';

class GetMovieDetailsUseCase extends BaseUseCase<MovieDetailsModel, Parameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetMovieDetailsUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, MovieDetailsModel>> call(Parameters parameters) async {
    return await baseMoviesRepository.getMovieDetails(parameters);
  }
}
