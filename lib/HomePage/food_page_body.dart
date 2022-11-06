// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Themes/Colors.dart';
import '../Themes/bigText.dart';
import '../Themes/smallText.dart';
import '../Widgets/dimensions.dart';
import '../Widgets/iconsAndtextWidgets.dart';
import '../utils/menuTittle.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.86);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //---------------------------------------Food pic and review section---------------------------------------------------------------------------------------------------//
          Container(
            //color: Colors.red,
            height: Dimensions.parentContainerHeight,
            child: PageView.builder(
                controller: pageController,
                itemCount: 5,
                itemBuilder: (context, position) {
                  return _buildPageItem(position);
                }),
          ),
          new DotsIndicator(
            dotsCount: 5,
            position: _currPageValue,
            decorator: DotsDecorator(
              activeColor: AppColors.mainColor,
              size: const Size.square(9.0),
              activeSize: Size(Dimensions.width18, Dimensions.height9),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensions.radius5),
              ),
            ),
          ),
          //---------------------------------------Dots Section ends---------------------------------------------------------------------------------------------------//
          SizedBox(height: Dimensions.height30),
          Container(
            margin: EdgeInsets.only(left: Dimensions.width30),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                BigText(text: 'Popular'),
                SizedBox(
                  width: Dimensions.width10,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 3),
                  child: BigText(
                    text: '.',
                    color: Colors.black26,
                  ),
                ),
                SizedBox(
                  width: Dimensions.width10,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 2),
                  child: SmallText(text: 'Food Pairing'),
                ),
              ],
            ),
          ),
          //SizedBox(height: Dimensions.height9),
          //--=-=-=-=-=-=-=-=-=-=-=-=-=-=---Recommendation container--------------------------------------------------------------------------------------------------------------------//
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 15,
            itemBuilder: (context, index) {
              return Container(
                //color: HexColor('#f1f2e6'),
                margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    bottom: Dimensions.height10),
                child: Row(
                  children: [
                    //image section/container
                    Container(
                      //margin: EdgeInsets.only(bottom: Dimensions.height10),
                      width: Dimensions.listViewImg,
                      height: Dimensions.listViewImg,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                        color: Color.fromARGB(255, 137, 190, 234),
                        image: DecorationImage(
                          image: AssetImage('assets/images/pizza.webp'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    //=====================Text Container================================================================
                    Expanded(
                      child: Container(
                        height: Dimensions.listViewTextContainer,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(Dimensions.radius20),
                            bottomRight: Radius.circular(Dimensions.radius20),
                          ),
                          //color: Color.fromARGB(255, 243, 225, 225),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: Dimensions.width10,
                              right: Dimensions.width10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BigText(text: 'Nutritious fruit meal in India'),
                              SizedBox(height: Dimensions.height10),
                              SmallText(text: 'With Indian characteristics'),
                              SizedBox(height: Dimensions.height10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  IconAndText(
                                    icon: Icons.circle_sharp,
                                    text: 'Normal',
                                    color: AppColors.textColor,
                                    iconColor: AppColors.iconColor1,
                                  ),
                                  //SizedBox(width: 15),
                                  IconAndText(
                                    icon: Icons.location_pin,
                                    text: '1.7 km',
                                    color: AppColors.textColor,
                                    iconColor: AppColors.mainColor,
                                  ),
                                  //SizedBox(width: 15),
                                  IconAndText(
                                    icon: Icons.access_time_rounded,
                                    text: 'Decent',
                                    color: AppColors.textColor,
                                    iconColor: AppColors.iconColor2,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, currTrans, 0);
    }  else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 0);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(
                left: Dimensions.width15, right: Dimensions.width15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius30),
              //color: index.isEven ? Color(0xFF69c5df) : HexColor('#9d7dd4'),
              // ignore: prefer_const_constructors
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/food_image.png',
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainers,
              margin: EdgeInsets.only(
                  left: Dimensions.width30,
                  right: Dimensions.width30,
                  bottom: Dimensions.width30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Color.fromARGB(255, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(0, 5),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, 0),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(5, 0),
                  ),
                ],
                // ignore: prefer_const_constructors
              ),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height15,
                    left: Dimensions.height15,
                    right: Dimensions.height15),
                child: MenuTittle(
                  text: 'Burger',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
