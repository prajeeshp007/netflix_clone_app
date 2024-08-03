import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummydb.dart';
import 'package:netflix_clone_app/utils/constance/color_constance.dart';
import 'package:netflix_clone_app/utils/constance/image_constance.dart';
import 'package:netflix_clone_app/view/home_screen/widgets/movies_cardbuilder_widgets.dart';
import 'package:netflix_clone_app/view/my_list/my_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstance.mainblack,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _moviePosterSection(),
            SizedBox(height: 11),
            _buildPlaySection(),
            SizedBox(height: 43),
            MoviesCardbuilderWidgets(
              posterimages: Dummydb.moviepostersList2,
              customtitle: 'Your Next Watch',
              coustomwidth: 103,
              coustomheight: 103,
              iscircle: true,
            ),
            SizedBox(
              height: 28,
            ),
            MoviesCardbuilderWidgets(
              haveinfocard: true,
              posterimages: Dummydb.moviepostersList1,
              customtitle: 'Watch It Again',
              coustomwidth: 150,
            ),
            SizedBox(
              height: 28,
            ),
            MoviesCardbuilderWidgets(
              posterimages: Dummydb.moviepostersList2,
              customtitle: "Trending On Netflix",
            ),
            SizedBox(
              height: 28,
            ),
            MoviesCardbuilderWidgets(
              customtitle: 'Top 10 in Nigeria Today',
              coustomheight: 251,
              coustomwidth: 154,
              posterimages: Dummydb.moviepostersList3,
            ),
            SizedBox(
              height: 28,
            ),
            MoviesCardbuilderWidgets(
                customtitle: 'MY List',
                posterimages: Dummydb.moviepostersList4),
            SizedBox(
              height: 28,
            ),
            MoviesCardbuilderWidgets(
                customtitle: 'Popular On Netflix',
                posterimages: Dummydb.moviepostersList5),
            SizedBox(
              height: 28,
            ),
            MoviesCardbuilderWidgets(
                customtitle: 'TV Thrillers & Mysteries',
                posterimages: Dummydb.moviepostersList6),
            SizedBox(
              height: 28,
            ),
            MoviesCardbuilderWidgets(
                customtitle: 'Only On Netflix',
                posterimages: Dummydb.moviepostersList7),
          ],
        ),
      ),
    );
  }

  Widget _buildPlaySection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyList(),
                ));
          },
          child: Column(
            children: [
              Icon(
                Icons.add,
                color: ColorConstance.mainwhite,
                size: 24,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'MY List',
                style:
                    TextStyle(color: ColorConstance.mainwhite, fontSize: 13.64),
              )
            ],
          ),
        ),
        SizedBox(
          width: 42,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 19, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Color(0xffc4c4c4),
          ),
          child: Row(
            children: [
              Icon(
                Icons.play_arrow_sharp,
                color: ColorConstance.mainblack,
                size: 22,
              ),
              Text(
                'PLAY',
                style: TextStyle(
                    color: ColorConstance.mainblack,
                    fontSize: 21,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        SizedBox(
          width: 42,
        ),
        Column(
          children: [
            Icon(
              Icons.info_outline_rounded,
              color: ColorConstance.mainwhite,
              size: 20,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Info',
              style: TextStyle(fontSize: 14, color: ColorConstance.mainwhite),
            )
          ],
        )
      ],
    );
  }

  Widget _moviePosterSection() {
    return Stack(
      children: [
        Container(
          height: 415,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(ImageConstance.home_screen))),
        ),
        Container(
          height: 415,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.center,
                  colors: [ColorConstance.mainblack, Colors.transparent])),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(ImageConstance.N_LOGO),
                      Text(
                        'TV show',
                        style: TextStyle(
                            fontSize: 18, color: ColorConstance.mainwhite),
                      ),
                      Text(
                        'Movies',
                        style: TextStyle(
                            fontSize: 18, color: ColorConstance.mainwhite),
                      ),
                      Text(
                        'My list',
                        style: TextStyle(
                            fontSize: 18, color: ColorConstance.mainwhite),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageConstance.TOP_10,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image.asset(ImageConstance.TOP_2)
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
