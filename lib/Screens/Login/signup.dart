// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unused_import, sort_child_properties_last, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/Screens/Base/base.dart';
import '../../Constants/colors.dart';
import '../../Constants/navigate.dart';
import 'Signin.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool showpassword = true;
  TextEditingController usernameCT = TextEditingController();
  String userName = '';

  @override
void initState() {
  super.initState();
  usernameCT.addListener(updateUserName);
}

void updateUserName() {
  setState(() {
    userName = usernameCT.text;
  });
}

@override
void dispose() {
  usernameCT.dispose();
  super.dispose();
}
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
                decoration:  BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/Background.jpg',
                    ),
                    fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.87), BlendMode.darken),
                  ),
                ),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 200,
                    height: 250,
                    child: Image.asset("assets/images/popcorn 2.png",width: 10),
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
                      keyboardType: TextInputType.emailAddress,
                      controller: usernameCT,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          hintText: "Username",
                          hintStyle: TextStyle(color: Colors.white38),
                          prefixIcon: Icon(
                           CupertinoIcons.person_crop_circle_badge_checkmark,
                            color: Color(0xFFF44336),
                          ),
                          border: InputBorder.none),
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
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.white38),
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: Color(0xFFF44336),
                          ),
                          border: InputBorder.none),
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
                      textInputAction: TextInputAction.next,
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
                          hintText: "Confirm Password",
                          hintStyle: TextStyle(color: Colors.white38),
                          prefixIcon: Icon(
                            Icons.lock_clock_outlined,
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
                    onTap: () =>                       navigateToPR(TheBase(userName: userName,), context),

                    child: Container(
                      width: 300,
                      height: 50,
                      child: Center(
                          child: Text(
                        "SIGN UP",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            fontSize: 22),
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
                      Text("Do you have an account?",
                          style: TextStyle(color: cwhite, fontSize: 15)),
                      TextButton(
                          onPressed: () {
                            //Navigate Kimo To a Sign Up Screen
                            //Navigate Kimo To a Sign Up Screen
                            Navigator.pushReplacement(
                              context,
                              PageRouteBuilder(
                                transitionDuration: Duration(milliseconds: 500),
                                transitionsBuilder: (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation,
                                    Widget child) {
                                  return FadeTransition(
                                    opacity: animation,
                                    child: child,
                                  );
                                },
                                pageBuilder: (BuildContext context,
                                    Animation<double> animation,
                                    Animation<double> secondaryAnimation) {
                                  return SignInScreen();
                                },
                              ),
                            );
                          },
                          child: Text("Sign In",
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
