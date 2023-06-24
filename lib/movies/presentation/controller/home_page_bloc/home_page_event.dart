abstract class HomePageEvent {
  const HomePageEvent();

  List<Object> get props => [];
}

class GetNowPlayingMoviesEvent extends HomePageEvent {}

class GetTopRatedMoviesEvent extends HomePageEvent {}

class GetPopularMoviesEvent extends HomePageEvent {}
