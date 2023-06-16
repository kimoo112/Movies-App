// ignore_for_file: file_names, unnecessary_import, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:movies/Constants/colors.dart';

class AnimeStars extends StatefulWidget {
  const AnimeStars({super.key, this.starsValue=3.5});
  final starsValue;

  @override
  State<AnimeStars> createState() => _AnimeStarsState();
}

class _AnimeStarsState extends State<AnimeStars> {
  var value ;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingStars(
          value: widget.starsValue,
          onValueChanged: (v) {
            //
            setState(() {
              value = v;
            });
          },
          starBuilder: (index, color) => Icon(
            CupertinoIcons.star_fill,
            size: 25,
            color: color,
          ),
          starCount: 5,
          starSize: 25,
          valueLabelColor: const Color(0xff9b9b9b),
          valueLabelTextStyle: const TextStyle(
              color: cmain,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontSize: 12.0),
          valueLabelRadius: 10,
          maxValue: 5,
          starSpacing: 2,
          maxValueVisibility: false,
          valueLabelVisibility: true,
          animationDuration: Duration(milliseconds: 1000),
          valueLabelPadding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
          valueLabelMargin: const EdgeInsets.only(right: 8),
          starOffColor: Color.fromARGB(255, 69, 69, 70),
          starColor: corange,
        ),
      ],
    );
  }
}
