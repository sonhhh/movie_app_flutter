import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:movie_finder_app/listmovie.dart';
import 'package:movie_finder_app/producmovie.dart';
import 'package:movie_finder_app/restapi.dart';




class PageView4 extends StatefulWidget {
  const PageView4({super.key});

  @override
  State<PageView4> createState() => _PageView4State();
}

class _PageView4State extends State<PageView4> {


  @override
  void initState() {
    // TODO: implement initState
    log("initState");
    super.initState();
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
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF2E5676), Color(0xFF4B4576)],
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Column(
            children: [],
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
