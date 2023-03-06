import 'package:flutter/material.dart';
import 'package:flutter_study/restaurant_app/controller/date_time_controller.dart';
import 'package:flutter_study/restaurant_app/field/date_time_picker_field.dart';
import 'package:flutter_study/restaurant_app/field/listile_widget_field.dart';
import 'package:flutter_study/restaurant_app/widget/tabbar_widgets/check_in_out_list_widget.dart';
import 'package:flutter_study/restaurant_app/widget/tabbar_widgets/reserv_list_widget.dart';
import 'package:flutter_study/restaurant_app/widget/tabbar_widgets/restaurant_info_bottom_sheet.dart';
import 'package:flutter_study/restaurant_app/widget/tabbar_widgets/restoran_info_graphic_bottom_sheet.dart';
import 'package:flutter_study/restaurant_app/widget/tabbar_widgets/wait_cancel_list_widget.dart';
import 'package:flutter_study/restaurant_app/widget/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class RestaurantHomeView extends StatelessWidget {
  RestaurantHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double deviceHeight = Get.height;
    double deviceWidth = Get.width;

    DateTimeController dateTimePickerController = Get.put(DateTimeController());
    return SafeArea(
      child: Scaffold(
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
        ),
        body: GestureDetector(
          onTap: () {
            Get.bottomSheet(buttonsBottomSheet());
          },
          child: Container(
            decoration: BoxDecoration(color: Colors.grey),
            margin: EdgeInsets.all(8),
            height: deviceHeight / 8,
            width: deviceWidth / 4,
          ),
        ),
        drawer: Drawer(
          child: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(deviceHeight / 10),
                child: tabbarAppbar(),
              ),
              body: TabBarView(children: [
                ReservationListWidget(),
                CheckInOutListWidget(),
                WaitCancelListWidget()
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
