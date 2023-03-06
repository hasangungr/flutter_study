import 'package:flutter/material.dart';
import 'package:flutter_study/restaurant_app/field/listile_widget_field.dart';

class WaitCancelListWidget extends StatelessWidget {
  const WaitCancelListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> CheckInOutCardList = List.generate(22, (index) {
      return ReservationCardListTile(
          cardColor: index % 2 == 0 ? Colors.grey : Colors.amber,
          roomNumber: (22 * index).toString(),
          tableNumber: index.toString(),
          reservationDescription: "Reservation Description",
          reservationName: "Reservation Name",
          pax: "4",
          childPax: "1");
    });
    return ListView(
      children: CheckInOutCardList,
    );
  }
}
