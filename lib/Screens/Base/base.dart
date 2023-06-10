// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_typing_uninitialized_variables, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/Constants/colors.dart';
import '../Main Screens/home.dart';
import '../Main Screens/profile.dart';
import '../Main Screens/search.dart';
import '../Main Screens/watched.dart';


class TheBase extends StatefulWidget {
  const TheBase({Key? key, required this.userName}) : super(key: key);
  final userName;
  @override
  State<TheBase> createState() => _TheBaseState();
}

class _TheBaseState extends State<TheBase> {
  int kindex = 0;

  late List<Widget> KPages;
  @override
  void initState() {
    super.initState();
    KPages = [
      Home(userName: widget.userName),
      WatchedScreen(),
      SearchScreen(),
      ProfileScreen(userName: widget.userName,),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cgreen,
      body: KPages.elementAt(kindex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: cblack,
        type: BottomNavigationBarType.fixed,
        elevation: 0.0,
        unselectedItemColor: cgrey,
        showUnselectedLabels: false,
        selectedItemColor: cred,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.play_circle),
            label: "Play",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_fill),
            label: "Profile",
          ),
        ],
        currentIndex: kindex,
        onTap: (index) {
          setState(() {
            kindex = index;
          });
        },
      ),
    );
  }
}
