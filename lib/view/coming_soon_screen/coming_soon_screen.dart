import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummydb.dart';
import 'package:netflix_clone_app/utils/constance/color_constance.dart';
import 'package:netflix_clone_app/view/coming_soon_screen/widgets/custom_video_card.dart';
import 'package:netflix_clone_app/view/coming_soon_screen/widgets/new_arrival_card.dart';

class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstance.mainblack,
        appBar: AppBar(
          titleSpacing: 0,
          backgroundColor: ColorConstance.mainblack,
          leading: Center(
            child: CircleAvatar(
              radius: 19,
              backgroundColor: ColorConstance.mainred,
              child: Icon(
                Icons.notifications,
                color: ColorConstance.mainwhite,
              ),
            ),
          ),
          title: Text(
            'Notifications',
            style: TextStyle(
                color: ColorConstance.mainwhite, fontWeight: FontWeight.w700),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                  children: List.generate(
                2,
                (index) => New_arrival_card(
                  imageurl: Dummydb.searchCards[index]['url'],
                  title: Dummydb.searchCards[index]['title'],
                ),
              )),
              SizedBox(height: 25),
              Column(
                children: List.generate(
                  Dummydb.searchCards.length,
                  (index) => CustomVideoCard(
                    imageurl: Dummydb.searchCards[index]['url'],
                    title: Dummydb.searchCards[index]['title'],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
