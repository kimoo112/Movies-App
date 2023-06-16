// ignore_for_file: prefer_const_constructors, unused_import, file_names, sized_box_for_whitespace, non_constant_identifier_names

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:movies/Constants/Size.dart';
import 'package:movies/Screens/Base/base.dart';
import 'package:movies/Screens/Login/signup.dart';

import '../../Constants/colors.dart';
import '../../Constants/navigate.dart';
import '../../Widgets/textField.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool showpassword = true;
  String userName = "Kimo";
  TextEditingController passwordCT = TextEditingController();
  TextEditingController emailCT = TextEditingController();
  final passwordKey = GlobalKey<FormState>();
  final emailKey = GlobalKey<FormState>();

  final snackBar = SnackBar(
    behavior: SnackBarBehavior.fixed,
    elevation: 0,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      color: credd,
      title: 'Invalid Input',
      message:
          'Please check your email and password , If You dont have and account you can signup',
      contentType: ContentType.warning,
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cmain,
      body: Stack(
        children: [
          Container(
            width: KWidth(context),
            height: KHieght(context),
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
                  TextFieldWi(
                    controller: emailCT,
                    icon2: Container(
                      width: 0,
                    ),
                    errorName: "Enter Your Email",
                    formKey: emailKey,
                    hintText: "Email",
                    icon: CupertinoIcons.mail_solid,
                    type: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFieldWi(
                    controller: passwordCT,
                    icon2: IconButton(
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
                    errorName: "Enter Your Password",
                    formKey: passwordKey,
                    hintText: "Password",
                    password: showpassword,
                    icon: CupertinoIcons.lock_fill,
                    type: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  AnimatedButton(
                    width: 280,
                    text: 'SIGN UP',
                    borderRadius: 15,
                    selectedGradientColor: LinearGradient(
                      colors: [
                        cwhite,
                        cwhitee,
                      ],
                    ),
                    selectedTextColor: cred,
                    selectedBackgroundColor: cwhite,
                    backgroundColor: cred,
                    animationDuration: Duration(milliseconds: 1000),
                    transitionType: TransitionType.CENTER_LR_OUT,
                    textStyle: TextStyle(
                        fontSize: 28,
                        color: cwhite,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w300),
                    onPress: () {
                      if (passwordCT.text.toLowerCase() == "kimo12" &&
                          emailCT.text.toLowerCase() == "kimo12@gmail.com") {
                        navigateToPR(
                            TheBase(
                              userName: userName,
                            ),
                            context);
                      } else {
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(snackBar);
                      }
                    },
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
