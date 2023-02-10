

import 'package:flutter/material.dart';
import 'package:flutter_study/alacarte_reservation/widgets/reservation/reservation_widgets.dart';

class RestaurantView extends StatelessWidget {
  const RestaurantView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          dropDownWidget(),
          dateTimeWidget(),
          Expanded(child: wrapList()),
        ],
      ),
    );
  }
}






//paging
//list - builder 
//
//