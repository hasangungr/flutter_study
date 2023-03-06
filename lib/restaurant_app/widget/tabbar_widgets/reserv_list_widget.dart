import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_study/restaurant_app/field/listile_widget_field.dart';
import 'package:get/get.dart';

class ReservationListWidget extends StatelessWidget {
  const ReservationListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> reservationCardList = List.generate(22, (index) {
      return ReservationCardListTile(
        cardColor: Colors.green,
        roomNumber: (22 * index).toString(),
        tableNumber: index.toString(),
        reservationDescription: "Reservation Description",
        reservationName: "Reservation Name",
        pax: "4",
        childPax: "1",
      );
    });
    return RefreshIndicator(
      onRefresh: () async {},
      child: ListView (  children:
          reservationCardList,
          ),
    );
  }
}
