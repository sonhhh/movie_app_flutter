import 'package:flutter/material.dart';
import 'package:movie_finder_app/page_view/pageview1.dart';
import 'package:movie_finder_app/page_view/pageview2.dart';
import 'package:movie_finder_app/page_view/pageview3.dart';
import 'package:movie_finder_app/page_view/pageview4.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool auth = false;
  int pageIndex = 0;
  late PageController pageController;

  void _onItemTapped(int index) {
    setState(() {
      pageIndex = index;
    });
    pageController.animateToPage(pageIndex,
        duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: pageIndex);
    //_mostPopular();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2E5676), Color(0xFF4B4576)],
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: PageView.builder(
          itemBuilder: (context, index) {
            return _getView(index);
          },
          controller: pageController,
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.zero,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2E5676), Color(0xFF4B4576)],
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
          ),
        ),
        height: 70,
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/iconnavigator/home.png',
                  height: 20,
                ),
                backgroundColor: Colors.white.withOpacity(0),
                activeIcon: Column(
                  children: [
                    Image.asset(
                      'assets/iconnavigator/home.png',
                      height: 20,
                    ),
                    Image.asset('assets/iconnavigator/ellipse.png')
                  ],
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/iconnavigator/Favorite.png',
                  height: 20,
                ),
                backgroundColor: Colors.white.withOpacity(0),
                activeIcon: Column(
                  children: [
                    Image.asset(
                      'assets/iconnavigator/Favorite.png',
                      height: 15,
                    ),
                    Image.asset('assets/iconnavigator/ellipse.png')
                  ],
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/iconnavigator/ticket.png',
                  height: 20,
                ),
                backgroundColor: Colors.white.withOpacity(0),
                activeIcon: Column(
                  children: [
                    Image.asset(
                      'assets/iconnavigator/ticket.png',
                      height: 15,
                    ),
                    Image.asset('assets/iconnavigator/ellipse.png')
                  ],
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/iconnavigator/accout.png',
                  height: 20,
                ),
                backgroundColor: Colors.white.withOpacity(0),
                activeIcon: Column(
                  children: [
                    Image.asset(
                      'assets/iconnavigator/accout.png',
                      height: 15,
                    ),
                    Image.asset('assets/iconnavigator/ellipse.png')
                  ],
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/iconnavigator/shuffle.png',
                  height: 20,
                ),
                backgroundColor: Colors.white.withOpacity(0.1),
                activeIcon: Column(
                  children: [
                    Image.asset(
                      'assets/iconnavigator/shuffle.png',
                      height: 15,
                    ),
                    Image.asset('assets/iconnavigator/ellipse.png')
                  ],
                ),
                label: "Home")
          ],
          currentIndex: this.pageIndex,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
          showSelectedLabels: false,
        ),
      ),
    );
  }

  Widget _getView(int index) {
    switch (index) {
      case 0:
        return const PageView1();
        case 1:
        return const PageView2();
      case 2:
        return const PageView3();
      case 3:
        return const PageView2();
      case 4:
        return const PageView4();
      default:
        return const PageView1();
    }
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
