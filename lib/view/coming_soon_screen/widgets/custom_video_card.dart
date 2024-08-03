import 'package:flutter/material.dart';
import 'package:netflix_clone_app/utils/constance/color_constance.dart';

class CustomVideoCard extends StatelessWidget {
  const CustomVideoCard(
      {super.key, required this.imageurl, required this.title});
  final String imageurl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
            height: 195, width: double.infinity, fit: BoxFit.cover, imageurl),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: ColorConstance.mainwhite,
                        size: 24,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Remind me',
                        style: TextStyle(
                            color: ColorConstance.mainwhite.withOpacity(.83),
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  SizedBox(width: 45),
                  Column(
                    children: [
                      Icon(
                        Icons.share,
                        color: ColorConstance.mainwhite,
                        size: 24,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(
                            color: ColorConstance.mainwhite.withOpacity(.83),
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ],
              ),
              Text(
                'Season 1 Coming December 14',
                style: TextStyle(
                    color: ColorConstance.mainwhite.withOpacity(.83),
                    fontWeight: FontWeight.w400,
                    fontSize: 12),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                title,
                style: TextStyle(
                    color: ColorConstance.mainwhite,
                    fontWeight: FontWeight.w700,
                    fontSize: 19),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamu bibendum ut A morbi mi tortor ut felis non accumsan accumsan quis Massa id ut ipsum aliquam  enim non posuere pulvinar diam',
                style: TextStyle(
                    color: ColorConstance.mainwhite.withOpacity(.83),
                    fontWeight: FontWeight.w400,
                    fontSize: 13),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                'Steamy.Soapy.Slow BurnSuspenseful.TeenMystery',
                style: TextStyle(
                    color: ColorConstance.mainwhite,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
              SizedBox(
                height: 17,
              )
            ],
          ),
        )
      ],
    );
  }
}
