import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummydb.dart';
import 'package:netflix_clone_app/utils/constance/color_constance.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstance.mainblack,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 19, vertical: 10),
              color: Color(0xff424242),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.search,
                      size: 20,
                      color: Color(0xffc4c4c4),
                    ),
                    Text(
                      'search for show, movie,genre,e.t.c.',
                      style: TextStyle(
                          color: Color(0xffc4c4c4),
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(
                      Icons.mic,
                      color: Color(0xffc4c4c4),
                      size: 20,
                    )
                  ]),
            ),
            SizedBox(
              height: 21,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Top Searches',
                style: TextStyle(
                    color: ColorConstance.mainwhite,
                    fontSize: 27,
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 21,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) => Container(
                        color: Color(0xff424242),
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                height: 100,
                                width: 146,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(2),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(Dummydb
                                            .searchCards[index]['url']))),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                Dummydb.searchCards[index]['title'],
                                style: TextStyle(
                                    color: ColorConstance.mainwhite,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 3),
                                child: Icon(
                                  Icons.play_circle_outline,
                                  size: 25,
                                  color: ColorConstance.mainwhite,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) => Divider(
                        color: ColorConstance.mainblack,
                        height: 1,
                        thickness: 5,
                      ),
                  itemCount: 10),
            )
          ],
        ),
      ),
    );
  }
}
