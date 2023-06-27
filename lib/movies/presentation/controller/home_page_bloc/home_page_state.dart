import '../../../../core/utils/enums.dart';
import '../../../domain/entity/movie_entity.dart';

class HomePageState {
  final List<MovieEntity> nowPlayingMoviesList;
  final RequestState nowPlayingState;
  final String nowPlayingMessage;
  final List<MovieEntity> popularMoviesList;
  final RequestState popularState;
  final String popularMessage;
  final List<MovieEntity> topRatedMoviesList;
  final RequestState topRatedState;
  final String topRatedMessage;

  const HomePageState({
    this.nowPlayingMoviesList = const [],
    this.nowPlayingState = RequestState.isLoading,
    this.nowPlayingMessage = '',
    this.popularMoviesList = const [],
    this.popularState = RequestState.isLoading,
    this.popularMessage = '',
    this.topRatedMoviesList = const [],
    this.topRatedState = RequestState.isLoading,
    this.topRatedMessage = '',
  });

  HomePageState copyWith({
    List<MovieEntity>? nowPlayingMoviesList,
    RequestState? nowPlayingState,
    String? nowPlayingMessage,
    List<MovieEntity>? popularMoviesList,
    RequestState? popularState,
    String? popularMessage,
    List<MovieEntity>? topRatedMoviesList,
    RequestState? topRatedState,
    String? topRatedMessage,
  }) {
    return HomePageState(
      nowPlayingMoviesList: nowPlayingMoviesList ?? this.nowPlayingMoviesList,
      nowPlayingState: nowPlayingState ?? this.nowPlayingState,
      nowPlayingMessage: nowPlayingMessage ?? this.nowPlayingMessage,
      popularMoviesList: popularMoviesList ?? this.popularMoviesList,
      popularState: popularState ?? this.popularState,
      popularMessage: popularMessage ?? this.popularMessage,
      topRatedMoviesList: topRatedMoviesList ?? this.topRatedMoviesList,
      topRatedState: topRatedState ?? this.topRatedState,
      topRatedMessage: topRatedMessage ?? this.topRatedMessage,
    );
  }

  List<Object> get props => [
        nowPlayingMoviesList,
        nowPlayingState,
        nowPlayingMessage,
        popularMoviesList,
        popularState,
        popularMessage,
        topRatedMoviesList,
        topRatedState,
        topRatedMessage,
      ];
}
