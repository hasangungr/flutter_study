import 'package:flutter/material.dart';
import 'package:flutter_study/hotel_pages/detail_view.dart';
import 'package:flutter_study/hotel_pages/select_room.dart';
import 'package:flutter_study/restaurant_app/view/home_view.dart';
import 'package:flutter_study/v_node_alacarte_design/view/home_view.dart';

import 'package:get/get.dart';

import 'restaurant_app/view/zoom_home__view.dart';

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
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.grey.shade300,
          ),
          appBarTheme: AppBarTheme(
            actionsIconTheme: IconThemeData(size: 24),
          ),
       
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            primary: Theme.of(context).primaryColor,
          )),
         // primarySwatch: Colors.green,
          visualDensity: VisualDensity.comfortable),
      home: SelectRoomView(),
      //routes: ,
      //initialRoute: Routes.getHomeRoute(),
      //getPages: Routes.routes,
    );
  }
}
