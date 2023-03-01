import 'package:flutter/material.dart';
import 'package:flutter_study/restaurant_app/controller/date_time_controller.dart';
import 'package:flutter_study/restaurant_app/field/date_time_picker_field.dart';
import 'package:flutter_study/restaurant_app/field/listile_widget_field.dart';
import 'package:flutter_study/restaurant_app/widget/tabbar_widgets/check_in_out_list_widget.dart';
import 'package:flutter_study/restaurant_app/widget/tabbar_widgets/reserv_list_widget.dart';
import 'package:flutter_study/restaurant_app/widget/tabbar_widgets/wait_cancel_list_widget.dart';
import 'package:flutter_study/restaurant_app/widget/widgets.dart';
import 'package:get/get.dart';

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
              centerTitle: true,
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(deviceHeight / 28),
                  child: DateTimePickerField(
                      dateController: dateTimePickerController)),
              backgroundColor: Colors.white70,
              title: Text(
                "Steak Restaurant",
                style: TextStyle(color: Colors.blueAccent),
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
            )));
  }
}
