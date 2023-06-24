import '../../../../core/utils/enums.dart';
import '../../../domain/entity/movie_entity.dart';

class HomePageState {
  final List<MovieEntity> moviesList;
  final RequestState nowPlayingState;
  final String message;

  const HomePageState({
    this.moviesList = const [],
    this.nowPlayingState = RequestState.isLoading,
    this.message = '',
  });

  List<Object> get props => [
        moviesList,
        nowPlayingState,
        message,
      ];
}
