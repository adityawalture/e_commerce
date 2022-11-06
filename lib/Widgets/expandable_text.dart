// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/Themes/Colors.dart';
import 'package:e_commerce/Themes/smallText.dart';
import 'package:e_commerce/Widgets/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({super.key, required this.text});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText = true;
  double textHeight = Dimensions.screenHeight / 5.63;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              color: AppColors.paraColor,
              height: 1.8,
              size: Dimensions.font16,
              text: firstHalf)
          : Column(
              children: [
                SmallText(
                  color: AppColors.paraColor,
                  height: 1.8,
                  size: Dimensions.font16,
                  text: hiddenText
                      // ignore: prefer_interpolation_to_compose_strings
                      ? (firstHalf + "........")
                      : (firstHalf + secondHalf),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallText(
                        text: "Show more",
                        color: AppColors.mainColor,
                      ),
                      Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
