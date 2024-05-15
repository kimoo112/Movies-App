// ignore_for_file: prefer_const_constructors, unused_import, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:movies/Constants/colors.dart';
import 'package:movies/Constants/theme.dart';
// ignore: unused_import
import 'package:movies/Screens/Base/base.dart';
import 'package:movies/Screens/Login/signup.dart';
import 'Screens/Login/login.dart';
import 'Screens/Splash/splashScreen.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                scaffoldBackgroundColor: AppTheme.isDark?cmain:cmain2,
                  fontFamily: 'Poppins',
                  brightness:
                      AppTheme.isDark ? Brightness.dark : Brightness.light,
                useMaterial3: true,

                  textTheme: const TextTheme(
                    titleLarge: TextStyle(
                      letterSpacing: 1,
                    ),
                  )),
              title: 'Movies App',
              home:
                  // SignUpScreen()
                 
               SplashScreen(duration: 3, nextScreen: const LoginScreen()),
              );
        });
  }
}
