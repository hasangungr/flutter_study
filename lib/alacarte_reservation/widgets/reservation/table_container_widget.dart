import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_study/alacarte_reservation/controller/drop_down_controller.dart';
import 'package:flutter_study/alacarte_reservation/controller/selected_day_controller.dart';
import 'package:flutter_study/alacarte_reservation/field/table_container_field.dart';
import 'package:flutter_study/alacarte_reservation/model/static/restaurant.dart';
import 'package:flutter_study/alacarte_reservation/model/static/table.dart';
import 'package:flutter_study/alacarte_reservation/route/routes.dart';
import 'package:flutter_study/alacarte_reservation/views/table_infos.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class TableContainerWidget extends StatelessWidget {
  TableContainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DropDownController dropDownController = Get.find();
//Değişikliği nresi tetikliyorsa oraya get.put neresi etkileniyorsa get.find
    DateTimePickerController dateTimePickerController = Get.find();
    return Center(
        heightFactor: Get.height,
        child: Obx(
            //Farklı türde birden fazla controller kullanıldığında getx<>builder kullanılabilir, get.find , get.put metotları kullanılabilir.
            () => SingleChildScrollView(
                child: Wrap(
                    alignment: WrapAlignment.center,
                    children: List.generate(
                        restaurantList[dropDownController.index.value.toInt()]

                            ///şerhhhhhhh
                            .tableList!
                            .length, (index) {
                      debugPrint(dropDownController.index.value.toString());
                      debugPrint(dropDownController.index.value.runtimeType
                          .toString());
                      //    dropDownController.index.refresh();
                      var list =
                          restaurantList[dropDownController.index.value.toInt()]
                              .tableList![index];

                      return TableContainerButton(
                          //nullcheck gelecek
                          index: index,
                          checkIn: true, //sonra bakkk
                          tableNumber: (index + 1).toString(),
                          reservationReason: list.reservationReason,
                          reservationName: list.reservationName,
                          reservDateApi: list.reservationDate,
                          datePickerController: dateTimePickerController);
                    })))));
  }
}

// Widget tables(
//     int index, dynamic list, DateTimePickerController _timePickerController) {
//   return GetBuilder<DateTimePickerController>(
//       builder: ((_timePickerController) => TableContainerButton(
//           //nullcheck gelecek
//           index: index,
//           checkIn: true, //sonra bakkk
//           tableNumber: (index + 1).toString(),
//           reservationReason: list.reservationReason,
//           reservationName: list.reservationName,
//           reservDateApi: list.reservationDate,
//           datePickerController: _timePickerController)));
// }

List<RestaurantTable> list0 = List.generate(2, (index) {
  if (index % 2 == 0) {
    return RestaurantTable(
        tableNumber: index + 1, chairCount: 4, reservationStatus: null);
  } else {
    return RestaurantTable(
        tableNumber: index + 1,
        chairCount: 6,
        reservationStatus: true,
        reservationName: "Test Test",
        reservationPax: 4,
        reservationDate: "2023-02-10",
        reservationReason: "Birthday",
        reservationRoomNumber: (index * 3).toString());
  }
});

List<RestaurantTable> list1 = List.generate(4, (index) {
  if (index % 2 == 0) {
    return RestaurantTable(
        tableNumber: index + 1,
        chairCount: 4,
        reservationStatus: true,
        reservationName: "Test Test",
        reservationPax: 4,
        reservationDate: "2023-02-15",
        reservationReason: "Anniversary",
        reservationRoomNumber: (index * 2).toString());
  } else {
    return RestaurantTable(
      tableNumber: index + 1,
      chairCount: 6,
      reservationStatus: null,
    );
  }
});

Restaurant restaurant0 = Restaurant(
    restaurantName: "A",
    restaurantCapacity: 160,
    restaurantTableCount: 40,
    tableList: list0);

Restaurant restaurant1 = Restaurant(
    restaurantName: "B",
    restaurantCapacity: 40,
    restaurantTableCount: 80,
    tableList: list1);

List<Restaurant> restaurantList = [restaurant0, restaurant1];
