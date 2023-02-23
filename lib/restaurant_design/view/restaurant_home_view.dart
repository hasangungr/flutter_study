import 'package:flutter/material.dart';
import 'package:flutter_study/restaurant_design/controller/restaurant_view_controller.dart';
import 'package:flutter_study/restaurant_design/view/restaurant_view/indoor_view.dart';
import 'package:flutter_study/restaurant_design/view/restaurant_view/outdoor_view.dart';
import 'package:get/get.dart';

class RestaurantHomeView extends GetView<RestaurantViewController> {
  RestaurantHomeView({Key? key}) : super(key: key);
  // RestaurantViewController controller = Get.find();

  @override
  Widget build(BuildContext context) {//controller dispose edilecek
    return Obx(
      () => Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex.value,
            children: const [
              IndoorView(),
              OutdoorView(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex.value,
          items: [
            _bottomNavigationBarItem(Icons.home, "Indoor"),
            _bottomNavigationBarItem(Icons.sunny, "Outdoor"),
          ],
        ),
      ),
    );
  }

  _bottomNavigationBarItem(IconData itemIcon, String itemLabel) {
    return BottomNavigationBarItem(icon: Icon(itemIcon), label: itemLabel);
  }
}
