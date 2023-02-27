import 'package:flutter/material.dart';
import 'package:flutter_study/restaurant_design/binding/get_dependecies.dart';
import 'package:flutter_study/restaurant_design/view/restaurant_home_view.dart';

import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
  initialBinding: RestaurantBinding(),
    home: const RestaurantHomeView(),

    );
  }
}
