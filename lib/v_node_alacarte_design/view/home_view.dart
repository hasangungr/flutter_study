import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_study/restaurant_app/controller/date_time_controller.dart';
import 'package:flutter_study/v_node_alacarte_design/field/container_field.dart';
import 'package:flutter_study/v_node_alacarte_design/field/listtile_field.dart';
import 'package:get/get.dart';

class VNodeHomeView extends StatelessWidget {
  const VNodeHomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTimeController timeController = Get.put(DateTimeController());
    double _containerHeight = 12;
    EdgeInsetsGeometry _containerFieldMargin =
        EdgeInsets.symmetric(vertical: 8);
    Color containerColorField = Colors.grey.shade300;
    String _restaurantName = "Restaurant Name";
    String _restaurantCapacity = "50";
    String _restaurantDescription = "Restaurant Description";

    EdgeInsets.symmetric(vertical: 8);
    List<Widget> restaurantList = List.generate(
        18,
        (index) => ContainerField(
          containerFieldColor: containerColorField,
            containerFieldMargin: _containerFieldMargin,
            containerFieldHeight: _containerHeight,
            containerFieldChild: GestureDetector(
                onTap: () {
                  debugPrint("statement");
                },
                child: RestaurantListtileField(
                    titleText: _restaurantName,
                    restaurantCapacity: _restaurantCapacity,
                    leadingWidget: Image.asset("assets/images/steak.png"),
                    restaurantDesc: _restaurantDescription))));

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DatePicker(DateTime.now(),
                    initialSelectedDate: DateTime.now(),
                    selectedTextColor: Colors.white,
                    selectionColor: Colors.grey, onDateChange: (selectedDate) {
                  timeController.choosedDateTime(selectedDate);
                })
              ],
            ),
            Expanded(child: ListView(children: restaurantList)),
          ],
        ),
      ),
    );
  }
}
