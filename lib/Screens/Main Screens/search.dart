// ignore_for_file: prefer_const_constructors, unused_import, unnecessary_import, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:lottie/lottie.dart';
import 'package:movies/Constants/size.dart';
import 'package:movies/Widgets/animeStars.dart';
import 'package:movies/Widgets/searchBar.dart';

import '../../Constants/colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cmain,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "SEARCH",
          
          style: TextStyle(color: cwhite, fontSize: 25),
        ),
        centerTitle: true,
        elevation: 0,
        scrolledUnderElevation: .5,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: SearchTextField(),
          ),
          SizedBox(
            height: KHieght(context) * .27,
          ),
          Lottie.asset("assets/images/98990-search.json", width: 60),
          SizedBox(height: KHieght(context) * .01),
          Text(
            "No Search Results",
            style: const TextStyle(color: cwhite, fontSize: 25),
          ),
          

          // ClipPath(
          //     clipper:  WaveClipperTwo(),

          //     child: Container(
          //       height: 140,
          //       color: Colors.orange,
          //       child: Center(child: Text("WaveClipperTwo(flip: true)")),
          //     ),
          //   ),
        ],
      ),
    );
  }
}
