import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_clean_code/core/utils/enums.dart';
import 'package:movies_clean_code/movies/domain/use_case/get_now_playing_movies_use_case.dart';
import 'package:movies_clean_code/movies/presentation/controller/home_page_bloc/home_page_event.dart';
import 'package:movies_clean_code/movies/presentation/controller/home_page_bloc/home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  HomePageBloc(this.getNowPlayingMoviesUseCase) : super(const HomePageState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      final result = await getNowPlayingMoviesUseCase.execute();
      emit(const HomePageState(nowPlayingState: RequestState.isLoaded));
      // print(result);
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
