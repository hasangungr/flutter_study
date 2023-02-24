import 'package:flutter/material.dart';
import 'package:flutter_study/alacarte_design/view/restaurant_home_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: RestaurantHomeView(),
    );
  }
}
