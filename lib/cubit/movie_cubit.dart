import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:movie_finder_app/restapi.dart';

import '../listmovie.dart';

part 'movie_state.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieCubit() : super(MovieState());

  void getMovies() async {
    // todo
    // sử lý gọi API
    try{
      final dio = Dio();
      final client = RestClient(dio);
      String apiKey = "1c41bc4d48164328c74673990b12b00f";
      final result = await client.getTasks2(apiKey);
      emit(MovieState(movies: result));
    }catch(e){
      log(e.toString());
    }

    }
  }
