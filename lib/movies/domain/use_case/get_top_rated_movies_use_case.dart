import 'package:dartz/dartz.dart';
import 'package:movies_clean_code/movies/domain/entity/movie_entity.dart';
import 'package:movies_clean_code/movies/domain/repository/base_movies_repository.dart';

import '../../../core/base_use_case/base_use_case.dart';
import '../../../core/failure/failure.dart';

class GetTopRatedMoviesUseCase extends BaseUseCase<List<MovieEntity>, NoParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetTopRatedMoviesUseCase(this.baseMoviesRepository);
  @override
  Future<Either<Failure, List<MovieEntity>>> call(NoParameters parameters) async {
    return await baseMoviesRepository.getTopRatedMovies();
  }
}
