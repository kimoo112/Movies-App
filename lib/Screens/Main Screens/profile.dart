// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:movies/Constants/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key,required this.userName}) : super(key: key);
  final userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cmain,
      
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
 SizedBox(height: 40,),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
                              Lottie.asset('assets/images/122222-profile-avatar-for-child.json',width: 90),

              Text(userName,style: const TextStyle(color: 
                    cwhite, fontSize:33),),
            ],
          ),
        ),
 Padding(
   padding: const EdgeInsets.all(8.0),
   child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
     children: [
       Text("1",style: const TextStyle(color: 
                    cwhite, fontSize:20),),
                     Text(" Followers",style:  TextStyle(color: 
                    cwhite.withOpacity(.5), fontSize:15),),
                    SizedBox(
                      width: 20,
                    ),
                    Text("7",style: const TextStyle(color: 
                    cwhite, fontSize:20),),
                     Text(" Following",style:  TextStyle(color: 
                    cwhite.withOpacity(.5), fontSize:15),),
     ],
   ),
 ),
 SizedBox(height: 240,),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
        Text("No recent activity ",style: const TextStyle(color: cwhite, fontSize:22 ),),
  ],
)
          ],
        ),
      ),
    );
  }
}
