import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummydb.dart';
import 'package:netflix_clone_app/utils/constance/color_constance.dart';
import 'package:netflix_clone_app/utils/constance/image_constance.dart';

class MyList extends StatelessWidget {
  const MyList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: ColorConstance.mainblack,
            ),
            backgroundColor: ColorConstance.mainblack,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(ImageConstance.N_LOGO),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        'My List',
                        style: TextStyle(
                            color: ColorConstance.mainwhite,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 11,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_outlined,
                        color: ColorConstance.mainwhite,
                      )
                    ],
                  ),
                  Expanded(
                    child: GridView.builder(
                      itemCount: Dummydb.MYLIST_IMAGES.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          mainAxisExtent: 161),
                      itemBuilder: (context, index) => Container(
                        child: Image.network(Dummydb.MYLIST_IMAGES[index]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: ColorConstance.mainblack,
              selectedItemColor: ColorConstance.mainwhite,
              unselectedItemColor: Color(0xff8c8787),
              selectedLabelStyle: TextStyle(fontSize: 12),
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: 'search'),
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
            )));
  }
}
