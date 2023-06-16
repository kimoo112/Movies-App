// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/Constants/size.dart';
import 'package:movies/Widgets/EpisodesCon.dart';
import 'package:movies/Widgets/stars.dart';
import '../../Constants/colors.dart';

class DetailsContainer extends StatelessWidget {
  const DetailsContainer(
      {Key? key,
      required this.plot,
      required this.image,
      required this.type,
      required this.episode1 ,
      required this.episode2 ,
     required  this.episode3 ,
      required this.episode1num,
      required this.episode2num,
      required this.episode3num})
      : super(key: key);
  final plot;
  final image;
  final episode1, episode1num;
  final episode2, episode2num;
  final episode3, episode3num;
  final type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: 
         IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(CupertinoIcons.back)),
        
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    width: KWidth(context),
                    height: KHieght(context),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          image,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(85, 0, 0, 0),
                                  cblack.withOpacity(.5),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                          ),
                        ))),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
                width: KWidth(context),
                height: KHieght(context)* .45,
                decoration: BoxDecoration(
                    color: cmain,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stars5(
                              KStar5: CupertinoIcons.star,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Episodes",
                          style: const TextStyle(
                              color: cwhite,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 5),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              EpisodesCon(
                                episodeNum: episode1num,
                                episode: episode1,
                                episodeName: "Do You Belive In",
                              ),
                              EpisodesCon(
                                episodeNum: episode2num,
                                episode: episode2,
                                episodeName: "Your Place In Heaven",
                              ),
                              EpisodesCon(
                                episodeNum: episode3num,
                                episode: episode3,
                                episodeName: "The End Of Road",
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "Plot",
                          style: const TextStyle(
                              color: cwhite,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          plot,
                          style: TextStyle(
                              color: cwhite.withOpacity(.5),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              letterSpacing: .11),
                          textAlign: TextAlign.justify,
                        ),
                      ],
                    ),
                  ),
                )),
          ),
          Positioned(
              top: KHieght(context) * .512,
              left: 10,
              child: Text(
                type,
                style: const TextStyle(color: cwhite, fontSize: 15),
              ))
        ],
      ),
    );
  }
}
