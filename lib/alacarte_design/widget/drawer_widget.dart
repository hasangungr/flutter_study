import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidget extends Drawer {
  DrawerWidget({Key? key})
      : super(
          key: key,
          child: ListView(
            children: [
           Container(
          margin: EdgeInsets.all(8),
          height: Get.height / 10,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 1.5,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 65,
                  width: 65,
                  child: Image.asset("assets/images/steak.png"),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text("Rezervation Name"),
              ),
            ],
          ),
        )
            ],
          ),
        );
}
