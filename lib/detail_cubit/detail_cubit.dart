
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_finder_app/list_cart_user.dart';
import 'package:movie_finder_app/list_cast.dart';
import 'package:movie_finder_app/restapi.dart';

part 'detail_state.dart';

class DetailCubit extends Cubit<DetailInitial> {
  DetailCubit() : super(DetailInitial());
  final dio = Dio();
  Future<void> getDetail(String id) async {
      final client = RestClient(dio);
      String apiKey = "9bb89316d8693b06d7a84980b29c011f";
      try {
        final result = await client.getDetail(apiKey, id );
        log(result.toString());
        emit(DetailInitial(listcart: result, isLoading: false));
        // if (mounted) {
        //   setState(() {
        //     listcart = result;
        //   });
        // }
      } catch (e) {
        log(e.toString());
      }
    }


  void getUser() {}
}
