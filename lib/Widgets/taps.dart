
// // ignore_for_file: sized_box_for_whitespace

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:movies/Constants/size.dart';

// import '../Constants/colors.dart';

// class Screen extends StatelessWidget {
//   const Screen({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: TabBar(
//                     controller:taps ,
//                     indicatorColor: cred,
//                     labelColor: cred,
//                     unselectedLabelColor: cwhite.withOpacity(.5),
//                     tabs: [
//                       Tab(text: "trend",icon: Icon(CupertinoIcons.text_cursor),),
//                       Tab(text: "last",icon: Icon(CupertinoIcons.text_cursor),),
//                       Tab(text: "no",icon: Icon(CupertinoIcons.text_cursor),),
//                     ]
                  
//                   ),
    
//                 Container(
//                   height: KHieght(context)*.5,
//                   child: TabBarView(
//                     controller:taps ,
                    
//                     children: [
//                                Center(child: Text("trend",style: const TextStyle(color: cwhite, fontSize: 25),)),
//                                Center(child: Text("last",style: const TextStyle(color: cwhite, fontSize: 25),)),
//                                Center(child: Text("no",style: const TextStyle(color: cwhite, fontSize: 25),)),
//                   ]),
//                 )
//   ),
//   }
// }
