// ignore_for_file: unnecessary_import, file_names, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Constants/colors.dart';

class TextFieldWi extends StatelessWidget {
  const TextFieldWi({
    Key? key,
    required this.controller,
    required this.formKey,
    required this.errorName,
    required this.hintText,
    required this.icon,
    required this.icon2, required this.type, this.password =false,
  }) : super(key: key);
  final controller;
  final formKey;
  final hintText;
  final icon;
  final Widget icon2;
  final errorName;
  final bool password;
 final TextInputType type;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(33, 0, 40, 15),
      child: Form(
        key: formKey,
        child: TextFormField(
          scrollPadding: EdgeInsets.all(55),
          cursorColor: cred,
          autofocus: false,
          validator: (value) {
            if (value!.isEmpty) {
              return errorName;
            } else {
              return null;
            }
          },
          style: TextStyle(
            color: Colors.white,
          ),
          keyboardType: type,
          controller: controller,
          obscureText: password,
          textInputAction: TextInputAction.next,
          decoration: InputDecoration(
            disabledBorder: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: cwhite.withOpacity(.7))),
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintStyle: TextStyle(color: Colors.white38),
            fillColor: cgrey,
            suffixIcon: icon2,
            filled: true,
            prefixIcon: Icon(
              icon,
              color: Color(0xFFF44336),
            ),
          ),
        ),
      ),
    );
  }
}
