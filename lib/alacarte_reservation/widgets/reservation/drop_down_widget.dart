import 'package:flutter/material.dart';
import 'package:flutter_study/alacarte_reservation/controller/drop_down_controller.dart';
import 'package:flutter_study/alacarte_reservation/widgets/reservation/table_container_widget.dart';
import 'package:get/get.dart';

late DropDownController _dropDownController;

class DropDownWidget extends StatelessWidget {
  DropDownWidget(DropDownController dropDownController, {super.key}) {
    _dropDownController = dropDownController;
  }

  @override
  Widget build(BuildContext context) {
    List<DropdownMenuItem<String>> dropList = List.generate(
      restaurantList.length,
      (index) => DropdownMenuItem(
          value: restaurantList[index].restaurantName,
          child: Text(restaurantList[index].restaurantName)),
    );

    return Obx(() {
      String value =
          dropList[_dropDownController.index.value.toInt()].value.toString();

      return DropdownButton(
          items: dropList,
          onChanged: (value) {
            for (var i = 0; i < dropList.length; i++) {
              if (value == dropList[i].value) {
                _dropDownController.choosedIndex(i);
              }
            }
          },
          value: value);
    });
  }
}
