// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class SearchBarWi extends StatelessWidget {
  const SearchBarWi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                            width: double.infinity,
                            // color: Colors.black,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: cgrey),
                            child: TextField(
                              cursorColor: cwhite,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: TextStyle(color: Colors.white38),
                                prefixIcon: Icon(
                                  CupertinoIcons.search,
                                  color: cwhite,
                                ),
                                suffixIcon: Icon(CupertinoIcons.mic_fill,color: cred.withOpacity(.7)),
                                border: InputBorder.none,
                              ),
                            ),
                          );
  }
}
