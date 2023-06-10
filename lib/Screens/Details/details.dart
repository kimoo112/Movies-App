// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/Widgets/EpisodesCon.dart';
import 'package:movies/Widgets/stars.dart';
import '../../Constants/colors.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final KHeight = MediaQuery.of(context).size.height;
    final KWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
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
                    width: KWidth,
                    height: KHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/Money_Heist_Part_5_Poster.webp',
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
              width: KWidth,
              height: KHeight * .45,
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
                                const SizedBox(height:10),
              
                    Text("Episodes",style: const TextStyle(color: cwhite, fontSize: 20,fontWeight: FontWeight.w500),),
                                const SizedBox(height:5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:   Row(
                
                
                  children: [
                
                
                        EpisodesCon(episodeNum:2,episode: "assets/images/Do_You_Believe_In_Reincarnation.webp", episodeName: "Do You Belive In",),
                      
                        EpisodesCon(episodeNum:5,episode: "assets/images/Your_Place_In_Heaven.webp", episodeName: "Your Place In Heaven",),
                        EpisodesCon(episodeNum:8,episode: "assets/images/The_End_Of_The_Road.webp", episodeName: "The End Of Road",),
                
                  ],
                ),
              ),
                    Text("Plot",style: const TextStyle(color: cwhite, fontSize: 20,fontWeight: FontWeight.w500),),
                    Text(""""Money Heist" also known as "La Casa de Papel," is a gripping Spanish television series that follows the story of a criminal mastermind known as "The Professor" and his team of eight skilled thieves. Their plan involves taking hostages and locking themselves inside the Royal Mint of Spain, manipulating the police and executing an audacious heist. As the heist unfolds, the series delves into themes of deception, loyalty, and the intricate strategies employed by both the thieves and the authorities. With each episode, the plot thickens, tension rises, and unexpected twists and turns keep viewers on the edge of their seats. "Money Heist" is renowned for its compelling characters, intricate storytelling, and a thrilling cat-and-mouse game between the criminals and the law enforcement agencies.""",
                    style: TextStyle(color: cwhite.withOpacity(.5), fontSize: 12,fontWeight: FontWeight.w500,letterSpacing: .11),
                    textAlign: TextAlign.justify,
                    ),
                         
                  ],
                ),
              ),
            )
            
            ),
            
          ),
         Positioned(
          top: KHeight*.512,
          left: 10,
          child: Text("Action and Crime",style: const TextStyle(color: cwhite, fontSize:15 ),))
         
        ],
      ),
    );
  }
}
