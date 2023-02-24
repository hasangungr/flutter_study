import 'package:flutter/material.dart';
import 'package:flutter_study/alacarte_design/controller/selected_day_controller.dart';
import 'package:flutter_study/alacarte_design/widget/restaurant_name_drop_down.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class AppBarField extends AppBar {
  AppBarField({Key? key})
      : super(
          key: key,
          toolbarHeight: Get.height / 15,
          leading: const Icon(Icons.arrow_back),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(18.0),
              bottomRight: Radius.circular(18.0),
            ),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(12)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.blue.shade900,
                  Colors.blue.shade100,
                  Colors.blue.shade900
                ],
              ),
            ),
          ),
          title: Obx(
            () {
              DateTimePickerController dateTimePickerController =
                  Get.put(DateTimePickerController());

              String date = DateFormat("yyyy-MM-dd")
                  .format(dateTimePickerController.selectedDay.value);
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RestaurantDropDownList(),
                  Text(
                    date,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                    onPressed: () {
                      dateTimePickerController.choosedDateTime();
                    },
                    icon: const Icon(Icons.calendar_month),
                  )
                ],
              );
            },
          ),
        );
}
