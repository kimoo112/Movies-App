// ignore_for_file: sized_box_for_whitespace, file_names, unnecessary_import, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/Constants/colors.dart';
import 'package:movies/Constants/navigate.dart';
import 'package:movies/Screens/Details/details.dart';
import 'package:movies/Widgets/stars.dart';

class WatchedCon extends StatelessWidget {
  const WatchedCon(
      {Key? key,
      this.image = "assets/images/money-heist-1 3 (1).png",
      this.wName = "Money Heist",
      this.wType = "Action war",
      this.wMint = 120,
      required this.detailsImage,
      required this.stars,
      required this.plot,
      required this.episode1,
      required this.episode1num,
      required this.episode2,
      required this.episode2num,
      required this.episode3,
      required this.episode3num})
      : super(key: key);
  final image;
  final stars;
  final episode1, episode1num;
  final episode2, episode2num;
  final episode3, episode3num;
  final wName;
  final wType;
  final wMint;
  final detailsImage;
  final plot;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: GestureDetector(
        onTap: () {
          navigateToP(
              DetailsScreen(
                plot: plot,
                stars: stars,
                image: detailsImage,
                type: wType,
                episode1:episode1,
                episode2:episode2,
                episode3:episode3,
                episode1num: episode1num,
                episode2num: episode2num,
                episode3num: episode3num,
              ),
              context);
        },
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(25, 11, 20, 22),
              width: 150,
              height: 220,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: cblack,
                    blurRadius: 12,
offset: Offset(3, 2),
spreadRadius: 3
                  )
                ],
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  
                  decoration: BoxDecoration(
                  
                  boxShadow: [  BoxShadow(
                    color: cblack.withOpacity(.2),
                    blurRadius: 33,
offset: Offset(3, 2),
spreadRadius: 3
                  ),
                  ]
                  ),
                  child: Text(wName,
                      style: const TextStyle(color: cwhite, fontSize: 20)),
                ),
                const SizedBox(height: 15),
                Stars5(
                  KStar5: CupertinoIcons.star,
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      wType,
                      style: const TextStyle(color: cwhite, fontSize: 15),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.time,
                      color: cwhite,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text("$wMint Minutes",
                        style: const TextStyle(color: cwhite, fontSize: 15)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
