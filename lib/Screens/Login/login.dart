// ignore_for_file: prefer_const_constructors, file_names, unused_import, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, duplicate_ignore, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:movies/Constants/colors.dart';
import 'package:movies/Constants/navigate.dart';
import 'Signin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final KHeight = MediaQuery.of(context).size.height;
    final KWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 22, 22, 22),
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Container(
                width: KWidth,
                height: KHeight,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/OnBoarding.jpeg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(110, 0, 0, 0),
                              cmain,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter),
                      ),
                    ))),
          ),
          Container(
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 450,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Unlimited ",
                        style: TextStyle(
                            fontSize: KWidth * .10843,
                            color: cwhite,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Films",
                        style: TextStyle(
                          fontSize: KWidth * .10843,
                          fontWeight: FontWeight.w600,
                          color: cred,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      navigateToPR(SignInScreen(), context);
                    },
                    child: Container(
                        width: KWidth * .9,
                        height: KHeight * .08,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color: cred),
                        alignment: Alignment.center,
                        child: Text(
                          "Let’s Go",
                          style: TextStyle(color: cwhite, fontSize: 33),
                        )),
                  ),
                  SizedBox(
                    height: 55,
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
