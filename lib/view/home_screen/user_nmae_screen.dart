import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummydb.dart';
import 'package:netflix_clone_app/utils/constance/color_constance.dart';
import 'package:netflix_clone_app/utils/constance/image_constance.dart';
import 'package:netflix_clone_app/view/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:netflix_clone_app/view/global_widget/username_card.dart';

class UserNmaeScreen extends StatefulWidget {
  const UserNmaeScreen({super.key});

  @override
  State<UserNmaeScreen> createState() => _UserNmaeScreenState();
}

class _UserNmaeScreenState extends State<UserNmaeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstance.mainblack,
      appBar: AppBar(
        backgroundColor: ColorConstance.mainblack,
        centerTitle: true,
        title: Image.asset(height: 37.2, ImageConstance.LOGO_PNG),
        actions: [
          Icon(
            Icons.edit,
            color: ColorConstance.mainwhite,
            size: 30,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Center(
        child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 75),
          shrinkWrap: true,
          itemCount: Dummydb.userdetails.length + 1,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisExtent: 130),
          itemBuilder: (context, index) {
            if (index < Dummydb.userdetails.length) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: UsernameCard(
                      oncardpressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavScreen(),
                            ));
                      },
                      iamgepath: Dummydb.userdetails[index]['image'],
                      username: Dummydb.userdetails[index]['name']),
                ),
              );
            } else {
              return InkWell(
                onTap: () {
                  Dummydb.userdetails.add(
                    {'image': ImageConstance.user1_png, 'name': 'prajeeesh'},
                  );
                  setState(() {});
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      backgroundColor: Colors.green,
                      content: Text('profile added successfully')));
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(ImageConstance.ADD_BUTTON),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Add profile',
                        style: TextStyle(color: ColorConstance.mainwhite),
                      )
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
