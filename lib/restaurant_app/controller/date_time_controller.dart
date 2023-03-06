import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateTimeController extends GetxController {
  var selectedDay = DateTime.now().obs;

  void choosedDateTime(DateTime choosedDay) async {
    if (choosedDay != null && choosedDay != selectedDay.value) {
      selectedDay.value = choosedDay;
    debugPrint("controller");
    }
    ;

    //  await showDatePicker(
    //     context: Get.context!,

    //     initialDate: DateTime.now(),
    //     firstDate: DateTime.now(),
    //     lastDate: DateTime(2024));

    // if (pickedDate != null && pickedDate != selectedDay.value) {
    //   selectedDay.value = pickedDate;
    // }
    // update();
  }
}
