import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_study/drawer_study/drawer.dart';
import 'package:flutter_study/first_study/drawer.dart';

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
      home: const DrawerStudy(),
    );
  }
}
