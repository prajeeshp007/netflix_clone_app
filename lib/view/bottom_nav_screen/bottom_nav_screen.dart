import 'package:flutter/material.dart';
import 'package:netflix_clone_app/utils/constance/color_constance.dart';
import 'package:netflix_clone_app/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:netflix_clone_app/view/download_screen/download_screen.dart';
import 'package:netflix_clone_app/view/home_screen/home_screen.dart';
import 'package:netflix_clone_app/view/more_screen/more_screen.dart';
import 'package:netflix_clone_app/view/search_screen/search_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedindex = 0;
  List<Widget> myscreens = [
    HomeScreen(),
    SearchScreen(),
    ComingSoonScreen(),
    DownloadScreen(),
    MoreScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: myscreens[selectedindex],
        backgroundColor: ColorConstance.mainblack,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedindex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorConstance.mainblack,
          selectedItemColor: ColorConstance.mainwhite,
          unselectedItemColor: Color(0xff8c8787),
          selectedLabelStyle: TextStyle(fontSize: 12),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
              icon: Icon(Icons.video_library_outlined),
              label: 'coming soon',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.download_sharp), label: 'downlods'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
              ),
              label: 'more',
            ),
          ],
          onTap: (value) {
            selectedindex = value;
            setState(() {});
          },
        ));
  }
}
