import 'package:flutter/material.dart';
import 'package:flutter_study/controller_study.dart/binding/get_dependecies.dart';

import 'package:flutter_study/controller_study.dart/counter.dart';
import 'package:flutter_study/controller_study.dart/routes/routes.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApps());
}

class MyApps extends StatelessWidget {
  const MyApps({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialBinding: HomeBinding(),
      initialRoute: Routes.getHomeRoute(),
      getPages: Routes.routes,
    );
  }
}
