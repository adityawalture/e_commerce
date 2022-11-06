// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/Themes/smallText.dart';
import 'package:e_commerce/Widgets/dimensions.dart';
import 'package:flutter/material.dart';

class IconAndText extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  final Color iconColor;

  const IconAndText(
      {Key? key,
      required this.icon,
      required this.text,
      required this.color,
      required this.iconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: Dimensions.iconSize24,
        ),
        SizedBox(width: 5),
        SmallText(text: text, color: color),
      ],
    );
  }
}
