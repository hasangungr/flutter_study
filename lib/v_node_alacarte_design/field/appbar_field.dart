import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class appBarField extends PreferredSize {
  appBarField({
    Key? key,
    required double appbarFieldHeight,
    required List<Widget> appbarActionWidgetList,
  }) : super(
          key: key,
          preferredSize: Size(Get.height / appbarFieldHeight, Get.width),
          child: AppBar(
            centerTitle: true,
            actions: appbarActionWidgetList,
          ),
        );
}
