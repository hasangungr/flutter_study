import 'package:flutter/material.dart';
import 'package:flutter_study/alacarte_reservation/controller/selected_day_controller.dart';
import 'package:flutter_study/alacarte_reservation/route/routes.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TableContainerButton extends ElevatedButton {
  TableContainerButton(
      {Key? key,
      required bool checkIn,
      required String tableNumber,
      required String? reservationReason,
      required String? reservationName,
      void buttonFunction,
      required int index,
      required String? reservDateApi,
      required DateTimePickerController datePickerController})
      : super(
        
            key: key,
            style: ButtonStyle(
              //padding:MaterialStateProperty.all(Edge), ,
              backgroundColor:  MaterialStateProperty.all(
                elevatedButtonColor(reservDateApi, datePickerController),)
              ),
            
            child: TableContainerField(
              checkIn: checkIn,
              reservationName: reservationName,
              reservationReason: reservationReason,
              tableNumber: tableNumber,
            ),
            onPressed: () {
              if (index % 2 == 0) {
                Get.toNamed(Routes.getTableInfos());
              } else {
                Get.toNamed(Routes.getnewReservation());
              }
            });
}

class TableContainerField extends Container {
  TableContainerField({
    Key? key,
    required bool checkIn,
    required String tableNumber,
    required String? reservationReason,
    required String? reservationName,
  }) : super(
            key: key,
            margin: const EdgeInsets.all(12),
            width: Get.width / 6,
            height: Get.height / 12,
            color: checkIn == true ? Colors.red.shade900 : Colors.white,
            child: Column(
              children: [
                Expanded(child: Text(tableNumber)),
                tableIcon(reservationReason),
                Expanded(
                  child: Text(reservationName ?? "Boş"),
                ), //müdür bilgilere bakmalı
                // Expanded(child: Text(roomNumber)),
              ],
            ));
}

Color elevatedButtonColor(
        String? reservDateApi, DateTimePickerController datePickerController) =>
    reservDateApi !=
            DateFormat("yyyy-MM-dd")
                .format(datePickerController.selectedDay.value)
        ? Colors.green
        : Colors.red;

Widget tableIcon(String? reservationReason) {
  switch (reservationReason) {
    case "birthday":
      return const Expanded(flex: 1, child: Icon(Icons.cake));

    case "anniversary":
      return const Expanded(
          flex: 1, child: Icon(Icons.sentiment_satisfied_outlined));

    case null:
      return const Text("");
    case "":
      return const Text("");

    default:
      return const Text("");
  }
}
