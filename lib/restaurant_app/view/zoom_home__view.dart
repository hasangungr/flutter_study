import 'package:flutter/material.dart';
import 'package:flutter_study/restaurant_app/view/main_test.dart';
import 'package:flutter_study/restaurant_app/view/menu_test.dart';
import 'package:flutter_study/restaurant_app/view/restaurant_home_view.dart';

import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class Test extends StatelessWidget {
   Test({super.key});
  final zoomDrawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {

     return ZoomDrawer(
      controller: zoomDrawerController,
        menuScreen: MenuTest(),
        mainScreen: const MainTest(),
      showShadow: true,
      style: DrawerStyle.defaultStyle,
      angle: 0.0,
      isRtl: false,
      slideWidth: Get.width /1.1,
    );
  }
}
