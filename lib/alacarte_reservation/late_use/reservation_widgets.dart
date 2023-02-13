// import 'package:flutter/material.dart';
// import 'package:flutter_study/alacarte_reservation/controller/drop_down_controller.dart';
// import 'package:flutter_study/alacarte_reservation/controller/selected_day_controller.dart';
// import 'package:flutter_study/alacarte_reservation/model/static/restaurant.dart';
// import 'package:flutter_study/alacarte_reservation/model/static/table.dart';
// import 'package:flutter_study/alacarte_reservation/route/routes.dart';
// import 'package:get/get.dart';
// import 'package:intl/intl.dart';

// DropDownController dropdownButtonController = DropDownController();
// DateTimePickerController timePickerController = DateTimePickerController();

// List<RestaurantTable> list0 = List.generate(2, (index) {
//   if (index % 2 == 0) {
//     return RestaurantTable(
//         tableNumber: index + 1, chairCount: 4, reservationStatus: null);
//   } else {
//     return RestaurantTable(
//         tableNumber: index + 1,
//         chairCount: 6,
//         reservationStatus: true,
//         reservationName: "Test Test",
//         reservationPax: 4,
//         reservationDate: "2023-02-10",
//         reservationReason: "Birthday",
//         reservationRoomNumber: (index * 3).toString());
//   }
// });

// List<RestaurantTable> list1 = List.generate(4, (index) {
//   if (index % 2 == 0) {
//     return RestaurantTable(
//         tableNumber: index + 1,
//         chairCount: 4,
//         reservationStatus: true,
//         reservationName: "Test Test",
//         reservationPax: 4,
//         reservationDate: "2023-02-15",
//         reservationReason: "Anniversary",
//         reservationRoomNumber: (index * 2).toString());
//   } else {
//     return RestaurantTable(
//       tableNumber: index + 1,
//       chairCount: 6,
//       reservationStatus: null,
//     );
//   }
// });

// Restaurant restaurant0 = Restaurant(
//     restaurantName: "A",
//     restaurantCapacity: 160,
//     restaurantTableCount: 40,
//     tableList: list0);

// Restaurant restaurant1 = Restaurant(
//     restaurantName: "B",
//     restaurantCapacity: 40,
//     restaurantTableCount: 80,
//     tableList: list1);

// List<Restaurant> restaurantList = [restaurant0, restaurant1];
// Widget tableContainer(
//     {bool? reservationCheck = false,
//     required String tableNumber,
//     required String? reservDate,
//     IconData? requestIcon,
//     String roomNumber = "",
//     int reservationPax = 0}) {
//   String date =
//       DateFormat("yyyy-MM-dd").format(timePickerController.selectedDay.value);

//   return Container(
//     margin: const EdgeInsets.all(12),
//     width: Get.width / 6,
//     height: Get.height / 12,
//     color: reservationCheck == true ? Colors.red : null,
//     child: Column(children: [
//       Expanded(child: Text(tableNumber)),
//       Expanded(
//         flex: 1,
//         child: Icon(requestIcon),
//       ),
//       Expanded(child: Text(reservationPax.toString())),
//       Expanded(child: Text(roomNumber)),
//     ]),
//   );
// }

// Widget wrapList() {
//   return Center(
//     heightFactor: Get.height,
//     child: Obx(
//       //Farklı türde birden fazla controller kullanıldığında getx<>builder kullanılabilir, get.find , get.put metotları kullanılabilir.
//       () => SingleChildScrollView(
//         child: Wrap(
//           alignment: WrapAlignment.center,
//           children: List.generate(
//             restaurantList[dropdownButtonController.index.value]

//                 ///şerhhhhhhh
//                 .tableList!
//                 .length,
//             (index) {
//               return ElevatedButton(
//                 style: ButtonStyle(
//                     backgroundColor: MaterialStateProperty.all(
//                         restaurantList[dropdownButtonController.index.value]
//                                     .tableList![index]
//                                     .reservationDate ==
//                                 DateFormat("yyyy-MM-dd").format(
//                                     timePickerController.selectedDay.value)
//                             ? Colors.black
//                             : Colors.amber)),
//                 onPressed: () {
//                   if (restaurantList[dropdownButtonController.index.value]
//                           .tableList![index]
//                           .reservationStatus ==
//                       true) {
//                     Get.back();
//                     Get.toNamed(Routes.getTableInfos());
//                   } else {
//                     Get.toNamed(Routes.getnewReservation());
//                   }
//                 },
//                 child: tableContainer(
//                     reservDate:
//                         restaurantList[dropdownButtonController.index.value]
//                             .tableList![index]
//                             .reservationDate,
//                     tableNumber: (index + 1).toString(),
//                     reservationCheck:
//                         restaurantList[dropdownButtonController.index.value]

//                             ///şerhhhhhhh
//                             .tableList![index]
//                             .reservationStatus),
//               );
//             },
//           ),
//         ),
//       ),
//     ),
//   );
// }

// Widget dropDownWidget() {
//   List<DropdownMenuItem<String>> dropList = List.generate(
//     restaurantList.length,
//     (index) => DropdownMenuItem(
//         child: Text(restaurantList[index].restaurantName),
//         value: restaurantList[index].restaurantName),
//   );

//   return Obx(
//     //Gözlemlediğin değişkenleri obx içine sarmalısın ki güncellenebilsin
//     () {
//       String value = dropList[dropdownButtonController.index.value.toInt()]
//           .value
//           .toString();

//       return DropdownButton(
//           items: dropList,
//           onChanged: (value) {
//             for (var i = 0; i < dropList.length; i++) {
//               if (value == dropList[i].value) {
//                 dropdownButtonController.choosedIndex(i);
//               }
//             }
//           },
//           value: value);
//     },
//   );
// }

// Widget dateTimeWidget() {
//   return Obx(() {
//     String date =
//         DateFormat("yyyy-MM-dd").format(timePickerController.selectedDay.value);

//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text(date),
//         IconButton(
//           onPressed: () {
//             timePickerController.choosedDateTime();
//           },
//           icon: const Icon(Icons.calendar_month),
//         )
//       ],
//     );
//   });
// }
