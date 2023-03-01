import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_study/restaurant_app/field/listile_widget_field.dart';
import 'package:flutter_study/restaurant_app/view/restaurant_home_view.dart';
import 'package:flutter_study/restaurant_app/controller/date_time_controller.dart';
import 'package:flutter_study/restaurant_app/field/date_time_picker_field.dart';

import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTimeController dateTimeController = Get.put(DateTimeController());
    double deviceHeight = Get.height;
    double deviceWidth = Get.width;

    List<Widget> restaurantList = List.generate(
        18,
        (index) => GestureDetector(
              onTap: () {
                Get.to(RestaurantHomeView());
              },
              child: Container(
               // padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    border: Border.all(width: 1.5),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                margin: EdgeInsets.all(8),
                height: deviceHeight / 12,
                child: RestaurantListTile(
                    titleText: "Restaurant Name",
                    restaurantCapacity: (10 * index).toString(),
                    restaurantDesc:
                        "Restaurant Desc Restaurant Desc Restaurant Desc"),
              ),
            ));

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          title: DateTimePickerField(dateController: dateTimeController),
        ),
        body: ListView(children: restaurantList),
      ),
    );
  }
}
