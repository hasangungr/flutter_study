import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget tableContainer({
  required String tableNumber,
  required String? reservName,
  required String? roomNumber,
  required String? reservDate,
  required String? reservReason,
  required String? pax,
}) {
  return Column(children: [
    Container(
      
      //  margin: EdgeInsets.only(left:  8, top: 8),
      width: Get.width / 3,
      height: Get.height / 6,
      decoration: BoxDecoration(
        color: reservName != null  ? Colors.grey : null,
        border: Border.all(color: Colors.amber, width: 2),
      ),
      child: Stack(
        children: [
          tableCorner(
              rightValue: 0,
              leftValue: null,
              topValue: 0,
              bottomValue: null,
              cornerWidget: Text(reservDate ?? "")),
          tableCorner(
              rightValue: 0,
              leftValue: null,
              topValue: null,
              bottomValue: 0,
              cornerWidget: Text(pax ?? "")),
          tableCorner(
              rightValue: null,
              leftValue: 0,
              topValue: 0,
              bottomValue: null,
              cornerWidget: Text(roomNumber ?? "")),
          tableCorner(
              rightValue: null,
              leftValue: 0,
              topValue: null,
              bottomValue: 0,
              cornerWidget: cornerIcon(reservReason)),
          Center(
            child: Text(
              tableNumber,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    ),
    Container(
      color: reservName == null ? Colors.green : Colors.red,
      width: Get.width / 3,
      height: Get.height / 18,
      child: reservName == null ? null : Center(child: Text(reservName)),
    )
  ]);
}

Widget tableCorner(
    {required Widget? cornerWidget,
    required double? rightValue,
    required double? leftValue,
    required double? topValue,
    required double? bottomValue}) {
  return Positioned(
    right: rightValue,
    left: leftValue,
    top: topValue,
    bottom: bottomValue,
    child: Container(
   
      width: Get.width / 9,
      height: Get.height / 18,
      child: Center(child: cornerWidget),
    ),
  );
}

Widget? cornerIcon(String? reservationReason) {
  if (reservationReason != null) {
    switch (reservationReason) {
      case "birthday":
        return Icon(Icons.cake);

      case "party":
        return Icon(Icons.add_reaction);
      default:

    }
  } else {
    return null;
  }
}
