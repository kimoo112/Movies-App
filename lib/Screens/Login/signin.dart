// ignore_for_file: prefer_const_constructors, unused_import, file_names, sized_box_for_whitespace, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/Screens/Base/base.dart';
import 'package:movies/Screens/Login/signup.dart';

import '../../Constants/colors.dart';
import '../../Constants/navigate.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool showpassword = true;
  String userName = "Kimo";

  @override
  Widget build(BuildContext context) {
    final KHeight = MediaQuery.of(context).size.height;
    final KWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: cmain,
      body: Stack(
        children: [
          Container(
            width: KWidth,
            height: KHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/Background.jpg',
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.87), BlendMode.darken),
              ),
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 200,
                    height: 250,
                    child:
                        Image.asset("assets/images/popcorn 2.png", width: 10),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    // color: Colors.black,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15), color: cgrey),
                    child: TextField(
                      cursorColor: cred,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.white38),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: cred,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 300,
                    height: 50,
                    // color: Colors.black,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15), color: cgrey),
                    child: TextField(
                      cursorColor: cred,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      obscureText: showpassword,
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: Colors.white38),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: cred,
                          ),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  showpassword = !showpassword;
                                });
                              },
                              icon: Icon(
                                  showpassword
                                      ? CupertinoIcons.eye_slash
                                      : CupertinoIcons.eye,
                                  color: cred)),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () => navigateToPR(
                        TheBase(
                          userName: userName,
                        ),
                        context),
                    child: Container(
                      width: 300,
                      height: 50,
                      // ignore: sort_child_properties_last
                      child: Center(
                          child: Text(
                        "SIGN IN",
                        style: TextStyle(
                            color: cwhite,
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                            letterSpacing: 1),
                      )),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15), color: cred),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don’t have an account?",
                          style: TextStyle(color: cwhite, fontSize: 15)),
                      TextButton(
                          onPressed: () {
                            //Navigate Kimo To a Sign Up Screen
                            navigateToPR(SignUpScreen(), context);
                          },
                          child: Text("Sign Up",
                              style: TextStyle(color: cred, fontSize: 18)))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
