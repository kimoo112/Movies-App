// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables, unused_import, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:movies/Constants/colors.dart';
import 'package:movies/Constants/navigate.dart';
import 'package:movies/Constants/size.dart';
import 'package:movies/Constants/theme.dart';
import 'package:movies/Models/homeModel.dart';
import 'package:movies/Screens/Login/signin.dart';
import 'package:movies/Screens/Main%20Screens/profile.dart';
import 'package:movies/Widgets/searchBar.dart';
import 'package:lottie/lottie.dart';
import '../../Widgets/filterCon.dart';
import '../../Widgets/movieCon.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.userName}) : super(key: key);
  final userName;

  @override
  State<Home> createState() => _HomeState();
}

late TabController taps;

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    taps = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    taps.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.isDark?cmain:cmain2,
      extendBodyBehindAppBar: true,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello ${widget.userName} !",
                          style: const TextStyle(color: cwhite, fontSize: 21),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Check for latest addition.",
                          style: TextStyle(
                              color: cwhite.withOpacity(.5), fontSize: 14),
                        ),
                      ],
                    ),
                    GestureDetector(
                        onTap: () {
                          // GetTo(SignInScreen(), Transition.fadeIn,
                          //     Duration(seconds: 2), context);
                          // getTo(SignInScreen(), Transition.fadeIn, 2,context);
                          // Get.to(SignInScreen(),
                          //     transition: Transition.fadeIn,
                          //     duration: Duration(seconds: 2));
                          setState(() {
                            AppTheme.isDark = !AppTheme.isDark;
                          });
                        },
                        child: Lottie.asset('assets/images/Home.json',
                            width: 100)),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                SearchBarWi(),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Filters",
                  style: const TextStyle(
                      color: cwhite, fontSize: 20, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FilterCon(
                      text: "Genre",
                      icon: CupertinoIcons.collections,
                    ),
                    GestureDetector(
                      onTap: () {
                         setState(() {
                            AppTheme.isDark = !AppTheme.isDark;
                          });
                      },
                      child: FilterCon(
                        text: "Top IMDB",
                        icon: CupertinoIcons.star_fill,
                      ),
                    ),
                    FilterCon(
                      text: "Language",
                      icon: CupertinoIcons.globe,
                    ),
                    FilterCon(
                      text: "Watched",
                      icon: CupertinoIcons.film,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      "Featured ",
                      style: const TextStyle(
                          color: cwhite,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          letterSpacing: .2),
                    ),
                    Text(
                      "Series ",
                      style: const TextStyle(
                          color: cwhite,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          letterSpacing: .4),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (int index = 0; index < HomeList.length; index++)
                        MovieCon(
                          detailsImg: HomeList[index].detailsImg,
                          name: HomeList[index].type,
                          stars: HomeList[index].stars,
                          image: HomeList[index].image,
                          plot: HomeList[index].plot,
                          type: HomeList[index].type,
                          episode1: HomeList[index].episode1,
                          episode2: HomeList[index].episode2,
                          episode3: HomeList[index].episode3,
                          episode1num: HomeList[index].episode1num,
                          episode2num: HomeList[index].episode2num,
                          episode3num: HomeList[index].episode3num,
                        ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
