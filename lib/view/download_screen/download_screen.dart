import 'package:flutter/material.dart';
import 'package:netflix_clone_app/utils/constance/color_constance.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstance.mainblack,
      appBar: AppBar(
        backgroundColor: ColorConstance.mainblack,
        title: Text(
          "Smart Downloads",
          style: TextStyle(
              color: ColorConstance.mainwhite,
              fontSize: 15,
              fontWeight: FontWeight.w400),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Introducing Downloads For you',
              style: TextStyle(
                  color: ColorConstance.mainwhite,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.',
              style: TextStyle(
                  color: ColorConstance.mainwhite,
                  fontSize: 11,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 9,
            ),
            Center(
              child: CircleAvatar(
                radius: 100,
                backgroundColor: ColorConstance.grey,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Color(0xff0177eb)),
              child: Text(
                'Setup',
                style: TextStyle(
                    color: ColorConstance.mainwhite,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 49,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 10),
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: ColorConstance.grey),
                child: Text(
                  'Find something For Download',
                  style: TextStyle(
                      color: ColorConstance.mainwhite,
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
