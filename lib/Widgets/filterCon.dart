// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:movies/Constants/colors.dart';

class FilterCon extends StatelessWidget {
  const FilterCon({Key? key, required this.icon, required this.text}) : super(key: key);
  final IconData icon;
  final text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 74,
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  color: cgrey
),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,color: cwhite),
          const SizedBox(
            height: 10,
          ),
           Text(text,style: TextStyle(color: cwhite.withOpacity(.7),fontSize: 10),)
        ],
      ),
    );
  }
}
