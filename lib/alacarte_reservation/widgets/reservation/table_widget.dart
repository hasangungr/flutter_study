// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_study/alacarte_reservation/controller/api_controller.dart';
import 'package:flutter_study/alacarte_reservation/controller/drop_down_controller.dart';
import 'package:flutter_study/alacarte_reservation/controller/selected_day_controller.dart';
import 'package:flutter_study/alacarte_reservation/field/table_container_field.dart';
import 'package:flutter_study/alacarte_reservation/model/api/restaurant_model.dart';
import 'package:get/get.dart';

class TableContainerWidget extends StatelessWidget {
  const TableContainerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RestaurantController _restaurantController = Get.find();
    List<RestaurantModel> _httpRestList = _restaurantController.restaurantList;
    DropDownController _dropDownController = Get.find();
    DateTimePickerController _dateTimePickerController = Get.find();

    return Expanded(
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Obx(() => _restaurantController.isLoading.value
            ? const CircularProgressIndicator()
            : Wrap(
                alignment: WrapAlignment.center,
                children: List.generate(
                    _httpRestList[_dropDownController.index.value]
                        .tableList!
                        .length,
                    (index) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TableContainerButton(
                              checkIn:
                                  _httpRestList[_dropDownController.index.value]
                                          .tableList![index]
                                          .checkIn ??
                                      false,
                              tableNumber:
                                  _httpRestList[_dropDownController.index.value]
                                      .tableList![index]
                                      .tableNumber!,
                              reservationReason:
                                  _httpRestList[_dropDownController.index.value]
                                      .tableList![index]
                                      .reservationReason,
                              reservationName:
                                  _httpRestList[_dropDownController.index.value]
                                      .tableList![index]
                                      .reservationName,
                              index: index,
                              reservDateApi:
                                  _httpRestList[_dropDownController.index.value]
                                      .tableList![index]
                                      .reservationDate,
                              datePickerController: _dateTimePickerController),
                        ))

        
                )),
        //  ),
      ),
    );
  }
}
