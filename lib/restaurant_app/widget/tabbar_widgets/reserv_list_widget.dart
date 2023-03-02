import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_study/restaurant_app/field/listile_widget_field.dart';

class ReservationListWidget extends StatelessWidget {
  const ReservationListWidget({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> reservationCardList = List.generate(22, (index) {
      final item = index.toString();
      return Dismissible(
        direction: DismissDirection.startToEnd,
        secondaryBackground: Card(
          color: Colors.green,
        ),
        background: Card(color: Colors.red),
        key: Key(item),
        child: ReservationCardListTile(
            cardColor: Color.fromARGB(255, 27, 149, 210),
            roomNumber: (22 * index).toString(),
            tableNumber: index.toString(),
            reservationDescription: "Reservation Description",
            reservationName: "Reservation Name",
            pax: "4",
            childPax: "1"),
      );
    });
    return RefreshIndicator(
      onRefresh: () async {},
      child: ListView(
        children: reservationCardList,
      ),
    );
  }
}
