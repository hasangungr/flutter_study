import 'package:flutter/material.dart';
import 'package:flutter_study/alacarte_reservation/controller/selected_day_controller.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DateTimePickerWidget extends StatelessWidget {
  const DateTimePickerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTimePickerController dateTimePickerController =
        Get.put(DateTimePickerController());
    return Obx(() {
      String date = DateFormat("yyyy-MM-dd")
          .format(dateTimePickerController.selectedDay.value);

      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(date),
          IconButton(
            onPressed: () {
              dateTimePickerController.choosedDateTime();
            },
            icon: const Icon(Icons.calendar_month),
          )
        ],
      );
    });
  }
}
