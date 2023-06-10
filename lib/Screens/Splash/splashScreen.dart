// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:movies/Constants/colors.dart';

class SplashScreen extends StatefulWidget {
  final double duration;
  final Widget nextScreen;

  SplashScreen({
    Key? key,
    required this.duration,
    required this.nextScreen,
  }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: widget.duration.toInt()), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          transitionDuration: Duration(milliseconds: 500),
          transitionsBuilder: (BuildContext context,
              Animation<double> animation,
              Animation<double> secondaryAnimation,
              Widget child) {
            return  FadeTransition(
  opacity: CurvedAnimation(
    parent: animation,
    curve: Curves.easeInOut,
  ),
              child: child,
            );
          },
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return widget.nextScreen;
          },
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:cmain,
      body: Center(
        child: Image.asset('assets/images/popcorn.gif'),
      ),
    );
  }
}