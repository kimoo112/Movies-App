// ignore_for_file: unnecessary_import, file_names, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/Constants/colors.dart';

class EpisodesCon extends StatelessWidget {
  const EpisodesCon(
      {Key? key,
      required this.episode,
      required this.episodeName,
      required this.episodeNum})
      : super(key: key);
  final episode;
  final episodeName;
  final episodeNum;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 20, 10),
      child: Container(
        width: 120,
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(
                episode,
              ),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.darken,
              ),
            )),
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Episode $episodeNum",
                style: const TextStyle(color: cwhite, fontSize: 10.5),
              ),
              Text(
                episodeName,
                style: const TextStyle(color: cwhite, fontSize: 10.5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
