import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_study/restaurant_app/field/listile_widget_field.dart';
import 'package:flutter_study/restaurant_app/view/restaurant_home_view.dart';
import 'package:flutter_study/restaurant_app/controller/date_time_controller.dart';
import 'package:flutter_study/restaurant_app/view/zoom_home__view.dart';

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
        (index) => Container(
              // decoration: BoxDecoration(
              //         border: Border.all(width: 1.5),
              //         borderRadius: BorderRadius.all(Radius.circular(12))),
              margin: EdgeInsets.symmetric(vertical: 8),
              height: deviceHeight / 12,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey.shade300,
                ),
                onPressed: () {
                  Get.to(Test());
                },
                child: RestaurantListTile(
                    titleText: "Restaurant Name",
                    restaurantCapacity: (10 * index).toString(),
                    restaurantDesc:
                        "Restaurant Desc Restaurant Desc Restaurant Desc"),
              ),
            ));

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DatePicker(DateTime.now(),
                    initialSelectedDate: DateTime.now(),
                    selectedTextColor: Colors.white,
                    selectionColor: Colors.grey, onDateChange: (selectedDate) {
                  dateTimeController.choosedDateTime(selectedDate);
                })
              ],
            ),
            Expanded(child: ListView(children: restaurantList)),
          ],
        ),
        // appBar: PreferredSize(
        //   preferredSize: Size.fromHeight(deviceHeight / 8),
        //   child: AppBar(
        //     centerTitle: true,
        //     backgroundColor: Colors.white70,
        //     title: Column(
        //         crossAxisAlignment: CrossAxisAlignment.end,
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: <Widget>[
        //           DatePicker(DateTime.now(),
        //               initialSelectedDate: DateTime.now(),
        //               selectedTextColor: Colors.white,
        //               selectionColor: Colors.grey,
        //               onDateChange: (selectedDate) {
        //             dateTimeController.choosedDateTime(selectedDate);
        //           })
        //         ]),
        //   ),
        // ),
      ),
    );
  }
}
