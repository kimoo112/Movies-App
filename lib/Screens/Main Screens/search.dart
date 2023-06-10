// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:movies/Constants/size.dart';
import 'package:movies/Widgets/searchBar.dart';
import '../../Constants/colors.dart';

class SearchScreen extends StatelessWidget {
const SearchScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: cmain,

      appBar: AppBar(
            backgroundColor: Colors.transparent,
          title: Text("SEARCH",style: TextStyle(color: cwhite,fontSize: 25),),
          centerTitle: true,
          elevation: 0,
          scrolledUnderElevation: .5,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(22.0),
            
            child: SearchBarWi(),
          ),
          SizedBox(height: KHieght(context)*.01,),
        ],
      ),
    );
  }
}