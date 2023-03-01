import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateTimeController extends GetxController {
  var selectedDay = DateTime.now().obs;

  void choosedDateTime() async {
    DateTime? pickedDate = await showDatePicker(
        context: Get.context!,
        
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2024));

    if (pickedDate != null && pickedDate != selectedDay.value) {
      selectedDay.value = pickedDate;
    }
    update();
  }
}
