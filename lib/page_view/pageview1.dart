import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_finder_app/cubit/movie_cubit.dart';
import 'package:movie_finder_app/producmovie.dart';
import '../category.dart';
import '../heard.dart';
import '../search.dart';



class PageView1 extends StatefulWidget {
  const PageView1({super.key});

  @override
  State<PageView1> createState() => _PageView1State();
}

class _PageView1State extends State<PageView1> {
  // int currentPage = 0;
  // bool isLoagding = true;
  // // int _selectedIndex =0;
  // final dio = Dio();
  // Movies? movies = Movies();
  // void _mostPopular() async {
  //   final client = RestClient(dio);
  //   String apiKey = "1c41bc4d48164328c74673990b12b00f";
  //   //Movies? result = Movies();
  //   //sleep(const Duration(seconds: 20));
  //   final result = await client.getTasks2(apiKey);
  //
  //   log(result.toString());
  //   // if (mounted) {
  //   setState(() {
  //     movies = result;
  //     isLoagding = false;
  //   });
  //   // }
  // }
  //
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }
late final MovieCubit cubit;
  @override
  void initState() {
    // TODO: implement initState
    log("initState");
    super.initState();
    cubit = MovieCubit();
    cubit.getMovies();
    // _mostPopular();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF2E5676), Color(0xFF4B4576)],
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: BlocBuilder<MovieCubit, MovieState>(
            bloc: cubit,
             buildWhen: (previous, current) => previous.movies != current.movies,
            builder: (context, state) {
              return Column(
                children: [
                  const Search(),
                  ListHeard(movie: state.movies),
                  const Categories(),
                  ProduceMovie(movie: state.movies),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
// Container(
//     decoration: const BoxDecoration(
//       gradient: LinearGradient(
//         colors: [Color(0xFF2E5676), Color(0xFF4B4576)],
//         begin: Alignment.bottomLeft,
//         end: Alignment.bottomRight,
//       ),
//     ),
//     child: BottomBarMovei()),
}
