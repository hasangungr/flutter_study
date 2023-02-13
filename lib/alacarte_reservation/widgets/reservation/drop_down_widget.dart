import 'package:flutter/material.dart';
import 'package:flutter_study/alacarte_reservation/controller/drop_down_controller.dart';
import 'package:flutter_study/alacarte_reservation/widgets/reservation/table_container_widget.dart';
import 'package:get/get.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    DropDownController dropDownController = Get.put(DropDownController());
//Değişikliği nresi tetikliyorsa oraya get.put neresi etkileniyorsa get.find

    List<DropdownMenuItem<String>> dropList = List.generate(
      restaurantList.length,
      (index) => DropdownMenuItem(
          value: restaurantList[index].restaurantName,
          child: Text(restaurantList[index].restaurantName)),
    );

    return Obx(() {
      String value =
          dropList[dropDownController.index.value.toInt()].value.toString();

      return DropdownButton(
          items: dropList,
          onChanged: (value) {
            for (var i = 0; i < dropList.length; i++) {
              if (value == dropList[i].value) {
                dropDownController.choosedIndex(i);
              }
            }
          },
          value: value);
    });
  }
}
