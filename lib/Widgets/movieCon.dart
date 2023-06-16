// ignore_for_file: file_names, prefer_const_constructors, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../Constants/colors.dart';
import '../Screens/Details/details.dart';

class MovieCon extends StatelessWidget {
  const MovieCon(
      {Key? key,
      required this.episode1,
      required this.episode2,
      required this.episode3,
      required this.episode1num,
      required this.episode2num,
      required this.episode3num,
      required this.image,
      required this.name,
      this.stars = "3",
      required this.type,
      required this.plot,
      required this.detailsImg})
      : super(key: key);
  final image;
  final name;
  final stars;
  final type;
  final episode1, episode1num;
  final episode2, episode2num;
  final episode3, episode3num;
  final plot;
  final detailsImg;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              image: detailsImg,
              stars:stars ,
              plot: plot,
              type: type,
              episode1: episode1,
              episode2: episode2,
              episode3: episode3,
              episode1num: episode1num,
              episode2num: episode2num,
              episode3num: episode3num,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        width: 209,
        height: 370,
        decoration: BoxDecoration(
          
            image: DecorationImage(
                image: AssetImage(image),
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2),
                  BlendMode.darken,
                ),
                fit: BoxFit.cover),
               
                  
                boxShadow: [
                  BoxShadow(
                    color: cblack,
                    blurRadius: 11,
offset: Offset(4, 2),
spreadRadius: 1
                  )
                ],
            borderRadius: BorderRadius.circular(33)),
      ),
    );
  }
}
