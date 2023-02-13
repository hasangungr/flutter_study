import 'package:flutter/material.dart';
import 'package:flutter_study/alacarte_reservation/controller/drop_down_controller.dart';
import 'package:flutter_study/alacarte_reservation/controller/selected_day_controller.dart';
import 'package:flutter_study/alacarte_reservation/widgets/reservation/date_time_picker_widget.dart';
import 'package:flutter_study/alacarte_reservation/widgets/reservation/table_container_widget.dart';
import 'package:flutter_study/alacarte_reservation/late_use/reservation_widgets.dart';
import 'package:get/get.dart';

import '../widgets/reservation/drop_down_widget.dart';

class RestaurantView extends StatelessWidget {
  const RestaurantView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          DropDownWidget(),
          DateTimePickerWidget(),
          Expanded(child: TableContainerWidget())
        ],
      ),
    );
  }
}






//paging
//list - builder 
//
//