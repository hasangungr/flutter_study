import 'package:flutter/material.dart';
import 'package:flutter_study/alacarte_reservation/widgets/reservation/drop_down_widget.dart';

import 'package:flutter_study/alacarte_reservation/widgets/reservation/date_time_picker_widget.dart';
import 'package:flutter_study/alacarte_reservation/widgets/reservation/table_widget.dart';

class RestaurantView extends StatelessWidget {
  const RestaurantView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: const[
          DropDownWidget(),
          DateTimePickerWidget(),
          TableContainerWidget()
        ],
      ),
    );
  }
}






//paging
//list - builder 
//
//