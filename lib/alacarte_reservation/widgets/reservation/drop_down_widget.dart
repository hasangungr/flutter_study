import 'package:flutter/material.dart';
import 'package:flutter_study/alacarte_reservation/controller/api_controller.dart';
import 'package:flutter_study/alacarte_reservation/controller/drop_down_controller.dart';
import 'package:flutter_study/alacarte_reservation/model/api/restaurant_model.dart';
import 'package:get/get.dart';

class DropDownWidget extends StatelessWidget {
  const DropDownWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RestaurantController restaurantController = Get.put(RestaurantController());
    List<RestaurantModel> restList = restaurantController.restaurantList;
    DropDownController dropDownController = Get.put(DropDownController());

    return SizedBox(
 
      height: Get.height / 10,
      child: Obx(
        () {
          if (restaurantController.isLoading.value == true) {
            return const CircularProgressIndicator();
          } else {
            List<DropdownMenuItem<String>> dropDownItems = List.generate(
              restList.length,
              (index) {
                return DropdownMenuItem<String>(
                  value: restList[index].restaurantName,
                  child: Text(
                    restList[index].restaurantName.toString(),
                  ),
                );
              },
            );
            debugPrint(dropDownItems[0].value.toString());
            return DropdownButton<String>(
                value: dropDownItems[dropDownController.index.value].value,
                items: dropDownItems,
                onChanged: (value) {
                  for (int i = 0; i < dropDownItems.length; i++) {
                    if (value == dropDownItems[i].value) {
                      dropDownController.choosedIndex(i);
                      // dropValue = value;
                    }
                  }
                });
          }
        },
      ),
    );
  }
}
