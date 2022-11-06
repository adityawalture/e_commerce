import 'package:e_commerce/Pages/foodInfo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'HomePage/main_food_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dukaan',
      theme: ThemeData(

          //primarySwatch: Colors.blue,
          ),
      home: FoodInfo(),
    );
  }
}
