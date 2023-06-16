// ignore_for_file: prefer_const_constructors, unused_import, duplicate_ignore

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:movies/Screens/Base/base.dart';
import 'package:movies/Screens/Login/signup.dart';
import 'Screens/Login/login.dart';
import 'Screens/Splash/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: 'Poppins',
            textTheme: const TextTheme(
              titleLarge: TextStyle(
                letterSpacing: 1,
              ),
            )),
        title: 'Movies App',
        home:
            // SignUpScreen()
            TheBase(
          userName: "Kimo",
        )
        //  SplashScreen(duration: 3, nextScreen: const LoginScreen()),
        );
  }
}
