import 'package:flutter/material.dart';
import 'package:flutter_study/alacarte_reservation/route/routes.dart';
import 'package:flutter_study/alacarte_reservation/views/restaurant_view.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //routes: ,
      initialRoute: Routes.getHomeRoute(),
      getPages: Routes.routes,
    );
  }
}
