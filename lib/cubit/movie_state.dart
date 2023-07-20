part of 'movie_cubit.dart';


class MovieState extends Equatable {
  // final bool isLoagding;
  final Movies? movies;
  MovieState({
    // this.isLoagding = true,
    this.movies});

  MovieState copyWith({ final bool? isLoagding ,final Movies? movies }){
    return MovieState(
      // isLoagding: isLoagding ?? this.isLoagding,
      movies: movies ?? this.movies
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [movies ];
}

