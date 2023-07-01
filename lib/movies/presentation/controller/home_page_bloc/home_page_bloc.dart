import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_clean_code/core/base_use_case/base_use_case.dart';
import 'package:movies_clean_code/core/utils/enums.dart';
import 'package:movies_clean_code/movies/domain/use_case/get_now_playing_movies_use_case.dart';
import 'package:movies_clean_code/movies/presentation/controller/home_page_bloc/home_page_event.dart';
import 'package:movies_clean_code/movies/presentation/controller/home_page_bloc/home_page_state.dart';

import '../../../domain/use_case/get_popular_movies_use_case.dart';
import '../../../domain/use_case/get_top_rated_movies_use_case.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;

  HomePageBloc(
    this.getNowPlayingMoviesUseCase,
    this.getPopularMoviesUseCase,
    this.getTopRatedMoviesUseCase,
  ) : super(const HomePageState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      final result = await getNowPlayingMoviesUseCase(NoParameters());
      result.fold(
          (l) => emit(state.copyWith(
                nowPlayingState: RequestState.isLoaded,
                nowPlayingMessage: l.message,
              )),
          (r) => emit(state.copyWith(
                nowPlayingMoviesList: r,
                nowPlayingState: RequestState.isLoaded,
              )));
    });
    on<GetPopularMoviesEvent>((event, emit) async {
      final result = await getPopularMoviesUseCase(NoParameters());

      result.fold(
          (l) => emit(state.copyWith(
                popularState: RequestState.isLoaded,
                popularMessage: l.message,
              )),
          (r) => emit(state.copyWith(
                popularMoviesList: r,
                popularState: RequestState.isLoaded,
              )));
    });
    on<GetTopRatedMoviesEvent>((event, emit) async {
      final result = await getTopRatedMoviesUseCase(NoParameters());
      result.fold(
          (l) => emit(state.copyWith(
                topRatedState: RequestState.isLoaded,
                topRatedMessage: l.message,
              )),
          (r) => emit(state.copyWith(
                topRatedMoviesList: r,
                topRatedState: RequestState.isLoaded,
              )));
    });
  }
}
