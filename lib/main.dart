// ignore_for_file: prefer_const_constructors, unused_import, duplicate_ignore

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:movies/Screens/Base/base.dart';

import 'Screens/Login/login.dart';
import 'Screens/Splash/splashScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       theme: ThemeData(
          fontFamily: 'Poppins',
          textTheme: const TextTheme(
            titleLarge: TextStyle(
              letterSpacing: 1,
            ),
          )),
      title: 'Flutter Demo',
   
      home:
      // SignUpScreen() 
       SplashScreen(duration: 3, nextScreen: const LoginScreen()),
    );
  }
}

