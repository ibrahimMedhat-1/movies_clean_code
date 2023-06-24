import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_clean_code/core/utils/enums.dart';
import 'package:movies_clean_code/movies/data/data_source/movie_remote_data_source.dart';
import 'package:movies_clean_code/movies/data/repository/movie_repository.dart';
import 'package:movies_clean_code/movies/domain/repository/base_movies_repository.dart';
import 'package:movies_clean_code/movies/domain/use_case/get_now_playing_movies_use_case.dart';
import 'package:movies_clean_code/movies/presentation/controller/home_page_bloc/home_page_event.dart';
import 'package:movies_clean_code/movies/presentation/controller/home_page_bloc/home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc() : super(const HomePageState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      BaseMovieRemoteDataSource baseMovieRemoteDataSource = MovieRemoteDataSource();
      BaseMoviesRepository baseMoviesRepository = MovieRepository(baseMovieRemoteDataSource);
      final result = await GetNowPlayingMoviesUseCase(baseMoviesRepository).execute();
      emit(const HomePageState(nowPlayingState: RequestState.isLoaded));
      result.fold(
          (l) => emit(HomePageState(
                nowPlayingState: RequestState.isLoaded,
                message: l.message,
              )),
          (r) => emit(HomePageState(
                moviesList: r,
                nowPlayingState: RequestState.isLoaded,
              )));
    });
  }
}
