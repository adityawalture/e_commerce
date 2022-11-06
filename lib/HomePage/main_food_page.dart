// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:e_commerce/Themes/smallText.dart';
import 'package:flutter/material.dart';

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import '../../Themes/Colors.dart';
import '../../Themes/bigText.dart';
import '../Widgets/dimensions.dart';
import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print('Current screen height is ' +
        MediaQuery.of(context).size.height.toString());
    print('Current screen width is ' +
        MediaQuery.of(context).size.width.toString());
    return Scaffold(
      body: Column(
        children: [
          // ignore: avoid_unnecessary_containers
          Container(
            child: Container(
              margin: EdgeInsets.only(
                  top: Dimensions.height62, bottom: Dimensions.height15),
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: "Aurangabad",
                        color: AppColors.mainColor,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "Maharashtra",
                            color: Colors.black54,
                          ),
                          Icon(Icons.arrow_drop_down_outlined)
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.width45,
                      height: Dimensions.height45,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        color: AppColors.mainColor,
                      ),
                      child: Icon(
                        Icons.search_outlined,
                        color: Colors.white,
                        size: Dimensions.iconSize24,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: FoodPageBody(),
            ),
          ),
        ],
      ),
    );
  }
}
