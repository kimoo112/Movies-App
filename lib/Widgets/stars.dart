// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Constants/colors.dart';

class Stars5 extends StatelessWidget {
  const Stars5({
    super.key,
    this.KStar5 = CupertinoIcons.star_fill,
    this.KStar4 = CupertinoIcons.star_fill,
  });
  final IconData KStar5;
  final IconData KStar4;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Icon(
              CupertinoIcons.star_fill,
              color: corange,
            ),
            Icon(
              CupertinoIcons.star_fill,
              color: corange,
            ),
            Icon(
              CupertinoIcons.star_fill,
              color: corange,
            ),
            Icon(
              KStar4,
              color: corange,
            ),
            Icon(
              KStar5,
              color: corange,
            ),
          ],
        )
      ],
    );
  }
}

class Stars45 extends StatelessWidget {
  const Stars45({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Icon(
              Icons.star,
              color: corange,
            ),
            Icon(
              Icons.star,
              color: corange,
            ),
            Icon(
              Icons.star,
              color: corange,
            ),
            Icon(
              Icons.star,
              color: corange,
            ),
            Icon(
              Icons.star_half,
              color: corange,
            ),
          ],
        )
      ],
    );
  }
}

class Stars4 extends StatelessWidget {
  const Stars4({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Icon(
              Icons.star,
              color: corange,
            ),
            Icon(
              Icons.star,
              color: corange,
            ),
            Icon(
              Icons.star,
              color: corange,
            ),
            Icon(
              Icons.star,
              color: corange,
            ),
            Icon(
              Icons.star_outline,
              color: corange,
            ),
          ],
        )
      ],
    );
  }
}
