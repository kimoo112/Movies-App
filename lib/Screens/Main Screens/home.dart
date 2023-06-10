// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/Constants/colors.dart';
import 'package:movies/Widgets/searchBar.dart';
import 'package:lottie/lottie.dart';
import '../../Widgets/filterCon.dart';
import '../../Widgets/movieCon.dart';


class Home extends StatelessWidget {
  const Home({Key? key, required this.userName}) : super(key: key);
  final userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: cmain,
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
                          "Hello $userName !",
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
                    Lottie.asset('assets/images/Home.json', width: 100),
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
                    FilterCon(
                      text: "Top IMDB",
                      icon: CupertinoIcons.star_fill,
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
                    children: [
                      MovieCon(),
                      MovieCon(
                        image: "assets/images/LaCasa poster2.webp",
                      ),
                      MovieCon(image: "assets/images/LaCasa poster3.webp"),
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
