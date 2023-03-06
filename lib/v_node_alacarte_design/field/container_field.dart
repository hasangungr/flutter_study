import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContainerField extends Container {
  ContainerField(
      {Key? key,
      required double containerFieldHeight,
       double containerFieldWidth = 1,
       BoxBorder? containerFieldBorder,
      required Widget containerFieldChild,
       Color? containerFieldColor,
       EdgeInsetsGeometry? containerFieldMargin,
       BorderRadiusGeometry? containerFieldBorderRadius})
      : super(
            key: key,
            child: containerFieldChild,
            margin: containerFieldMargin,
            height: Get.height / containerFieldHeight,
            width: Get.width / containerFieldWidth,
            decoration: BoxDecoration(
              border: containerFieldBorder,
              color: containerFieldColor,
              borderRadius: containerFieldBorderRadius,
            ));
}
