import 'package:flutter/material.dart';
import 'package:flutter_study/restaurant_app/field/container_field.dart';
import 'package:get/get.dart';

class RestaurantInfoBottomSheet extends StatelessWidget {
  const RestaurantInfoBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> restaurantInfoList = List.generate(
      8,
      (index) => RestaurantInfoContanier(
            doubleHeight: 11,
            doubleWidth: 1,
            infoNumber: (index + 8).toString(),
            infoText: "Restaurant Info",
          ));
    return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.horizontal(
            left: Radius.circular(12), right: Radius.circular(12))),
    height: Get.height / 1.5,
    child: ListView(
      children: restaurantInfoList,
    ));
  }
}