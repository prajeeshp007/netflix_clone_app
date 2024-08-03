import 'package:flutter/material.dart';
import 'package:netflix_clone_app/utils/constance/color_constance.dart';

class MoviesCardbuilderWidgets extends StatelessWidget {
  MoviesCardbuilderWidgets(
      {super.key,
      this.iscircle = false,
      this.coustomheight = 161,
      this.coustomwidth = 103,
      required this.customtitle,
      required this.posterimages,
      this.haveinfocard = false});
  final bool iscircle;
  final double coustomheight;
  final double coustomwidth;
  final customtitle;
  final List<String> posterimages;
  final bool haveinfocard;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            customtitle,
            style: TextStyle(
                fontSize: 27,
                color: ColorConstance.mainwhite,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 22,
          ),
          SizedBox(
            height: iscircle ? coustomheight : coustomwidth,
            child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 12),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                      height: coustomheight,
                      width: coustomwidth,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(posterimages[index])),
                          color: Colors.orange,
                          shape:
                              iscircle ? BoxShape.circle : BoxShape.rectangle),
                      child: Visibility(
                        visible: haveinfocard,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 3,
                              color: Colors.grey,
                            ),
                            Container(
                              color: ColorConstance.mainblack,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 7),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(
                                      Icons.info_outline,
                                      color: ColorConstance.mainwhite,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.more_vert,
                                      color: ColorConstance.mainwhite,
                                      size: 20,
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                separatorBuilder: (context, index) => SizedBox(
                      width: 7,
                    ),
                itemCount: posterimages.length),
          )
        ],
      ),
    );
  }
}
