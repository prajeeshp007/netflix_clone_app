import 'package:flutter/material.dart';
import 'package:netflix_clone_app/utils/constance/color_constance.dart';

class UsernameCard extends StatelessWidget {
  const UsernameCard(
      {super.key,
      required this.iamgepath,
      required this.username,
      this.oncardpressed,
      this.height,
      this.width});
  final String iamgepath;
  final String username;
  final void Function()? oncardpressed;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: oncardpressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(height: height, width: width, iamgepath),
          SizedBox(height: 2),
          Text(
            username,
            style: TextStyle(color: ColorConstance.mainwhite, fontSize: 13.25),
          )
        ],
      ),
    );
  }
}
