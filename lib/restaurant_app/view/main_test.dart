import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_study/restaurant_app/controller/date_time_controller.dart';
import 'package:flutter_study/restaurant_app/widget/tabbar_widgets/restaurant_info_bottom_sheet.dart';
import 'package:flutter_study/restaurant_app/widget/tabbar_widgets/restoran_info_graphic_bottom_sheet.dart';
import 'package:flutter_study/restaurant_app/widget/widgets.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class MainTest extends StatelessWidget {
  const MainTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTimeController dateTimePickerController = Get.put(DateTimeController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
       
        actionsIconTheme: IconThemeData(size: 24),
        actions: [
          IconButton(
              // padding: EdgeInsets.only(top: 18),
              onPressed: () {
                Get.bottomSheet(RestaurantInfoBottomSheet(),
                    isScrollControlled: true);
              },
              icon: Icon(Icons.info)),
          IconButton(
              //  padding: EdgeInsets.only(top:18),
              onPressed: () {
                Get.bottomSheet(RestaurantInfoGraphicBottomSheet(),
                    isScrollControlled: true);
              },
              icon: Icon(Icons.auto_graph))
        ],
        centerTitle: true,
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(deviceHeight / 28),
            child: Text(
              style: TextStyle(
                  color: Colors.green.shade900,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
              DateFormat("yyyy-MM-dd")
                  .format(dateTimePickerController.selectedDay.value),

              //    dateTimePickerController.selectedDay.value.toString()
            )),
        backgroundColor: Colors.white70,
        title: Text(
          "Steak Restaurant",
          style: TextStyle(
              fontFamily: "RobotoSlab",
              fontWeight: FontWeight.w500,

              //fon
              letterSpacing: 1.5,
              color: Colors.blueAccent),
        ),
      
        leading: IconButton(
          onPressed: () {
            if (ZoomDrawer.of(context)!.isOpen()) {
              ZoomDrawer.of(context)!.close();
            } else {
              ZoomDrawer.of(context)!.open();
            }
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),

    
      ),
      body: GestureDetector(
        onTap: () {
          Get.bottomSheet(buttonsBottomSheet());
        },
        child: Container(
          decoration: BoxDecoration(color: Colors.grey),
          margin: EdgeInsets.all(8),
          height: Get.height / 8,
          width: Get.width / 4,
        ),
      ),
    );
  }
}
