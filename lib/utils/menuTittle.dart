import 'package:flutter/material.dart';

import '../Themes/Colors.dart';
import '../Themes/bigText.dart';
import '../Themes/smallText.dart';
import '../Widgets/dimensions.dart';
import '../Widgets/iconsAndtextWidgets.dart';

class MenuTittle extends StatelessWidget {
  final String text;
  const MenuTittle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(height: Dimensions.height10),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => const Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: 17,
                ),
              ),
            ),
            const SizedBox(width: 10),
            SmallText(text: '4.5'),
            const SizedBox(width: 10),
            SmallText(text: '1287'),
            const SizedBox(width: 3),
            SmallText(text: 'comments'),
          ],
        ),
        SizedBox(height: Dimensions.height20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const IconAndText(
              icon: Icons.circle_sharp,
              text: 'Normal',
              color: AppColors.textColor,
              iconColor: AppColors.iconColor1,
            ),
            //SizedBox(width: 15),
            const IconAndText(
              icon: Icons.location_pin,
              text: '1.7 km',
              color: AppColors.textColor,
              iconColor: AppColors.mainColor,
            ),
            //SizedBox(width: 15),
            const IconAndText(
              icon: Icons.access_time_rounded,
              text: 'Decent',
              color: AppColors.textColor,
              iconColor: AppColors.iconColor2,
            ),
          ],
        ),
      ],
    );
  }
}
