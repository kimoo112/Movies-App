// ignore_for_file: file_names, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../Screens/Details/details.dart';

class MovieCon extends StatelessWidget {
  const MovieCon({Key? key, this.image="assets/images/LaCasa poster.webp"}) : super(key: key);
  final image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailsScreen(),
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
              fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.circular(33)),
      ),
    );
  }
}
