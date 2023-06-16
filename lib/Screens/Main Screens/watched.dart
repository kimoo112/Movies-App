// ignore_for_file: unnecessary_import, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/Constants/navigate.dart';

import '../../Constants/colors.dart';
import '../../Models/watched_model.dart';
import '../../Widgets/watchedCon.dart';
import '../Details/details.dart';

class WatchedScreen extends StatelessWidget {
  const WatchedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cmain,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "WATCHED",
          style: TextStyle(color: cwhite, fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return WatchedCon(
                detailsImage: WatchedList[index].detailsImg,
                plot: WatchedList[index].plot,
                image: WatchedList[index].image,
                wName: WatchedList[index].name,
                wType: WatchedList[index].type,
                wMint: 140,
                episode1: WatchedList[index].episode1,
                episode1num: WatchedList[index].episode1num,
                episode2: WatchedList[index].episode2,
                episode2num: WatchedList[index].episode2num,
                episode3: WatchedList[index].episode3,
                episode3num: WatchedList[index].episode3num, stars: WatchedList[index].stars,
              );
            },
            itemCount: WatchedList.length,
          ),
        ],
      ),
    );
  }
}
