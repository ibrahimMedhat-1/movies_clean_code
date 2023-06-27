import 'package:get_it/get_it.dart';
import 'package:movies_clean_code/movies/data/data_source/movie_remote_data_source.dart';
import 'package:movies_clean_code/movies/data/repository/movie_repository.dart';
import 'package:movies_clean_code/movies/domain/repository/base_movies_repository.dart';
import 'package:movies_clean_code/movies/domain/use_case/get_now_playing_movies_use_case.dart';
import 'package:movies_clean_code/movies/domain/use_case/get_popular_movies_use_case.dart';
import 'package:movies_clean_code/movies/domain/use_case/get_top_rated_movies_use_case.dart';
import 'package:movies_clean_code/movies/presentation/controller/home_page_bloc/home_page_bloc.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    ///Homepage bloc init
    sl.registerLazySingleton(() => HomePageBloc(
          sl<GetNowPlayingMoviesUseCase>(),
          sl<GetPopularMoviesUseCase>(),
          sl<GetTopRatedMoviesUseCase>(),
        ));

    ///Data Source
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(() => MovieRemoteDataSource());

    ///repository
    sl.registerLazySingleton<BaseMoviesRepository>(() => MovieRepository(sl()));

    ///Use Case
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
  }
}
