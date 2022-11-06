import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageViewContainer = screenHeight /
      3.55; //currentscrenn height is divided by 220(size of the container) and we get 3.9

  static double pageViewTextContainers = screenHeight / 6.5;
  static double parentContainerHeight = screenHeight / 2.4;

//dynamic height for padding and margin
  static double height9 = screenHeight / 86.78;
  static double height10 = screenHeight / 122.4;
  static double height15 = screenHeight / 82;
  static double height20 = screenHeight / 61.2;
  static double height30 = screenHeight / 26.03;
  static double height45 = screenHeight / 17.35;
  static double height62 = screenHeight / 12.59;

//bottom navigation height
  static double navheight120 = screenHeight / 6.5;

//dynamic width for padding and margin
  static double width10 = screenWidth / 39.272;
  static double width18 = screenWidth / 21.81;
  static double width20 = screenWidth / 19.636;
  static double width15 = screenWidth / 26.18;
  static double width30 = screenWidth / 13.09;
  static double width45 = screenWidth / 8.072;

  static double bigText20 = screenHeight / 50.2; //dimensions for bigText
  static double smallText = screenHeight / 62; //dimensions for smallTexts
  static double font26 = screenHeight / 30.04;
  static double font16 = screenHeight / 48.81;
//dimensions for icons
  static double iconSize24 = screenHeight / 32.54;
  static double iconSize16 = screenHeight / 48.81;

  //dimensions for border radius
  static double radius5 = screenHeight / 156.21;
  static double radius20 = screenHeight / 39.05;
  static double radius30 = screenHeight / 26.03;
  static double radius15 = screenHeight / 52.07;

  //dimension for listViewImage
  static double listViewImg = screenWidth / 3.6;
  static double listViewTextContainer = screenWidth / 3.6;

  //dimensions for height of foodinfo page image
  static double foodinfoHeight = screenHeight / 2.23;
}
