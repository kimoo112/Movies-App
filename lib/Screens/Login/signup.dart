// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unused_import, sort_child_properties_last, non_constant_identifier_names, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:movies/Constants/Size.dart';
import 'package:movies/Screens/Base/base.dart';

import '../../Constants/colors.dart';
import '../../Constants/navigate.dart';
import '../../Widgets/textField.dart';
import 'Signin.dart';

class SignUpScreen extends StatefulWidget {
  static var passwordCT;

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool showpassword = true;
  TextEditingController usernameCT = TextEditingController();
  TextEditingController emailCT = TextEditingController();
  TextEditingController passwordCT = TextEditingController();
  TextEditingController conPasswordCT = TextEditingController();
  final userNameKey = GlobalKey<FormState>();
  final emailKey = GlobalKey<FormState>();
  final passwordKey = GlobalKey<FormState>();
  final conPasswordKey = GlobalKey<FormState>();

  String userName = '';

  final snackBar = SnackBar(
    /// need to set following properties for best effect of awesome_snackbar_content
    behavior: SnackBarBehavior.fixed,
    elevation: 0,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: 'THE PASSWORD !',
      color: credd,
      message: 'Make sure the password matches the confirm password!',

      /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
      contentType: ContentType.failure,
    ),
  );

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
    emailCT.dispose();
    passwordCT.dispose();
    conPasswordCT.dispose();
    super.dispose();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  TextFieldWi(
                    icon2: Container(
                      width: 0,
                    ),
                    type: TextInputType.name,
                    controller: usernameCT,
                    errorName: "Enter User Name",
                    formKey: userNameKey,
                    hintText: "Username",
                    icon: CupertinoIcons.person_crop_circle_badge_checkmark,
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
                  TextFieldWi(
                    controller: conPasswordCT,
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
                    errorName: "Confirm Your Password",
                    formKey: conPasswordKey,
                    hintText: "Confirm Password",
                    password: showpassword,
                    icon: CupertinoIcons.lock_open_fill,
                    type: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        if (userNameKey.currentState!.validate() &&
                            emailKey.currentState!.validate() &&
                            passwordKey.currentState!.validate() &&
                            conPasswordKey.currentState!.validate() &&
                            (passwordCT.text == conPasswordCT.text)) {
                          navigateToPR(
                              TheBase(
                                userName: userName,
                              ),
                              context);
                        } else if (passwordCT.text != conPasswordCT.text) {
                          ScaffoldMessenger.of(context)
                            ..hideCurrentSnackBar()
                            ..showSnackBar(snackBar);
                        }
                      },
                      child: AnimatedButton(
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
                        animationDuration: Duration(milliseconds: 700),
                        transitionType: TransitionType.CENTER_LR_OUT,
                        textStyle: TextStyle(
                            fontSize: 28,
                            color: cwhite,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w300),
                        onPress: () {
                          if (userNameKey.currentState!.validate() &&
                              emailKey.currentState!.validate() &&
                              passwordKey.currentState!.validate() &&
                              conPasswordKey.currentState!.validate() &&
                              (passwordCT.text == conPasswordCT.text)) {
                            navigateToPR(
                                TheBase(
                                  userName: userName,
                                ),
                                context);
                          } else if (passwordCT.text != conPasswordCT.text) {
                            ScaffoldMessenger.of(context)
                              ..hideCurrentSnackBar()
                              ..showSnackBar(snackBar);
                          }
                        },
                      )),
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
                            // ScaffoldMessenger.of(context).showSnackBar(snackBar);

                            navigateToPR(SignInScreen(), context);
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
