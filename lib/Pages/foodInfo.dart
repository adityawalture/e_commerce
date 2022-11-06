// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:e_commerce/Widgets/dimensions.dart';
import 'package:e_commerce/Widgets/expandable_text.dart';
import 'package:e_commerce/Widgets/icons.dart';
import 'package:e_commerce/utils/menuTittle.dart';
import 'package:flutter/material.dart';

import '../Themes/Colors.dart';
import '../Themes/bigText.dart';
import '../Themes/smallText.dart';
import '../Widgets/iconsAndtextWidgets.dart';

class FoodInfo extends StatelessWidget {
  const FoodInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Current screen height is ' +
        MediaQuery.of(context).size.height.toString());
    print('Current screen width is ' +
        MediaQuery.of(context).size.width.toString());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.foodinfoHeight,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food_image.png'),
                ),
              ),
            ),
          ),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.foodinfoHeight - 35,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width30,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MenuTittle(
                    text: 'Burger',
                  ),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  BigText(text: "Description"),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableText(
                          text:
                              'A hamburger is a popular meal made by placing a grilled ground beef patty inside a bun. The origins of the hamburger are hotly debated, with conflicting claims made by Wisconsin; Hamburg, Germany; Hamburg, New York; and Athens, Texas, among others. Regardless, it is quite certain that hamburgers have been around since the late nineteenth century.Hamburgers are quickly served and easily eaten. This convenience has made them a favorite food for generations of Americans. If not obtained from a grocer, it is served at diners and fast-food outlets and also sold in stalls at games, beaches, and other outdoor locales.'),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.navheight120,
        padding: EdgeInsets.only(
          top: Dimensions.height30,
          bottom: Dimensions.height30,
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
          color: AppColors.buttonBackgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  BigText(text: '0'),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
              child: BigText(
                text: '\$10 | Add to cart',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
