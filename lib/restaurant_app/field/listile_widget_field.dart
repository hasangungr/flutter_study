import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RestaurantListTile extends ListTile {
  RestaurantListTile(
      {Key? key,
      required String titleText,
      required String restaurantCapacity,
      required String restaurantDesc})
      : super(
          key: key,
          trailing: CircleAvatar(
            backgroundColor: Colors.grey.shade400,
            child:
                Text(restaurantCapacity, style: TextStyle(color: Colors.black)),
          ),
          leading: Image.asset("assets/images/steak.png"),
          title: Text(
            titleText,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(restaurantDesc),
        );
}

class ReservationCardListTile extends ListTile {
  ReservationCardListTile(
      {Key? key,
      required String roomNumber,
      required String tableNumber,
      required String reservationDescription,
      required String reservationName,
      required String pax,
      required Color cardColor,
      required String? childPax})
      : super(
          key: key,
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          leading: Container(
            width: Get.width / 8,
            height: Get.height / 16,
            color: cardColor,
            child: Center(
                child: Text(
              tableNumber,
              style: TextStyle(color: Colors.white),
            )),
          ),
          title: Row(
            children: [
              Text(
                roomNumber,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: Text(
                  reservationName,
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      fontSize: 18,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          subtitle: Text(reservationDescription),
          trailing: Container(
            width: Get.width / 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 20,
                      color: Colors.black,
                    ),
                    Text(
                      pax,
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.child_care,
                      size: 20,
                      color: Colors.black,
                    ),
                    Text(
                      childPax ?? "0",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 18),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
}
