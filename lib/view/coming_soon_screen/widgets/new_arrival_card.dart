import 'package:flutter/material.dart';
import 'package:netflix_clone_app/utils/constance/color_constance.dart';

class New_arrival_card extends StatelessWidget {
  const New_arrival_card({
    super.key,
    required this.imageurl,
    required this.title,
  });
  final String imageurl;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      color: Color(0xff424242),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(2),
            child: Image.network(
                fit: BoxFit.cover, height: 55, width: 113, imageurl),
          ),
          SizedBox(
            width: 30,
          ),
          Column(
            children: [
              Text(
                'New Arrival',
                style: TextStyle(
                    fontSize: 14,
                    color: ColorConstance.mainwhite,
                    fontWeight: FontWeight.w500),
              ),
              Text(title,
                  style: TextStyle(
                      fontSize: 14,
                      color: ColorConstance.mainwhite.withOpacity(.83),
                      fontWeight: FontWeight.w500)),
              Text('Nov 6',
                  style: TextStyle(
                      fontSize: 10,
                      color: ColorConstance.mainwhite.withOpacity(.48),
                      fontWeight: FontWeight.w500))
            ],
          )
        ],
      ),
    );
  }
}
