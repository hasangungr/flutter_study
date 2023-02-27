import 'package:flutter/material.dart';
import 'package:flutter_study/alacarte_design/controller/drop_down_controller.dart';
import 'package:get/get.dart';

class RestaurantDropDownList extends StatelessWidget {
  RestaurantDropDownList({Key? key}) : super(key: key);
  final dropDownController = Get.put(DropDownController());
  List<DropdownMenuItem<String>> dropDownItems = List.generate(
    4,
    (index) {
      return DropdownMenuItem<String>(
        value: "Restaurant $index",
        child: Text(
          "Restaurant $index",
        ),
      );
    },
  );
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => DropdownButton(
          items: dropDownItems,
          onChanged: (value) {
            for (int i = 0; i < dropDownItems.length; i++) {
              if (value == dropDownItems[i].value) {
                dropDownController.choosedIndex(i);
                // dropValue = value;
              }
            }
          },
          value: dropDownItems[dropDownController.index.value].value),
    );
  }
}
