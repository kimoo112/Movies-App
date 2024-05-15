// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, unused_import, use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/Constants/size.dart';
import 'package:movies/Widgets/EpisodesCon.dart';
import 'package:movies/Widgets/animeStars.dart';
import 'package:movies/Widgets/stars.dart';
import '../../Constants/colors.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen(
      {required this.plot,
      required this.image,
      required this.type,
      required this.stars,
      required this.episode1,
      required this.episode2,
      required this.episode3,
      required this.episode1num,
      required this.episode2num,
      required this.episode3num});
  final plot;
  final stars;
  final image;
  final episode1, episode1num;
  final episode2, episode2num;
  final episode3, episode3num;
  final type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   centerTitle: true,
      //   elevation: 0,
      //   leading: IconButton(
      //       onPressed: () {
      //         Navigator.of(context).pop();
      //       },
      //       icon: Icon(CupertinoIcons.back)),
      // ),
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      bottomRight: Radius.circular(22),
                    ),
                  ),
                  child: Text('data'),
                )),
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(CupertinoIcons.back, color: Colors.white)),
            expandedHeight: 400,
            scrolledUnderElevation: 0,
            backgroundColor: cred.withOpacity(.3),
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage(image),
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              type,
              style: TextStyle(color: Colors.white),
            ),
          ),
          SliverToBoxAdapter(
            child: bodyView(context),
          ),
        ],
      ),
    );
  }

  Widget bodyView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.sp),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ! thats take a value i will send it from the model
                AnimeStars(
                  starsValue: stars,
                ),
              ],
            ),
            SizedBox(height: 10.sp),
            Text(
              "Episodes",
              style: TextStyle(
                  color: cwhite, fontSize: 20.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 5.sp),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  EpisodesCon(
                    episodeNum: episode1num,
                    episode: episode1,
                    episodeName: "Do You Belive In",
                  ),
                  EpisodesCon(
                    episodeNum: episode2num,
                    episode: episode2,
                    episodeName: "Your Place In Heaven",
                  ),
                  EpisodesCon(
                    episodeNum: episode3num,
                    episode: episode3,
                    episodeName: "The End Of Road",
                  ),
                ],
              ),
            ),
            Text(
              "Plot",
              style: TextStyle(
                  color: cwhite, fontSize: 20.sp, fontWeight: FontWeight.w500),
            ),
            Text(
              plot,
              style: TextStyle(
                  color: cwhite.withOpacity(.5),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  letterSpacing: .11),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }

  Container Background(BuildContext context) {
    return Container(
        width: KWidth(context),
        height: KHieght(context),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(85, 0, 0, 0),
                  cblack.withOpacity(.5),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
            )));
  }
}
