// ignore_for_file: file_names, prefer_const_constructors, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../Constants/colors.dart';

class SearchBarWi extends StatelessWidget {
  const SearchBarWi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // color: Colors.black,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15), color: cgrey),
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
          prefixIcon:
              // Lottie.asset('assets/images/94375-search-new.json',width: 5),
              Icon(
            CupertinoIcons.search,
            color: cwhite,
          ),
          suffixIcon:
              Icon(CupertinoIcons.mic_fill, color: cred.withOpacity(.7)),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: cwhite),
      cursorColor: cred,
      decoration: InputDecoration(
        prefixIcon:
            // Lottie.asset('assets/images/94375-search-new.json',width: 5),
            Icon(
          CupertinoIcons.search,
          color: cwhite,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: cred,width: 1.5),
          borderRadius: BorderRadius.circular(20),
        ),
        suffixIcon:
            Icon(CupertinoIcons.mic_fill, color: cred.withOpacity(.7)),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintText: "Search",
        hintStyle: TextStyle(color: Colors.white38),
        filled: true,
        fillColor: cgrey,
        border: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
