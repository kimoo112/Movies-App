// ignore_for_file: unnecessary_import, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Constants/colors.dart';
import '../../Widgets/watchedCon.dart';
import '../Details/details.dart';


class WatchedScreen extends StatelessWidget {
const WatchedScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
       backgroundColor: cmain,

      appBar: AppBar(
            backgroundColor: Colors.transparent,
          title: Text("WATCHED",style: TextStyle(color: cwhite,fontSize: 25),),
          centerTitle: true,
          elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
  MaterialPageRoute(
    builder: (context) => DetailsScreen(),
  ),
); 
            },
            child: WatchedCon(wType : "Action and Crime",)),
          WatchedCon(image: "assets/images/lucifer (1).png",wName: "LUCIFER",wType: "Action and Adventure",wMint: 140,),
        ],
      ),
    );
  }
}