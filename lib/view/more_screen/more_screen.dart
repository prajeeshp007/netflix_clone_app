import 'package:flutter/material.dart';
import 'package:netflix_clone_app/dummydb.dart';
import 'package:netflix_clone_app/utils/constance/color_constance.dart';
import 'package:netflix_clone_app/view/global_widget/username_card.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstance.mainblack,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildUserSelectionSection(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  color: ColorConstance.mainwhite,
                ),
                SizedBox(
                  width: 9,
                ),
                Text(
                  'Manage Profiles',
                  style: TextStyle(
                      color: ColorConstance.mainwhite,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 19),
              decoration: BoxDecoration(color: Color(0xff1A1A1A)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.chat_outlined,
                        color: ColorConstance.mainwhite,
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Text(
                        'Tell friends bout Netflix',
                        style: TextStyle(
                            color: ColorConstance.mainwhite,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: ColorConstance.mainwhite,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Text(
                    'Terms&Condition',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationColor: ColorConstance.mainwhite,
                        color: Color(0xffc4c4c4),
                        fontWeight: FontWeight.w500,
                        fontSize: 11),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: ColorConstance.mainblack,
                            border: InputBorder.none),
                      )),
                      SizedBox(
                        width: 7,
                      ),
                      Container(
                        child: Center(
                            child: Text(
                          "Copy Link",
                          style: TextStyle(
                              color: ColorConstance.mainblack,
                              fontWeight: FontWeight.w600,
                              fontSize: 17),
                        )),
                        color: ColorConstance.mainwhite,
                        height: 44,
                        width: 84,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Image.asset(Dummydb.WTASAPP_LOGO),
                      ),
                      SizedBox(
                        height: 41,
                        child: VerticalDivider(),
                      ),
                      Container(
                        child: Image.asset(Dummydb.FACEBOOK_LOGO),
                      ),
                      SizedBox(
                        height: 41,
                        child: VerticalDivider(),
                      ),
                      Container(
                        child: Image.asset(Dummydb.GMAIL_LOGO),
                      ),
                      SizedBox(
                        height: 41,
                        child: VerticalDivider(),
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.more_horiz_outlined,
                            color: ColorConstance.mainwhite,
                            size: 25,
                          ),
                          Text(
                            'More',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: ColorConstance.mainwhite),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.done_outline_rounded,
                    color: Color(0xffe0e0e0),
                    size: 25,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'My List',
                    style: TextStyle(
                        color: ColorConstance.mainwhite,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
            Divider(
              color: Color(0xff424242),
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "App Settings",
                    style: TextStyle(
                        fontSize: 15,
                        color: ColorConstance.mainwhite,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Account",
                    style: TextStyle(
                        fontSize: 15,
                        color: ColorConstance.mainwhite,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Help",
                    style: TextStyle(
                        fontSize: 15,
                        color: ColorConstance.mainwhite,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Signout",
                    style: TextStyle(
                        fontSize: 15,
                        color: ColorConstance.mainwhite,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  SingleChildScrollView _buildUserSelectionSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 38, horizontal: 9),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: List.generate(
                Dummydb.userdetails.length,
                (index) => UsernameCard(
                    oncardpressed: () {
                      selectedindex = index;
                      setState(() {});
                    },
                    height: index == selectedindex ? 70 : 60,
                    width: index == selectedindex ? 73 : 65,
                    iamgepath: Dummydb.userdetails[index]['image'],
                    username: Dummydb.userdetails[index]['name']),
              ),
            ),
            Container(
              child: Center(
                child: Icon(
                  Icons.add,
                  size: 35,
                  color: ColorConstance.mainwhite,
                ),
              ),
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 9),
              height: 58,
              width: 63,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  border: Border.all(color: ColorConstance.mainwhite)),
            )
          ],
        ),
      ),
    );
  }
}
