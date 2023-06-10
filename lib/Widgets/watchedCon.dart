// ignore_for_file: sized_box_for_whitespace, file_names, unnecessary_import, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/Constants/colors.dart';
import 'package:movies/Widgets/stars.dart';

class WatchedCon extends StatelessWidget {
  const WatchedCon({Key? key, this.image="assets/images/money-heist-1 3 (1).png", this.wName="Money Heist", this.wType="Action war", this.wMint=120}) : super(key: key);
  final image;
  final wName;
  final wType;
  final wMint;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(25, 11, 20, 22),
              width: 150,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(image)),
              SizedBox(width: 15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(wName,
                  style: const TextStyle(color: cwhite, fontSize: 20)),
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
    );
  }
}
