

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RestaurantInfoContanier extends Container {
  RestaurantInfoContanier(
      {Key? key,
      required double doubleHeight,
      required doubleWidth,
      required String infoText,
      required String infoNumber})
      : super(
          margin: EdgeInsets.all(12),
          padding: EdgeInsets.all(18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 4,
                child: Text(
                  infoText,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Text(infoNumber,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.normal))
            ],
          ),
          key: key,
          height: Get.height / doubleHeight,
          width: Get.width / doubleWidth,
          decoration: BoxDecoration(
            border: Border.all(width: 1.5, color: Colors.grey),
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        );
}
